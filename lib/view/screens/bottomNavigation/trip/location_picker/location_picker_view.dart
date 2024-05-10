import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/location_picker/component/appbar/location_picker_appbar.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/location_picker/component/panel/location_picker_panel.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/location_picker/location_picker_view_model.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class LocationPickerView extends ConsumerStatefulWidget {
  final bool? isPicupLocationShowCursor;
  const LocationPickerView({this.isPicupLocationShowCursor = false, super.key});

  @override
  ConsumerState<LocationPickerView> createState() => _LocationPickerViewState();
}

class _LocationPickerViewState extends ConsumerState<LocationPickerView>
    with BaseScreenView {
  @override
  void initState() {
    openAnimation();
    super.initState();
  }

  void openAnimation() {
    Future.delayed(const Duration(milliseconds: 100), () {
      ref.watch(locationPickerViewModelProvider).pickupAddController.text = ref.watch(locationPickerViewModelProvider).getUserCurrentLocationAddress;
      ref.read(locationPickerViewModelProvider).setPickupFinal(ref.watch(locationPickerViewModelProvider).getUserCurrentLocationAddress);
      ref.watch(locationPickerViewModelProvider).pc.open(); // open panel (time taken -> 300ms)
    });

    Future.delayed(const Duration(milliseconds: 500), () {
      if (ref
          .watch(locationPickerViewModelProvider)
          .isPickupLocationShowCursor) {
        FocusScope.of(context).requestFocus(
          ref.watch(locationPickerViewModelProvider).pickupAddinputNode,
        );
      } else {
        FocusScope.of(context).requestFocus(
          ref.watch(locationPickerViewModelProvider).dropAddinputNode,
        );
      }
      // open keyboard (time taken -> 200ms)
      // show maps
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        height: 45.h,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  ref.read(locationPickerViewModelProvider).setPickupTyping(false);
                  ref.watch(locationPickerViewModelProvider).pickupAddController.text = ref .watch(locationPickerViewModelProvider).getUserCurrentLocationAddress;
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.location_searching,
                          color: primaryColor,
                        ),
                        gapW10,
                        const Text(
                          "Current Location",
                          style: TextStyle(
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 20.h,
            //   child: const VerticalDivider(
            //     color: kGrey,
            //     thickness: 0.7,
            //   ),
            // ),
            // Expanded(
            //   child: SizedBox(
            //     width: double.infinity,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         const Icon(
            //           IconlyLight.location,
            //           color: primaryColor,
            //         ),
            //         gapW10,
            //         const Text(
            //           "Locate on map",
            //           style: TextStyle(
            //             color: primaryColor,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ).animate().fadeIn(delay: 900.ms),
   //  extendBody: true,
    //  extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160.h),
        child: LocationPickerAppbar(
          isPicupLocationShowCursor: widget.isPicupLocationShowCursor,
        ),
      ),
      body: SlidingUpPanel(
        isDraggable: false,
        controller: ref.watch(locationPickerViewModelProvider).pc,
        minHeight: MediaQuery.of(context).size.height * 0.0,
        maxHeight: MediaQuery.of(context).size.height * 0.74,
        renderPanelSheet: false,
 
        panelBuilder: (sc) => LocationPickerPanel(scrollController: sc),
       // body: const LocationPickerBody(),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.goNamed(appRoute.name, queryParameters: params ?? {});
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // implement showSnackbar
  }
}
