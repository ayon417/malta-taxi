import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/location_picker/location_picker_view_model.dart';

class LocationPickerPanel extends ConsumerStatefulWidget {
  final ScrollController scrollController;
  const LocationPickerPanel({super.key, required this.scrollController});

  @override
  ConsumerState<LocationPickerPanel> createState() =>
      _LocationPickerPanelState();
}

class _LocationPickerPanelState extends ConsumerState<LocationPickerPanel> {

  // Future<void> getCoords() async {
  //   LocationPermission permission = await Geolocator.requestPermission();
  //   final Position position = await Geolocator.getCurrentPosition();
  //   final double lat = position.latitude;
  //   final double long = position.longitude;
  //   Logger.printSuccess(position.toString());
  // }

  @override
  void initState() {
    super.initState();   
    // getCoords(); 
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10.r),
        ),
      ),
      child: SingleChildScrollView(
        controller: widget.scrollController,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              ...List.generate(
                ref
                    .watch(locationPickerViewModelProvider)
                    .getLocationSuggestion
                    .length < 3 ?  ref
                    .watch(locationPickerViewModelProvider)
                    .getLocationSuggestion
                    .length  : 3,
                (index) => ListTile(
                  onTap: () {
                    if (FocusScope.of(context).focusedChild ==
                        ref.watch(locationPickerViewModelProvider).pickupAddinputNode) {
                        ref.watch(locationPickerViewModelProvider).pickupAddController.text =
                        ref.watch(locationPickerViewModelProvider).getLocationSuggestion[index];

                        ref.read(locationPickerViewModelProvider).setPickupTyping(false);
                        ref.read(locationPickerViewModelProvider).setPickupFinal(ref.watch(locationPickerViewModelProvider).getLocationSuggestion[index]);
                      // focusNode1 is currently active
                    } else {
                      ref.watch(locationPickerViewModelProvider).dropAddController  .text =
                          ref.watch(locationPickerViewModelProvider).getLocationSuggestion[index];

                          ref.read(locationPickerViewModelProvider).setDropTyping(false); 
                          ref.read(locationPickerViewModelProvider).setDropFinal(ref.watch(locationPickerViewModelProvider).getLocationSuggestion[index]);
                      // focusNode2 is currently active
                    }
                  },
                  visualDensity: VisualDensity.compact,
                  dense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                  leading: const Icon(
                    Icons.history,
                    color: kGrey,
                  ),
                  title: Text(
                    ref.watch(locationPickerViewModelProvider).getLocationSuggestion[index],
                    style: TextStyle(
                      fontSize: 11.5.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Plus Jakarta Sans',
                      color: kBlack,
                    ),
                  ),
                ),
              ).animate().fadeIn(
                    delay: 100.ms,
                    duration: 600.ms,
                  ),
              gapH10,
              ListTile(
                visualDensity: VisualDensity.compact,
                dense: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                title: Text(
                  LocaleKeys.popularDestinations.tr(),
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Plus Jakarta Sans',
                    color: kBlack,
                  ),
                ),
              ),
              gapH5,
              ...List.generate(
                (ref.watch(locationPickerViewModelProvider).popularDestinationResponse.data?.length ?? 0) < 3 ?  ref.watch(locationPickerViewModelProvider).popularDestinationResponse.data?.length??0: 3,
                (index) => ListTile(
                  onTap: () {
                    if (FocusScope.of(context).focusedChild ==
                        ref.watch(locationPickerViewModelProvider).pickupAddinputNode) {
                      ref .watch(locationPickerViewModelProvider)  .pickupAddController  .text =
                          ref.watch(locationPickerViewModelProvider).popularDestinationResponse.data![index];

                        ref.read(locationPickerViewModelProvider).setPickupTyping(false);
                        ref.read(locationPickerViewModelProvider).setPickupFinal(ref.watch(locationPickerViewModelProvider).popularDestinationResponse.data![index]);
                      // focusNode1 is currently active
                    } else {
                      ref.watch(locationPickerViewModelProvider).dropAddController  .text =
                      ref.watch(locationPickerViewModelProvider).popularDestinationResponse.data![index];


                      ref.read(locationPickerViewModelProvider).setDropTyping(false);
                      ref.read(locationPickerViewModelProvider).setDropFinal(ref.watch(locationPickerViewModelProvider).popularDestinationResponse.data![index]);
                      // focusNode2 is currently active
                    }
                  },
                  visualDensity: VisualDensity.compact,
                  dense: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                  leading: const Icon(
                    Icons.add_location_rounded,
                    color: kGrey,
                  ),
                  title: Text(
                    ref.watch(locationPickerViewModelProvider).popularDestinationResponse.data?[index] ?? "",
                    style: TextStyle(
                      fontSize: 11.7.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Plus Jakarta Sans',
                      color: kBlack,
                    ),
                  ),
                ),
              ),
             SizedBox(
              height: 350.h,
            ),
            ],
          ),
        ),
      ),
    );
  }
}
