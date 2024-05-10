// ignore_for_file: use_build_context_synchronously, avoid_dynamic_calls, parameter_assignments, unused_local_variable, unnecessary_parenthesis

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/cancel_ride/model/cancel_ride_amount_model.dart';
import 'package:malta_taxi/data/remote/confirmPayment/models/change_paymentmethod.dart';
import 'package:malta_taxi/utils/custom_button.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/payment/add_new_card_web_view.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_cancel/trip_cancel_view_model.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_confirmed/trip_confirmed_view_model.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_proceed/component/trip_proceed_bottombar.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_proceed/trip_proceed_view_model.dart';
import 'package:malta_taxi/view/screens/splash/splash_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class TripConfirmedPanel extends ConsumerStatefulWidget {
  final ScrollController sc;
  const TripConfirmedPanel({super.key, required this.sc});

  @override
  ConsumerState<TripConfirmedPanel> createState() => _TripConfirmedPanelState();
}

class _TripConfirmedPanelState extends ConsumerState<TripConfirmedPanel> with RestorationMixin, WidgetsBindingObserver {

  // int time = 180;
  RestorableInt time = RestorableInt(210);
  int timeVal = 210;

  bool _isLoading = false;
  int selectedPayment = 1;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {

      ref.read(tripProceedViewModelProvider).getCashThreshold();
      getPayment();

      // Logger.printError(ref.watch(tripConfirmedViewModelProvider).checkRideStatusResponseModel.data?.rideId ?? "");

      if(!(ref.watch(tripProceedViewModelProvider).getCashThresholdResponseModel.data?.isCashAllowed ?? false)) {
        selectedPayment = 1;
        ref
            .watch(tripConfirmedViewModelProvider)
            .changePaymentMethod(
              context,
              ChangePaymentMethodReq(
                rideId: ref.watch(tripConfirmedViewModelProvider).checkRideStatusResponseModel.data?.rideId ?? "",
                paymentMethod: "card",
              ),
            );
      } else if(
        (ref.watch(splashViewModelProvider).getSavedCardsModel.savedPaymentMethod?.isEmpty ?? false) || 
        ref.watch(splashViewModelProvider).isCardSkipped) {
          selectedPayment = 2;
          ref
            .watch(tripConfirmedViewModelProvider)
            .changePaymentMethod(
              context,
              ChangePaymentMethodReq(
                rideId: ref.watch(tripConfirmedViewModelProvider).checkRideStatusResponseModel.data?.rideId ?? "",
                paymentMethod: "cash",
              ),
            );
      }
    });

    _isLoading = true;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if(time.value == 0) {
        timer.cancel();
      } else {
        setState(() {
          time.value--;
          timeVal--;
        });
      }
    });

    // final listener = AppLifecycleListener(
    //   onPause: () => ref.read(tripConfirmedViewModelProvider).checkRideStatus(context, isHomePage: true),
    //   onResume: () => ref.read(tripConfirmedViewModelProvider).checkRideStatus(context, isHomePage: true),
    //   onInactive: () => ref.read(tripConfirmedViewModelProvider).checkRideStatus(context, isHomePage: true),
    //   onStateChange: (value) => ref.read(tripConfirmedViewModelProvider).checkRideStatus(context, isHomePage: true),
    // );    
    // ref.read(tripConfirmedViewModelProvider).getOngoingRide(context, GetOngoingRideRequestModel(rideId: ref.read(tripConfirmedViewModelProvider).checkRideStatusResponseModel.data?.rideId ?? ""));
  }

  Future<void> getPayment() async {
    final int val = await ref.read(tripConfirmedViewModelProvider).getPaymentOption();
    setState(() {
      selectedPayment = val;
    });
  }

  List<String> paymentGroup = [
    "wallet",
    "card",
    "cash",
  ];
  
  String formatPhoneNumber(String number) {
    if (!number.startsWith('+')) {
      // If the number doesn't start with '+'
      number = '+$number'; // Add '+' at the start
    }
    return number;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    ref.read(tripConfirmedViewModelProvider).checkRideStatus(context, isHomePage: true);
    ref.read(tripProceedViewModelProvider).getCashThreshold();
    getPayment();
    super.didChangeAppLifecycleState(state);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ref.read(tripProceedViewModelProvider).getCashThreshold();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.all(Radius.circular(30.r)),
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
      child: ref.watch(tripConfirmedViewModelProvider).loading
          ? const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: CircularProgressIndicator(
                  color: primaryColor,
                ),
              ),
            )
          : SingleChildScrollView(
              controller: widget.sc,
              child: StreamBuilder(
                stream: FirebaseFirestore.instance.collection("ride").doc(ref.watch(tripConfirmedViewModelProvider).checkRideStatusResponseModel.data?.rideId ?? "").snapshots(),
                builder: (context, snapshot) {
                  // Logger.printError(snapshot.data?.data().toString() ?? "");                  
                  Logger.printError(snapshot.data?.get("rideStatus") ?? ""); 

                  // switch(snapshot.connectionState) {
                  //   case ConnectionState.waiting:
                  //   case ConnectionState.none:

                  // }

                  if(!snapshot.hasData || snapshot.hasError) {
                    return const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Center(
                        child: CircularProgressIndicator(
                          color: primaryColor,
                        ),
                      ),
                    );
                  } else if((snapshot.data?.get("rideStatus") ?? "") == "completed" || (snapshot.data?.get("rideStatus") ?? "") == "pendingPayment") {
                    Future.delayed(const Duration(milliseconds: 1000), () => context.goNamed(AppRoute.tripCompletedView.name));
                  } else if((snapshot.data?.get("rideStatus") ?? "") == "cancelled") {
                    Future.delayed(const Duration(seconds: 2), () {
                      context.pop();
                      // context.pop();
                      showModalBottomSheet(
                        isDismissible: false,
                        context: context,
                        builder: (context) => const CancelBottomSheet(),
                      );
                    });
                  }
                  return Column(
                      children: [
                        gapH10,
                        Container(
                          width: 60.w,
                          height: 5.h,
                          decoration: BoxDecoration(
                            color: ktextfield,
                            borderRadius: BorderRadius.all(Radius.circular(10.r)),
                          ),
                        ),
                        gapH5,
                        ListTile(
                          dense: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                          title: Text(
                            (snapshot.data?.get("rideStatus") ?? "") == "reachedDestination"
                                ? "Driver has reached your pickup location"
                                : "Your ride is ${snapshot.data?.get("rideStatus") ?? ""}",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          leading: Image.asset(
                            "assets/icons/right.png",
                            height: 20.h,
                          ),
                        ),
                        gapH5,
                        const Divider(
                          color: Color(0XffCFCFCF),
                        ),
                        SizedBox(
                          child: ref.watch(tripConfirmedViewModelProvider).loading
                              ? const Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Center(
                                    child: CircularProgressIndicator(
                                      color: primaryColor,
                                    ),
                                  ),
                                )
                              : ListTile(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16.w),
                                  title: Text(
                                    snapshot.data?.get("carNumber") ?? "",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      gapH6,
                                      Text(
                                        // ref
                                        //         .read(tripConfirmedViewModelProvider)
                                        //         .getOngoingRideResponseModel
                                        //         .data
                                        //         ?.carName ??
                                        //     "",
                                        snapshot.data?.get("carName") ?? "",
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                      gapH6,
                                      Text(
                                        // "${ref.read(tripConfirmedViewModelProvider).getOngoingRideResponseModel.data?.driverFirstName ?? ""} ${ref.read(tripConfirmedViewModelProvider).getOngoingRideResponseModel.data?.driverLastName ?? ""}",
                                        ((snapshot.data?.get("driverFirstName") ?? "")) + ((snapshot.data?.get("driverLastName") ?? "")),
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: Stack(
                                    clipBehavior: Clip.none,
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CircleAvatar(
                                        radius: 30.r,
                                        backgroundColor: kBlackPearl,
                                        backgroundImage: const NetworkImage(
                                          // ref
                                          //         .read(
                                          //           tripConfirmedViewModelProvider,
                                          //         )
                                          //         .getOngoingRideResponseModel
                                          //         .data
                                          //         ?.driverImage ??
                                              AppConstants.noimglink,
                                        ),
                                      ),
                                      // Positioned(
                                      //   bottom: -15,
                                      //   child: Container(
                                      //     height: 20.h,
                                      //     width: 60.w,
                                      //     decoration: BoxDecoration(
                                      //       color: kWhite,
                                      //       borderRadius: BorderRadius.all(
                                      //         Radius.circular(10.r),
                                      //       ),
                                      //       boxShadow: [
                                      //         BoxShadow(
                                      //           color: Colors.grey.withOpacity(0.3),
                                      //           spreadRadius: 0.5,
                                      //           blurRadius: 7,
                                      //           offset: const Offset(
                                      //             0,
                                      //             2,
                                      //           ), // changes position of shadow
                                      //         ),
                                      //       ],
                                      //     ),
                                      //     child: Row(
                                      //       mainAxisAlignment:
                                      //           MainAxisAlignment.center,
                                      //       children: [
                                      //         const Text("4.5"),
                                      //         Icon(
                                      //           Icons.star_border,
                                      //           size: 15.sp,
                                      //         ),
                                      //       ],
                                      //     ),
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ),
                        ),
                        gapH12,
                        Visibility(
                          visible: ((snapshot.data?.get("rideStatus") ?? "")) !="started" && ((snapshot.data?.get("rideStatus") ?? "")) != "completed",
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                child: CustomButton(
                                  paddding: AppSizes.p14,
                                  buttonText:
                                      "${LocaleKeys.callTo.tr()} ${snapshot.data?.get("driverFirstName") ?? ""}",
                                  textColor: kWhite,
                                  buttonColor: primaryColor,
                                  prefixIcon: "assets/icons/call.png",
                                  isPrefix: true,
                                  ontap: () {
                                  
                                    launch(
                                        "tel://${formatPhoneNumber(snapshot.data?.get("driverMobile") ?? "")}",);
                                    // context.goNamed(AppRoute.tripCompletedView.name);
                                  },
                                ),
                              ),
                              gapH12,
                            ],
                          ),
                        ),
                        const Divider(
                          color: Color(0XffCFCFCF),
                        ),
                        PaddedColumn(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          children: [
                            gapH20,
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: kWhite,
                                borderRadius: BorderRadius.all(Radius.circular(8.r)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 0.5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                      0,
                                      2,
                                    ), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    dense: true,
                                    visualDensity: VisualDensity.compact,
                                    title: Text(
                                      "Current Trip Status",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    dense: true,
                                    visualDensity: VisualDensity.compact,
                                    minVerticalPadding: 0,
                                    leading: Image.asset(
                                      "assets/icons/pickup_pin.png",
                                      height: 20.h,
                                    ),
                                    title: Text(
                                      snapshot.data?.get("pickupLocation")['pickupLocationName'] ?? "",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    child: Divider(color: kGrey, thickness: 0.2),
                                  ),
                                  ListTile(
                                    dense: true,
                                    visualDensity: VisualDensity.compact,
                                    minVerticalPadding: 0,
                                    leading: Image.asset(
                                      "assets/icons/destination_pin.png",
                                      height: 20.h,
                                    ),
                                    title: Text(
                                      snapshot.data?.get("destinationLocation")['destinationLocationName'] ?? "",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  gapH10,
                                ],
                              ),
                            ),
                            gapH20,
                            // SizedBox(
                            //   child: (ref.read(tripConfirmedViewModelProvider).getOngoingRideResponseModel.data?.rideStatus ?? "") == "started" || (ref.read(tripConfirmedViewModelProvider).getOngoingRideResponseModel.data?.rideStatus ?? "") == "completed"
                            //   ? CustomButton(
                            //       paddding: AppSizes.p14,
                            //       buttonText: "Change Destination Or Add Stops",
                            //       textColor: kWhite,
                            //       buttonColor: primaryColor,
                            //       // prefixIcon: "assets/icons/call.png",
                            //       // isPrefix: true,
                            //       ontap: () {
                            //         // context.goNamed(AppRoute.tripCompletedView.name);
                            //       },
                            //   )
                            //   : CustomButton(
                            //       paddding: AppSizes.p14,
                            //       buttonText: "cancel trip",
                            //       borderColor: kGrey,
                            //       ontap: () {
                            //         context.goNamed(AppRoute.tripCompletedView.name);
                            //       },
                            //     ),
                            // ),
                            CustomButton(
                              paddding: AppSizes.p14,
                              buttonText: "Cancel Trip",
                              borderColor: kGrey,
                              ontap: () {
                                ref
                                    .watch(tripCancelViewModelViewModelProvider)
                                    .cancelRideAmount(
                                      CancelRideAmountModelRer(
                                        rideId: ref.watch(tripConfirmedViewModelProvider).rideId,
                                      ),
                                    )
                                    .whenComplete(() {
                                  showDialog(
                                    context: context,
                                    builder: (context) => const CancelDialogbox(),
                                  );
                                });
                                // context.goNamed(AppRoute.tripCompletedView.name);
                              },
                            ),
                            gapH10,
                            SizedBox(
                              child: !_isLoading ? Visibility(
                                visible: 210 - DateTime.now().difference(DateTime.parse(snapshot.data?.get("pickupDateTime") ?? "")).inSeconds > 0 && 
                                    ((snapshot.data?.get("rideStatus") ?? "") == "accepted" || (snapshot.data?.get("rideStatus") ?? "") == "reachedDestination"),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Free Cancellation ends within",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      formatTime(210 - DateTime.now().difference(DateTime.parse(snapshot.data?.get("pickupDateTime") ?? "")).inSeconds),
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ) : const Center(child: CircularProgressIndicator(color: primaryColor,),),
                            ),
                            // CustomButton(
                            //   paddding: AppSizes.p14,
                            //   buttonText: "Change Destination  Or  Add Stops",
                            //   textColor: kWhite,
                            //   buttonColor: primaryColor,
                            //   ontap: () {
                            //     context.goNamed(AppRoute.tripCompletedView.name);
                            //   },
                            // ),
                            gapH20,
                            DecoratedBox(
                              decoration: BoxDecoration(
                                color: kWhite,
                                borderRadius: BorderRadius.all(Radius.circular(8.r)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 0.5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                      0,
                                      2,
                                    ), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    dense: true,
                                    visualDensity: VisualDensity.compact,
                                    title: Text(
                                      "Book With",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    trailing: Text(
                                      "€${snapshot.data?.get("price") ?? 0}",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 16.w),
                                    dense: true,
                                    visualDensity: VisualDensity.compact,
                                    minVerticalPadding: 0,
                                    leading: Image.asset(
                                      "assets/icons/wallet.png",
                                      height: 20.h,
                                      color: Colors.grey,
                                      colorBlendMode: BlendMode.color,
                                    ),
                                    title: Text(
                                      LocaleKeys.wallet.tr(),
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                        color: kGrey,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "Available Balance :€0",
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        color: kGrey,
                                      ),
                                    ),
                                    trailing: Radio(
                                      fillColor: MaterialStateProperty.all<Color>(
                                        kGrey,
                                      ),
                                      value: 0,
                                      groupValue: 1,
                                      onChanged: (value) {},
                                    ),
                                  ),
                                  ListTile(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 16.w),
                                    visualDensity: VisualDensity.compact,
                                    dense: true,
                                    leading: Image.asset(
                                      "assets/icons/card.png",
                                      height: 20.h,
                                    ),
                                    title: Row(
                                      children: [
                                        Text(
                                          LocaleKeys.card.tr(),
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        if (ref.watch(splashViewModelProvider).getSavedCardsModel.savedPaymentMethod?.isNotEmpty ?? false) Text(
                                              "  xx-${ref.watch(splashViewModelProvider).getSavedCardsModel.savedPaymentMethod?[0].card?.last4 ?? 0000}",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ) else Text(
                                              " - Not added",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                      ],
                                    ),
                                    subtitle: Wrap(
                                      children: [
                                        Text(
                                          "Will be deducted from your selected card if you don't have enough balance in your card, update your card details",
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                            color: kGrey,
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            /// [DOCS FOR AYUSH]
                                            /// The logic for updating a card will be same as adding a new card
                                            /// The user will be able to save only one card at a time. When the user updates
                                            /// his card with a new card, getSavedCards will automatically now update the
                                            /// GetSavedCardsResponse in the viewmodel with the new card
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
                                                    height: 110.h,
                                                    child: Column(
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
                                                                await ref.read(splashViewModelProvider).getSavedCards();
                                                              });
                                                            }
                                                          },
                                                        ),
                                                    //   gapH16,
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Text(
                                            "Update Card",
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w500,
                                              color: primaryColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    trailing: Radio(
                                      fillColor: MaterialStateProperty.all<Color>(
                                        primaryColor,
                                      ),
                                      value: selectedPayment,
                                      groupValue: paymentGroup.indexOf("card"),
                                      onChanged: (value) {
                                        if(ref.watch(splashViewModelProvider).getSavedCardsModel.savedPaymentMethod?.isEmpty ?? true) {
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
                                                        "Do you want to add a new card",
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
                                                              setState(() {
                                                                selectedPayment = 1;
                                                              });
                                                              ref.read(tripConfirmedViewModelProvider).savePaymentOption(1);
                                                              ref
                                                                  .watch(tripConfirmedViewModelProvider)
                                                                  .changePaymentMethod(
                                                                    context,
                                                                    ChangePaymentMethodReq(
                                                                      rideId: ref.watch(tripConfirmedViewModelProvider).checkRideStatusResponseModel.data?.rideId ?? "",
                                                                      paymentMethod: "card",
                                                                    ),
                                                                  );
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
                                                        buttonText: "Skip and Use Cash",
                                                        textColor: primaryColor,
                                                        ontap: () async {
                                                          ref.read(splashViewModelProvider).changeIsCardSkippedFlag(true);
                                                          ref.read(tripConfirmedViewModelProvider).savePaymentOption(2);
                                                          Navigator.pop(context);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        } else {
                                          ref.read(tripConfirmedViewModelProvider).savePaymentOption(1);
                                          ref
                                              .watch(tripConfirmedViewModelProvider)
                                              .changePaymentMethod(
                                                context,
                                                ChangePaymentMethodReq(
                                                  rideId: ref.watch(tripConfirmedViewModelProvider).checkRideStatusResponseModel.data?.rideId ?? "",
                                                  paymentMethod: "card",
                                                ),
                                              );
                                          selectedPayment = 1;
                                          setState(() {});
                                        }
                                      },
                                    ),
                                  ),
                                  ListTile(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 16.w),
                                    visualDensity: VisualDensity.compact,
                                    dense: true,
                                    leading: Image.asset(
                                      "assets/icons/cash.png",
                                      height: 20.h,
                                      color: ref.watch(tripProceedViewModelProvider).getCashThresholdResponseModel.data?.isCashAllowed ?? true 
                                          ? null : Colors.grey,
                                    ),
                                    title: Text(
                                      LocaleKeys.cash.tr(),
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    subtitle: Text(
                                      ref.watch(tripProceedViewModelProvider).getCashThresholdResponseModel.data?.isCashAllowed ?? true
                                          ? "Give cash after the ride"
                                          : "Cash is not allowed for this ride",
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        color: kGrey,
                                      ),
                                    ),
                                    trailing: Radio(
                                      fillColor: MaterialStateProperty.all<Color>(
                                        (ref.watch(tripProceedViewModelProvider).getCashThresholdResponseModel.data?.isCashAllowed ?? true) 
                                          ? primaryColor : kGrey,
                                      ),
                                      value: selectedPayment,
                                      groupValue: paymentGroup.indexOf("cash"),
                                      onChanged: (value) {
                                        if(ref.watch(tripProceedViewModelProvider).getCashThresholdResponseModel.data?.isCashAllowed ?? true) {
                                          selectedPayment = 2;
                                          ref.read(tripConfirmedViewModelProvider).savePaymentOption(2);
                                          setState(() {});
                                          ref
                                              .watch(tripConfirmedViewModelProvider)
                                              .changePaymentMethod(
                                                context,
                                                ChangePaymentMethodReq(
                                                  rideId: ref.watch(tripConfirmedViewModelProvider).checkRideStatusResponseModel.data?.rideId ?? "",
                                                  paymentMethod: "cash",
                                                ),
                                              );
                                        }
                                      },
                                    ),
                                  ),
                                  gapH6,
                                ],
                              ),
                            ),
                          ],
                        ),
                        gapH10,
                      ],
                    );
                },
              ),
            ),
    );
  }
  
  @override
  // TODO: implement restorationId
  String? get restorationId => 'tripconfirmedpanel';
  
  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(time, 'time');
  }

  @override
  void dispose() {
    // time.dispose();
    super.dispose();
  }
}
