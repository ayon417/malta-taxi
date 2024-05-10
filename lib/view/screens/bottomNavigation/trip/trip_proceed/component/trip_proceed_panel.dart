// ignore_for_file: use_build_context_synchronously

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:malta_taxi/utils/custom_button.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/location_picker/location_picker_view_model.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/payment/add_new_card_web_view.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_proceed/trip_proceed_view_model.dart';
import 'package:malta_taxi/view/screens/splash/splash_view_model.dart';

class TripProceedPanel extends ConsumerStatefulWidget {
  final ScrollController sc;
  const TripProceedPanel(this.sc, {super.key});

  @override
  ConsumerState<TripProceedPanel> createState() => _TripProceedPanelState();
}

class _TripProceedPanelState extends ConsumerState<TripProceedPanel> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(tripProceedViewModelProvider).setCarId("");
      ref.read(tripProceedViewModelProvider).getCashThreshold();
    });
  }

  @override
  Widget build(BuildContext context) {
    final TripProceedViewModel tripProceedViewModel =
        ref.watch(tripProceedViewModelProvider);
    final size = MediaQuery.of(context).size;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: ref.watch(locationPickerViewModelProvider).loading
          ? SizedBox(
              height: size.height,
              width: size.width,
              child: const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              ),
            )
          : ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              controller: widget.sc,
              shrinkWrap: true,
              children: [
                gapH16,
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  // margin: const EdgeInsets.symmetric(horizontal: 16),
                  color: kWhite,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
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
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40.h,
                          child: TextFormField(
                            readOnly: true,
                            onTap: () {
                              ref
                                  .watch(locationPickerViewModelProvider)
                                  .setisPickupLocationShowCursor(true);
                              context.pop();
                            },
                            controller: ref
                                .read(locationPickerViewModelProvider)
                                .pickupAddController,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/icons/pickup_pin.png',
                                ),
                              ),
                              hintText: 'Enter Pickup Location',
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        const Divider(
                          color: ktextfield,
                          thickness: 1.5,
                        ),
                        SizedBox(
                               height: 40.h,
                          child: TextField(
                            onTap: () {
                              context.pop();
                              ref
                                  .watch(locationPickerViewModelProvider)
                                  .setisPickupLocationShowCursor(false);
                            },
                            controller: ref
                                .read(locationPickerViewModelProvider)
                                .dropAddController,
                            readOnly: true,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/icons/destination_pin.png',
                                ),
                              ),
                              hintText: 'Enter Destination',
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        gapH5,
                      ],
                    ),
                  ),
                ),
                gapH20,
                Text(
                  LocaleKeys.selectSpecifications.tr(),
                  style: TextStyle(
                    color: kBlack,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                gapH20,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      gapH12,
                      Text(
                        LocaleKeys.options.tr(),
                        style: TextStyle(
                          color: kBlack,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Plus Jakarta Sans",
                        ),
                      ),
                      gapH8,
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 0.w),
                        leading: const Icon(
                          Icons.airline_seat_recline_normal,
                          color: kGrey,
                        ),
                        title: Text(
                          "Wheelchair Access",
                          style: TextStyle(
                            color: kBlack,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        trailing: Switch(
                          activeColor: kWhite,
                          activeTrackColor: primaryColor,
                          value: ref
                              .watch(tripProceedViewModelProvider)
                              .isWheelchairAccess,
                          onChanged: (value) {
                            ref
                                .watch(tripProceedViewModelProvider)
                                .setisWheelchairAccess(value);
                          },
                        ),
                      ),
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 0.w),
                        leading: const Icon(
                          Icons.child_care_rounded,
                          color: kGrey,
                        ),
                        title: Text(
                          "Child Booster",
                          style: TextStyle(
                            color: kBlack,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        trailing: Switch(
                          activeColor: kWhite,
                          activeTrackColor: primaryColor,
                          value: ref
                              .watch(tripProceedViewModelProvider)
                              .isChildBooster,
                          onChanged: (value) {
                            ref
                                .watch(tripProceedViewModelProvider)
                                .setisChildBooster(value);
                          },
                        ),
                      ),
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 0.w),
                        leading: const Icon(
                          Icons.pets,
                          color: kGrey,
                        ),
                        title: Text(
                          "Pet Friendly",
                          style: TextStyle(
                            color: kBlack,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        trailing: Switch(
                          activeColor: kWhite,
                          activeTrackColor: primaryColor,
                          value: ref
                              .watch(tripProceedViewModelProvider)
                              .isPetFriendly,
                          onChanged: (value) {
                            ref
                                .watch(tripProceedViewModelProvider)
                                .setisPetFriendly(value);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                gapH24,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      gapH16,
                      Text(
                        LocaleKeys.passengerCount.tr(),
                        style: TextStyle(
                          color: kBlack,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Plus Jakarta Sans",
                        ),
                      ),
                      gapH16,
                      ...List.generate(
                        4,
                        (index) => GestureDetector(
                          onTap: () {
                            if(!(tripProceedViewModel.getCashThresholdResponseModel.data?.isCashAllowed ?? false)) {

                              if(ref.watch(splashViewModelProvider).getSavedCardsModel.savedPaymentMethod?.isEmpty ?? false) {
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
                              } else {
                                showDialog(
                                  context: context, 
                                  builder: (context) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                      title: const Text("Card Only!", style: TextStyle(fontWeight: FontWeight.bold, color: primaryColor),),
                                      content: const Text("Cash is not allowed in this ride as you have exceeded the times for cancellation in cash"),
                                      actions: [
                                        CustomButton(
                                          buttonText: "Ok",
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
                              
                            }
                            tripProceedViewModel.setCarId(index.toString());
                          },
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsetsDirectional.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: Border.all(
                                    color: index.toString() ==
                                            tripProceedViewModel.carId
                                        ? primaryColor
                                        : kWhite,
                                  ),
                                  color: index.toString() ==
                                          tripProceedViewModel.carId
                                      ? primaryColor.withOpacity(0.1)
                                      : kWhite,
                                ),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        tripProceedViewModel
                                            .setCarId(index.toString());
                                      },
                                      child: Container(
                                        width:
                                            50.0, // Adjust the width as needed
                                        height:
                                            50.0, // Adjust the height as needed
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: CachedNetworkImageProvider(
                                              ref
                                                      .watch(
                                                        locationPickerViewModelProvider,
                                                      )
                                                      .searchRideResponseModel
                                                      .data
                                                      ?.carType?[index]
                                                      .image ??
                                                  "",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8.0,
                                    ), // Add some spacing between the image and text
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${ref.watch(locationPickerViewModelProvider).searchRideResponseModel.data?.carType?[index].passengerCapacity ?? ""} ${LocaleKeys.passengers.tr()} (${ref.watch(locationPickerViewModelProvider).searchRideResponseModel.data?.carType?[index].name ?? ""})",
                                          style: const TextStyle(
                                            color: kBlack,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Plus Jakarta Sans",
                                          ),
                                        ),
                                        Text(
                                          "${ref.watch(locationPickerViewModelProvider).searchRideResponseModel.data?.carType?[index].luggageQuantity ?? 1} ${LocaleKeys.luggageUpTo.tr()} ${ref.read(locationPickerViewModelProvider).searchRideResponseModel.data?.carType?[index].luggageWeightInKg ?? "1"}Kg",
                                          style: const TextStyle(
                                            color: kGrey,
                                            fontSize: 10.5,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          child: (ref.watch(locationPickerViewModelProvider).searchRideResponseModel.data?.carType?[index].pendingCancellationCharges ?? 0) > 0 
                                            ? Text(
                                                "Pending cancellation charge of +€${ref.watch(locationPickerViewModelProvider).searchRideResponseModel.data?.carType?[index].pendingCancellationCharges ?? 0}",
                                                style: const TextStyle(
                                                  color: kGrey,
                                                  fontSize: 10.5,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            : const SizedBox.shrink(),
                                        ),
                                      ],
                                    ),
                                    const Spacer(), // Push the trailing text to the right
                                    Text(
                                      "€${ref.watch(locationPickerViewModelProvider).searchRideResponseModel.data?.carType?[index].price ?? 1}",
                                      style: const TextStyle(
                                        color: kBlack,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              gapH5,
                            ],
                          ),
                        ),
                      ),
                      gapH10,
                    ],
                  ),
                ),
                gapH20,
              ],
            ),
    );
  }
}
