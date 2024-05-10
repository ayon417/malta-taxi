import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:malta_taxi/data/remote/payment/models/payment_details_model.dart';
import 'package:malta_taxi/utils/custom_button.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_completed/component/trip_completed_body.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_completed/component/trip_completed_panel.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_completed/trip_completed_view_model.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_confirmed/trip_confirmed_view_model.dart';
import 'package:malta_taxi/view/screens/splash/splash_view_model.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class TripCompletedView extends ConsumerStatefulWidget {
  const TripCompletedView({super.key});

  @override
  ConsumerState<TripCompletedView> createState() => _TripCompletedViewState();
}

class _TripCompletedViewState extends ConsumerState<TripCompletedView>
    with BaseScreenView {
  PanelController panelController = PanelController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(milliseconds: 300), () {
        panelController.animatePanelToSnapPoint(
          curve: Curves.easeInOutCubic,
          duration: 500.ms,
        );
        ref.read(splashViewModelProvider).getSavedCards();
      });
      ref.read(tripCompletedViewModelProvider)
          .getPaymentDetails(PaymentDetailsRequestModel(rideId: ref.read(tripConfirmedViewModelProvider).rideId));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
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
          buttonText: "Continue",
        //  isLoading: ref.watch(tripCompletedViewModelProvider).loading,
          loaderColor: kWhite,
          ontap: () async {
            ref.watch(tripConfirmedViewModelProvider).clearResponseModels();
            ref.watch(tripConfirmedViewModelProvider).clearRideId();
            context.goNamed(AppRoute.bottomNavigationView.name);

                //Navigator.pop(context);
            // ref.read(tripCompletedViewModelProvider)
            //       .getPaymentDetails(PaymentDetailsRequestModel(rideId: ref.read(tripConfirmedViewModelProvider).getOngoingRideResponseModel.data?.id ?? ""));

            // ref.read(tripCompletedViewModelProvider).getPaymentLink(
            //   context, 
            //   PaymentRequestModel(rideId: ref.read(tripConfirmedViewModelProvider).checkRideStatusResponseModel.data?.rideId ?? "")
            // );
            // CreatePaymentRequestModel createPaymentRequestModel = CreatePaymentRequestModel(
            //   cardId: ref.read(splashViewModelProvider).getSavedCardsModel.savedPaymentMethod?[0].id ?? "",
            //   rideId: ref.read(tripConfirmedViewModelProvider).getOngoingRideResponseModel.data?.id ?? ""
            // );
            
            // Logger.printWarning(createPaymentRequestModel.toString());

            // await ref.watch(tripCompletedViewModelProvider).createPayment(context, createPaymentRequestModel);
          },
          buttonColor: primaryColor,
          textColor: kWhite,
        ),
      ).animate().slideY(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOutExpo,
            end: 0.0,
            begin: 2.0,
          ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          panelController.isPanelOpen == true
              ? panelController.close()
              : panelController.open();
        },
        backgroundColor: kWhite,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        child: const Icon(
          Icons.keyboard_arrow_down,
          color: kBlack,
        ),
      ),
      body: SlidingUpPanel(
        controller: panelController,
        minHeight: MediaQuery.of(context).size.height * 0.18,
        maxHeight: MediaQuery.of(context).size.height * 0.9,
        snapPoint: 0.7,
        parallaxEnabled: true,
        renderPanelSheet: false,
        panelBuilder: (sc) => TripCompletedPanel(
          sc: sc,
        ),
        body: const TripCompletedBody(),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.goNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // implement showSnackbar
  }
}
