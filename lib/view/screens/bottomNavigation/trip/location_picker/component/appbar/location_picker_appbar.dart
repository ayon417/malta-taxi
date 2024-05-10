// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iconly/iconly.dart';
import 'package:malta_taxi/data/remote/searchRide/models/search_ride_model.dart';
import 'package:malta_taxi/utils/location_search/location_serach.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/location_picker/location_picker_view_model.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_proceed/trip_proceed_view_model.dart';
import 'package:malta_taxi/view/screens/splash/splash_view_model.dart';

class LocationPickerAppbar extends ConsumerStatefulWidget {
  final bool? isPicupLocationShowCursor;
  const LocationPickerAppbar({
    this.isPicupLocationShowCursor = false,
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LocationPickerAppbarState();
}

class _LocationPickerAppbarState extends ConsumerState<LocationPickerAppbar> {

  // bool _isPickupFinal = true;
  // bool _isPickupTyping = false;
  // bool _isDropTyping = false;
  // bool _isDropFinal = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          elevation: 1,
          backgroundColor: kWhite,
          leading: IconButton(
            icon: const Icon(
              IconlyLight.arrow_left,
              color: kBlack,
            ),
            onPressed: () {
              ref.watch(locationPickerViewModelProvider).pc.close();
              context.pop();
            },
          ),
          toolbarHeight: 40.h,
          title: Text(
            'Destination',
            style: TextStyle(
              color: kBlack,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
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
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                  child: TextFormField(
                    keyboardAppearance: Brightness.light,
                    keyboardType: TextInputType.streetAddress,
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (value) {
                      FocusScope.of(context).requestFocus(
                        ref
                            .watch(locationPickerViewModelProvider)
                            .dropAddinputNode,
                      );
                    },
                    controller: ref
                        .watch(locationPickerViewModelProvider)
                        .pickupAddController,
                    showCursor: true,
                    focusNode: ref
                        .watch(locationPickerViewModelProvider)
                        .pickupAddinputNode,
                    onChanged: (value) {

                      ref.read(locationPickerViewModelProvider).setPickupTyping(true);

                      PlaceSearch()
                          .fetchLocationSuggestions(value)
                          .then((value) {
                        Logger.printError(value.toString());
                        ref
                            .watch(locationPickerViewModelProvider)
                            .setLocationSuggestion(value);
                      });
                    },
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/icons/pickup_pin.png',
                        ),
                      ),
                      hintText: 'Enter Pickup Location',
                      hintStyle: TextStyle(
                        color: kGrey,
                        fontSize: 13.sp,
                      ),
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
                  child: TextFormField(
                    textInputAction: TextInputAction.search,
                    onFieldSubmitted: (value) async {
                      Logger.printSuccess(ref.watch(locationPickerViewModelProvider).isPickupTyping.toString());
                      Logger.printSuccess(ref.watch(locationPickerViewModelProvider).isDropTyping.toString());
                      Logger.printSuccess(ref.watch(locationPickerViewModelProvider).pickupFinal);
                      Logger.printSuccess(ref.watch(locationPickerViewModelProvider).pickupAddController.text);
                      Logger.printSuccess(ref.watch(locationPickerViewModelProvider).dropFinal);
                      Logger.printSuccess(ref.watch(locationPickerViewModelProvider).dropAddController.text);
                      if (ref
                                  .watch(locationPickerViewModelProvider)
                                  .pickupAddController
                                  .text !=
                              '' &&
                          ref
                                  .watch(locationPickerViewModelProvider)
                                  .dropAddController
                                  .text !=
                              '') {
                        // // SET PICKUP COORDINATES
                        final Map<String, dynamic> pickupCoords =
                            await PlaceSearch().getLatLong(ref
                                .read(locationPickerViewModelProvider)
                                .pickupAddController
                                .text,);
                        ref
                            .read(tripProceedViewModelProvider)
                            .setpickupLatLong(pickupCoords);

                        // SET DESTINATION COORDINATES
                        final Map<String, dynamic> destinationCoords =
                            await PlaceSearch().getLatLong(value);
                        ref
                            .read(tripProceedViewModelProvider)
                            .setDestinationLatLong(destinationCoords);

                        ref.watch(splashViewModelProvider).getSavedCards();


                        /// The code is creating an instance of the `SearchRideRequestModel` class
                        /// and initializing its properties.
                        if(pickupCoords.isEmpty) {
                          showDialog(context: context, builder: (context) => AlertDialog(
                            surfaceTintColor:  kWhite,
                            title: const Text("Oops!"),
                            content: const Text("We couldn't find your pickup location on the map. Please try searching again with a valid pickup point."),
                            actions: [
                              TextButton(onPressed: () {
                                context.pop();
                              }, child:  const Text("Ok" , style:  TextStyle(color: primaryColor) ,), ),
                            ],
                          ),);
                        } else if(destinationCoords.isEmpty) {
                          showDialog(context: context, builder: (context) => AlertDialog(
                            surfaceTintColor:  kWhite,
                            title: const Text("Oops!"),
                            content: const Text("We couldn't find your drop location on the map. Please try searching again with a valid drop point."),
                            actions: [
                              TextButton(onPressed: () {
                                context.pop();
                              }, child:  const Text("Ok" , style:  TextStyle(color: primaryColor) ,), ),
                            ],
                          ),);
                        } else if(
                            (!ref.watch(locationPickerViewModelProvider).isPickupTyping && 
                            !ref.watch(locationPickerViewModelProvider).isDropTyping) ||
                            (ref.watch(locationPickerViewModelProvider).dropFinal == ref.watch(locationPickerViewModelProvider).dropAddController.text &&
                            ref.watch(locationPickerViewModelProvider).pickupFinal == ref.watch(locationPickerViewModelProvider).pickupAddController.text)
                          ) {
                          final SearchRideRequestModel searchRideRequestModel =
                            SearchRideRequestModel(
                              pickupLocation: PickupLocation(
                                type: "point",
                                coordinates: [
                                  double.parse(ref
                                      .read(tripProceedViewModelProvider)
                                      .pickupCoords['lng']
                                      .toString(),),
                                  double.parse(ref
                                      .read(tripProceedViewModelProvider)
                                      .pickupCoords['lat']
                                      .toString(),),
                                ],
                                pickupLocationName: ref
                                    .read(locationPickerViewModelProvider)
                                    .pickupAddController
                                    .text,
                              ),
                              destinationLocation: DestinationLocation(
                                type: "point",
                                coordinates: [
                                  double.parse(ref
                                      .read(tripProceedViewModelProvider)
                                      .destinationCoords['lng']
                                      .toString(),),
                                  double.parse(ref
                                      .read(tripProceedViewModelProvider)
                                      .destinationCoords['lat']
                                      .toString(),),
                                ],
                                destinationLocationName: ref
                                    .read(locationPickerViewModelProvider)
                                    .dropAddController
                                    .text,
                              ),
                              pickupDateTime: DateTime.now().toUtc().toString(),
                            );                            

                            await ref
                                .read(locationPickerViewModelProvider)
                                .searchRide(searchRideRequestModel, context).then((value) {

                                  Logger.printError((ref.watch(locationPickerViewModelProvider).searchRideResponseModel.data?.carType?[0].pendingCancellationCharges ?? 0).toString());
                                  navigatetoScreen(context, AppRoute.tripProceedView, ref);

                                  // if((ref.watch(locationPickerViewModelProvider).searchRideResponseModel.data?.carType?[0].pendingCancellationCharges ?? 0) > 0) {
                                  //   showDialog(
                                  //     context: context,
                                  //     builder: (context) {
                                  //       return AlertDialog(
                                  //         backgroundColor: kWhite,
                                  //         shape: RoundedRectangleBorder(
                                  //           borderRadius: BorderRadius.circular(5),
                                  //         ),
                                  //         title: const Text(
                                  //           "Pending Cancellation Charges",
                                  //           style: TextStyle(fontWeight: FontWeight.w600),
                                  //         ),
                                  //         content: SizedBox(
                                  //           // height: 210.h,
                                  //           child: Column(
                                  //             mainAxisSize: MainAxisSize.min,
                                  //             children: [
                                  //               Text(
                                  //                 "You have a pending cancellation charge of €${ref.watch(locationPickerViewModelProvider).searchRideResponseModel.data?.carType?[0].pendingCancellationCharges}.\nIt will be added to this ride",
                                  //                 style: const TextStyle(
                                  //                   color: kBlack,
                                  //                   fontWeight: FontWeight.w400,
                                  //                 ),
                                  //               ),
                                  //               gapH16,
                                  //               CustomButton(
                                  //                 buttonText: "Proceed",
                                  //                 buttonColor: primaryColor,
                                  //                 textColor: kWhite,
                                  //                 ontap: () async {
                                  //                   Navigator.pop(context);
                                  //                   navigatetoScreen(context, AppRoute.tripProceedView, ref);
                                  //                 },
                                  //               ),
                                  //               gapH16,
                                  //               CustomButton(
                                  //                 buttonText: "Cancel",
                                  //                 textColor: primaryColor,
                                  //                 ontap: () async {
                                  //                   Navigator.pop(context);
                                  //                 },
                                  //               ),
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       );
                                  //     },
                                  //   );
                                  // } else {
                                  //   navigatetoScreen(context, AppRoute.tripProceedView, ref);
                                  // }
                                }
                              );
                        } else if(
                            ref.watch(locationPickerViewModelProvider).isDropTyping ||
                            ref.watch(locationPickerViewModelProvider).dropFinal != ref.watch(locationPickerViewModelProvider).dropAddController.text
                          ) {
                          showDialog(context: context, builder: (context) => AlertDialog(
                            surfaceTintColor:  kWhite,
                            title: const Text("Oops!"),
                            content: const Text("Please select a valid drop location from suggestions"),
                            actions: [
                              TextButton(onPressed: () {
                                context.pop();
                              }, child:  const Text("Ok" , style:  TextStyle(color: primaryColor) ,), ),
                            ],
                          ),);
                        } else if(
                            ref.watch(locationPickerViewModelProvider).isPickupTyping || 
                            ref.watch(locationPickerViewModelProvider).pickupFinal != ref.watch(locationPickerViewModelProvider).pickupAddController.text
                          ) {
                          showDialog(context: context, builder: (context) => AlertDialog(
                            surfaceTintColor:  kWhite,
                            title: const Text("Oops!"),
                            content: const Text("Please select a valid pickup location from suggestions or select your current location"),
                            actions: [
                              TextButton(onPressed: () {
                                context.pop();
                              }, child:  const Text("Ok" , style:  TextStyle(color: primaryColor) ,), ),
                            ],
                          ),);
                        }                                              
                   
                      
                      }
                    },
                    keyboardType: TextInputType.streetAddress,
                    showCursor: true,
                    controller: ref
                        .watch(locationPickerViewModelProvider)
                        .dropAddController,
                    focusNode: ref
                        .watch(locationPickerViewModelProvider)
                        .dropAddinputNode,
                    onChanged: (value) {
                      PlaceSearch().fetchLocationSuggestions(value).then(
                            (value) => ref
                                .watch(locationPickerViewModelProvider)
                                .setLocationSuggestion(value),
                          );
                      
                      ref.read(locationPickerViewModelProvider).setDropTyping(true);
                    },
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/icons/destination_pin.png',
                        ),
                      ),
                      hintText: 'Enter Destination',
                      hintStyle: TextStyle(
                        color: kGrey,
                        fontSize: 13.sp,
                      ),
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
      ],
    ).animate().slideY(
          duration: const Duration(milliseconds: 400),
          begin: -5.0,
          end: 0.0,
          curve: Curves.easeInOutQuart,
        );
  }

  void navigatetoScreen(
      BuildContext context, AppRoute appRoute, WidgetRef ref,) {
    context.pushNamed(AppRoute.tripProceedView.name).then((value) {
      Future.delayed(const Duration(milliseconds: 1), () {
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
      });
    });
  }
}

// class LocationPickerAppbar extends ConsumerWidget {
//   final bool? isPicupLocationShowCursor;
//   const LocationPickerAppbar({
//     this.isPicupLocationShowCursor = false,
//     super.key,
//   });

  
// }
