// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:malta_taxi/data/remote/cancel_ride/model/cancel_ride_model.dart';
import 'package:malta_taxi/data/remote/proceedRide/models/proceed_ride_model.dart';
import 'package:malta_taxi/utils/custom_button.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/location_picker/location_picker_view_model.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/payment/add_new_card_web_view.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_cancel/trip_cancel_view_model.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_confirmed/trip_confirmed_view_model.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_proceed/trip_proceed_view_model.dart';
import 'package:malta_taxi/view/screens/splash/splash_view_model.dart';

class TripProceedBottombar extends ConsumerStatefulWidget {
  final bool isvisible;
  const TripProceedBottombar({
    super.key,
    required this.isvisible,
  });

  @override
  ConsumerState<TripProceedBottombar> createState() =>
      _TripProceedBottombarState();
}

class _TripProceedBottombarState extends ConsumerState<TripProceedBottombar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.isvisible
        //  open bootom bar ============= >>>
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
            decoration: BoxDecoration(
              color: kWhite,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 7,
                  offset: const Offset(
                    0,
                    3,
                  ), // changes position of shadow
                ),
              ],
            ),
            height: 80.h,
            width: double.infinity,
            child: CustomButton(
              loaderColor: kWhite,
              buttonText: LocaleKeys.proceed,
              isLoading: ref.watch(tripProceedViewModelProvider).loading,
              // ignore: prefer_is_empty
              ontap: ref
                          .watch(splashViewModelProvider)
                          .getSavedCardsModel
                          .savedPaymentMethod
                          ?.length ==
                      0 && !ref.watch(splashViewModelProvider).isCardSkipped
                  ? () async {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: kWhite,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            title: const Text(
                              "Payment",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            content: SizedBox(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    "Do you want to add a new card or use your saved card",
                                    style: TextStyle(
                                      color: kBlack,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  gapH16,
                                  CustomButton(
                                    buttonText: "Add New Card",
                                    buttonColor: primaryColor,
                                    textColor: kWhite,
                                    ontap: () async {
                                      final String url = await ref
                                          .watch(tripProceedViewModelProvider)
                                          .addNewCard();
                                      if (url.contains("https://")) {
                                        Navigator.pop(context);
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                AddNewCardWebView(
                                              addNewCardUrl: url,
                                            ),
                                          ),
                                        ).then((value) async {
                                          /// [DOCS FOR AYUSH]
                                          /// Calling the getSavedCards again after adding the card for the first time
                                          /// so that the prompt to add a card does not come again when the rider presses
                                          /// on proceed. This line of code updates the GetSavedCardsResponse in the view model
                                          /// and pressing on proceed after adding the card will now allow the user to search
                                          /// for drivers
                                          await ref.read(splashViewModelProvider).getSavedCards();
                                          // await ref
                                          //     .read(tripProceedViewModelProvider)
                                          //     .proceedRide(proceedRideRequestModel)
                                          //     .then((_) {
                                          //   showModalBottomSheet(
                                          //     isDismissible: false,
                                          //     context: context,
                                          //     builder: (context) => const ProceedBottomSheet(),
                                          //   );
                                          // });
                                        });
                                      }
                                    },
                                  ),
                                  gapH16,
                                  CustomButton(
                                    buttonText: "Skip",
                                    textColor: primaryColor,
                                    ontap: () async {
                                      ref.read(splashViewModelProvider).changeIsCardSkippedFlag(true);
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }
                  : () async {
                    //! (cash not allowed && card is there) || (cash is allowed)
                    if((!(ref.watch(tripProceedViewModelProvider).getCashThresholdResponseModel.data?.isCashAllowed ?? false) && 
                        (ref.watch(splashViewModelProvider).getSavedCardsModel.savedPaymentMethod?.isNotEmpty ?? false)) ||
                        (ref.watch(tripProceedViewModelProvider).getCashThresholdResponseModel.data?.isCashAllowed ?? false)) {

                          final ProceedRideRequestModel proceedRideRequestModel =
                          ProceedRideRequestModel.fromJson({
                            "pickupLocation": {
                              "type": "point",
                              "coordinates": [
                                ref
                                    .read(tripProceedViewModelProvider)
                                    .pickupCoords['lng'],
                                ref
                                    .read(tripProceedViewModelProvider)
                                    .pickupCoords['lat'],
                              ],
                              "pickupLocationName": ref
                                  .read(locationPickerViewModelProvider)
                                  .pickupAddController
                                  .text,
                            },
                            "destinationLocation": {
                              "type": "point",
                              "coordinates": [
                                ref
                                    .read(tripProceedViewModelProvider)
                                    .destinationCoords['lng'],
                                ref
                                    .read(tripProceedViewModelProvider)
                                    .destinationCoords['lat'],
                              ],
                              "destinationLocationName": ref
                                  .read(locationPickerViewModelProvider)
                                  .dropAddController
                                  .text,
                            },
                            "pickupDateTime": "${DateTime.now().toUtc()}",
                            "carType": ref
                                    .read(locationPickerViewModelProvider)
                                    .searchRideResponseModel
                                    .data
                                    ?.carType?[int.parse(
                                      ref
                                          .read(tripProceedViewModelProvider)
                                          .carId
                                          .toString(),
                                    )]
                                    .id ??
                                "",
                            "isChildBooster": ref
                                .read(tripProceedViewModelProvider)
                                .isChildBooster,
                            "isPetFriendly": ref
                                .read(tripProceedViewModelProvider)
                                .isPetFriendly,
                            "isWheelChair": ref
                                .read(tripProceedViewModelProvider)
                                .isWheelchairAccess,
                          });
                          await ref
                              .read(tripProceedViewModelProvider)
                              .proceedRide(proceedRideRequestModel)
                              .then((_) {
                            showModalBottomSheet(
                              isDismissible: false,
                              enableDrag: false,
                              context: context,
                              builder: (context) => PopScope(
                                onPopInvoked: (didPop) {
                                  final String rideStatus = ref.watch(tripConfirmedViewModelProvider).checkRideStatusResponseModel.data?.rideStatus ?? "";
                                  if(rideStatus == "processed") {
                                    ref
                                      .watch(tripCancelViewModelViewModelProvider)
                                      .cancelRide(CancelRideRequest(
                                        cancellationReason: "Plan Changed",
                                        rideId: ref.watch(tripConfirmedViewModelProvider).checkRideStatusResponseModel.data?.rideId ?? "",
                                      ),).whenComplete(() {
                                        ref.read(tripConfirmedViewModelProvider).savePaymentOption(1);
                                        ref.read(tripConfirmedViewModelProvider).stopCheckRideStatusTimer();
                                        ref.read(tripConfirmedViewModelProvider).clearResponseModels();
                                        ref.read(tripCancelViewModelViewModelProvider).clearData();
                                        // context.pop();
                                      });
                                  }
                                },
                                child: const ProceedBottomSheet()
                              ),
                            );
                          });

                        } else {
                          //! asking the customer to add a card
                          showDialog(
                            context: context, 
                            builder: (context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                title: const Text("Card Only!", style: TextStyle(fontWeight: FontWeight.bold, color: primaryColor),),
                                content: const Text("Cash is not allowed in this ride as you have exceeded the times for cancellation in cash"),
                                actions: [
                                  CustomButton(
                                    buttonText: "Add a Card",
                                    ontap: () async {
                                      final String url = await ref
                                          .watch(tripProceedViewModelProvider)
                                          .addNewCard();
                                      if (url.contains("https://")) {
                                        Navigator.pop(context);
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                AddNewCardWebView(
                                              addNewCardUrl: url,
                                            ),
                                          ),
                                        ).then((value) async {
                                          /// [DOCS FOR AYUSH]
                                          /// Calling the getSavedCards again after adding the card for the first time
                                          /// so that the prompt to add a card does not come again when the rider presses
                                          /// on proceed. This line of code updates the GetSavedCardsResponse in the view model
                                          /// and pressing on proceed after adding the card will now allow the user to search
                                          /// for drivers
                                          await ref.read(splashViewModelProvider).getSavedCards();
                                          // await ref
                                          //     .read(tripProceedViewModelProvider)
                                          //     .proceedRide(proceedRideRequestModel)
                                          //     .then((_) {
                                          //   showModalBottomSheet(
                                          //     isDismissible: false,
                                          //     context: context,
                                          //     builder: (context) => const ProceedBottomSheet(),
                                          //   );
                                          // });
                                        });
                                      }
                                    },
                                  ),
                                  gapH10,
                                  CustomButton(
                                    buttonText: "Cancel",
                                    buttonColor: primaryColor,
                                    textColor: Colors.white, 
                                    ontap: () {
                                      Navigator.pop(context);
                                    },
                                  )
                                ],
                              );
                            },
                          );
                        }
                    },
              buttonColor: !(ref.watch(tripProceedViewModelProvider).getCashThresholdResponseModel.data?.isCashAllowed ?? false) && (ref.watch(splashViewModelProvider).getSavedCardsModel.savedPaymentMethod?.isEmpty ?? false)
                ? kGrey
                : primaryColor,
              textColor: kWhite,
            ),
          ).animate().slideY(
              duration: const Duration(milliseconds: 700),
              curve: Curves.easeInOutExpo,
              end: 0.0,
              begin: 2.0,
            )
        // close bottom bar ================>>
        : Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
            decoration: BoxDecoration(
              color: kWhite,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 7,
                  offset: const Offset(
                    0,
                    3,
                  ), // changes position of shadow
                ),
              ],
            ),
            height: 80.h,
            width: double.infinity,
            child: CustomButton(
              buttonText: LocaleKeys.proceed,
              ontap: () {
                // show the bottom sheet
                showModalBottomSheet(
                  context: context,
                  isDismissible: false,
                  enableDrag: false,
                  isScrollControlled: true,
                  builder: (context) => PopScope(
                    onPopInvoked: (didPop) {
                      ref
                        .watch(tripCancelViewModelViewModelProvider)
                        .cancelRide(CancelRideRequest(
                          cancellationReason: "Plan Changed",
                          rideId: ref.watch(tripConfirmedViewModelProvider).checkRideStatusResponseModel.data?.rideId ?? "",
                        ),).whenComplete(() {
                          ref.read(tripConfirmedViewModelProvider).savePaymentOption(1);
                          ref.read(tripConfirmedViewModelProvider).stopCheckRideStatusTimer();
                          ref.read(tripConfirmedViewModelProvider).clearResponseModels();
                          ref.read(tripCancelViewModelViewModelProvider).clearData();
                          // context.pop();
                        });
                    },
                    child: const ProceedBottomSheet(),
                  ),
                );
              },
              buttonColor: (ref.watch(tripProceedViewModelProvider).getCashThresholdResponseModel.data?.isCashAllowed ?? false) 
                ? kGrey
                : primaryColor,
              textColor: kWhite,
            ),
          ).animate().slideY(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOutExpo,
              begin: 0.0,
              end: 2.0,
            );
  }
}

// bottom sheets and dialog box ===============>

class ProceedBottomSheet extends ConsumerStatefulWidget {
  const ProceedBottomSheet({
    super.key,
  });

  @override
  ConsumerState<ProceedBottomSheet> createState() => _ProceedBottomSheetState();
}

class _ProceedBottomSheetState extends ConsumerState<ProceedBottomSheet> {
  @override
  void initState() {
    ref.read(tripConfirmedViewModelProvider).checkRideStatus(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      height: 310.h,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          gapH16,
          Text(
            LocaleKeys.searchingDriversNearby.tr(),
            style: TextStyle(
              color: kBlack,
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          gapH16,
          LinearProgressIndicator(
            color: primaryColor,
            backgroundColor: ktextfield,
            minHeight: 6.h,

            //  value: 0.5,
          ),
          gapH20,
          Image.asset(
            "assets/images/searching_car.png",
            height: 140.h,
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 22.h),
            decoration: BoxDecoration(
              color: kWhite,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 7,
                  offset: const Offset(
                    0,
                    3,
                  ), // changes position of shadow
                ),
              ],
            ),
            height: 90.h,
            width: double.infinity,
            child: CustomButton(
              buttonText: LocaleKeys.cancelTrip.tr(),
              borderColor: primaryColor,
              ontap: () {
                ref
                  .watch(tripCancelViewModelViewModelProvider)
                  .cancelRide(CancelRideRequest(
                    cancellationReason: "Plan Changed",
                    rideId: ref.watch(tripConfirmedViewModelProvider).checkRideStatusResponseModel.data?.rideId ?? "",
                  ),).whenComplete(() {
                    ref.read(tripConfirmedViewModelProvider).savePaymentOption(1);
                    ref.read(tripConfirmedViewModelProvider).stopCheckRideStatusTimer();
                    ref.read(tripConfirmedViewModelProvider).clearResponseModels();
                    ref.read(tripCancelViewModelViewModelProvider).clearData();
                    context.pop();
                  });
                // showDialog(
                //   context: context,
                //   barrierDismissible: false,
                //   builder: (context) => StatefulBuilder(
                //     builder: (context, cancelSetState) {
                //       return const CancelDialogbox();
                //     },
                //   ),
                // );
              },
              textColor: primaryColor,
            ),
          ).animate().slideY(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOutExpo,
                end: 0.0,
                begin: 2.0,
              ),
        ],
      ),
    );
  }
}

class CancelDialogbox extends ConsumerStatefulWidget {
  const CancelDialogbox({
    super.key,
  });

  @override
  ConsumerState<CancelDialogbox> createState() => _CancelDialogboxState();
}

class _CancelDialogboxState extends ConsumerState<CancelDialogbox> {



  @override
  Widget build(BuildContext context) {
    final List<String> cancelReason = [
      "Plan Changed",
      "Booked by Mistake",
      "Driver is late",
      "Driver is not responding",
      "Other",
    ];

    return AlertDialog(
      backgroundColor: kWhite,
      elevation: 0,
      scrollable: true,
      title: Text(
        LocaleKeys.cancelTrip.tr(),
        style: TextStyle(
          color: kBlack,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            cancelReason.length,
            (index) => ListTile(
              onTap: () {
                ref
                    .watch(tripProceedViewModelProvider)
                    .setCancelReason(cancelReason[index]);
                setState(() {});
              },
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 0.w),
              title: Text(
                cancelReason[index],
                style: TextStyle(
                  color: kBlack,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Icon(
                ref.watch(tripProceedViewModelProvider).cancelReason ==
                        cancelReason[index]
                    ? Icons.check_circle
                    : Icons.circle_outlined,
                color: primaryColor,
              ),
            ),
          ),
          gapH10,
          // free cancellation text
          ListTile(
            dense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 0.w),
            title: Text(
              "Cancellation Charges : ",
              style: TextStyle(
                color: kBlack,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Text(
              "€${ref.watch(tripCancelViewModelViewModelProvider).cancelRideAmountModelRes.cancellationAmount ?? 0}",
              style: TextStyle(
                color: primaryColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
            side: const BorderSide(color: primaryColor),
          ),
          onPressed: () {
            // context.pop();
            // context.pop();
            showDialog(context: context, builder: (context) => AlertDialog(
              surfaceTintColor:  kWhite,
              title: const Text("Cancel"),
              content: Text(
                "Are you sure you want to cancel? You will be charged €${ref.watch(tripCancelViewModelViewModelProvider).cancelRideAmountModelRes.cancellationAmount ?? 0}", 
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              actions: [
                TextButton(onPressed: () {
                  context.pop();
                }, child:  const Text("No" , style:  TextStyle(color: primaryColor) ,), ),
                TextButton(onPressed: () async {
                  // context.pop();
                  final CancelRideRequest cancelRideRequest = CancelRideRequest(
                    rideId: ref
                            .read(tripConfirmedViewModelProvider)
                            .checkRideStatusResponseModel
                            .data
                            ?.rideId ??
                        "",
                    cancellationReason: ref.watch(tripProceedViewModelProvider).cancelReason,
                  );
                  await ref.watch(tripCancelViewModelViewModelProvider).cancelRide(cancelRideRequest).then((value) {
                    ref.read(tripConfirmedViewModelProvider).savePaymentOption(1);
                    ref.watch(tripProceedViewModelProvider).setCancelReason(cancelReason[0]);
                    ref.read(tripCancelViewModelViewModelProvider).clearData();
                  });

                  context.pop();
                  context.pop();                  
                  context.pop();                  
                  context.pop();                  
                  ref.read(tripConfirmedViewModelProvider).stopCheckRideStatusTimer();

                  showModalBottomSheet(
                    isDismissible: false,
                    context: context,
                    builder: (context) => StatefulBuilder(
                      builder: (context, cancelBottomSetState) {
                        return const CancelBottomSheet();
                      },
                    ),
                  );
                }, child:  const Text("Yes" , style:  TextStyle(color: primaryColor) ,), ),
              ],
            ),);

            // if((ref.watch(tripConfirmedViewModelProvider).checkRideStatusResponseModel.data?.rideStatus ?? "") == "processed") {
            //   final CancelRideRequest cancelRideRequest = CancelRideRequest(
            //     rideId: ref.read(tripConfirmedViewModelProvider).checkRideStatusResponseModel.data?.rideId ?? "",
            //     cancellationReason:
            //         ref.watch(tripProceedViewModelProvider).cancelReason,
            //   );
            //   ref.watch(tripCancelViewModelViewModelProvider).cancelRide(cancelRideRequest);
            //   context.pop();
            // } else {
            //   showModalBottomSheet(
            //     context: context,
            //     builder: (context) => const CancelBottomSheet(),
            //   );
            // }
          },
          child: Text(
            "Cancel Trip",
            style: TextStyle(
              color: primaryColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
            minimumSize: Size(90.w, 30.h),
            foregroundColor: kBlack,
            backgroundColor: primaryColor,
          ),
          onPressed: () {
            ref.watch(tripCancelViewModelViewModelProvider).clearData();
            context.pop();
          },
          child: Text(
            "Back",
            style: TextStyle(
              color: kWhite,
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class CancelBottomSheet extends ConsumerStatefulWidget {
  const CancelBottomSheet({
    super.key,
  });

  @override
  ConsumerState<CancelBottomSheet> createState() => _CancelBottomSheetState();
}

class _CancelBottomSheetState extends ConsumerState<CancelBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      height: 200.h,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            height: 100.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/cancel_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                gapH24,
                Text(
                  LocaleKeys.bookingCancelled.tr(),
                  style: TextStyle(
                    color: kBlack,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                gapH10,
                Container(
                  padding: EdgeInsets.only(right: 80.w),
                  child: Text(
                    "Your booking has been cancelled.",
                    style: TextStyle(
                      color: kBlack,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 22.h),
            decoration: BoxDecoration(
              color: kWhite,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 7,
                  offset: const Offset(
                    0,
                    3,
                  ), // changes position of shadow
                ),
              ],
            ),
            height: 90.h,
            width: double.infinity,
            child: CustomButton(
              buttonText: LocaleKeys.okText.tr(),
              ontap: () {
                // context.goNamed(AppRoute.bottomNavigationView.name);
                //   ref.watch(homeViewModelProvider).setAppState(AppState.pending);

                ref.watch(tripConfirmedViewModelProvider).clearResponseModels();
               
                Navigator.pop(context);
                context.pop(); 
                context.pop();
                if(context.canPop()) {
                  context.pop();
                }
                // final CancelRideRequest cancelRideRequest = CancelRideRequest(
                //   rideId: ref.read(tripConfirmedViewModelProvider).checkRideStatusResponseModel.data?.rideId ?? "",
                //   cancellationReason:
                //       ref.watch(tripProceedViewModelProvider).cancelReason,
                // );

                // ref.watch(tripCancelViewModelViewModelProvider).cancelRide(cancelRideRequest).then((_) {
                //   context.pop();
                //   context.pop();
                //   context.pop();
                // });
              },
              textColor: kWhite,
              buttonColor: primaryColor,
            ),
          ).animate().slideY(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOutExpo,
                end: 0.0,
                begin: 2.0,
              ),
        ],
      ),
    );
  }
}
