import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_completed/trip_completed_view_model.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_confirmed/trip_confirmed_view_model.dart';

class TripCompletedPanel extends ConsumerStatefulWidget {
  final ScrollController sc;
  const TripCompletedPanel({super.key, required this.sc});

  @override
  ConsumerState<TripCompletedPanel> createState() => _TripCompletedPanelState();
}

class _TripCompletedPanelState extends ConsumerState<TripCompletedPanel> {    

  Future<void> getPaymentStatus(context) async {
    final DocumentSnapshot<Map<String, dynamic>> querySnapshot = await FirebaseFirestore.instance.collection("collection").doc(ref.watch(tripConfirmedViewModelProvider).rideId).get();
    if((querySnapshot.data()?['rideStatus'] ?? "") == "completed" && (querySnapshot.data()?['isPayment'] ?? false) == false) {
      await showDialog(context: context, builder: (context) => AlertDialog(
        surfaceTintColor:  kWhite,
        title: const Text("Oops!"),
        content: const Text("Your payment has been turned into cash mode due to payment failure. Please pay the driver with cash. Sorry for the inconvenience."),
        actions: [
          TextButton(onPressed: () {
            context.pop();
          }, child:  const Text("Ok" , style:  TextStyle(color: primaryColor) ,),),
        ],
      ),);
    }
  }

  @override
  void initState() {
    // getPaymentStatus(context);
    super.initState();
    ref.read(tripConfirmedViewModelProvider).savePaymentOption(1);
  }

  @override
  Widget build(BuildContext context) {
    final tripCompletedViewModel = ref.watch(tripCompletedViewModelProvider);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
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
      // child: !_isPaymentFailed ?
      //         showDialog(context: context, builder: (context) => AlertDialog(
      //           surfaceTintColor:  kWhite,
      //           title: const Text("Oops!"),
      //           content: const Text("Your payment has been turned into cash mode due to payment failure. Please pay the driver with cash. Sorry for the inconvenience."),
      //           actions: [
      //             TextButton(onPressed: () {
      //               context.pop();
      //             }, child:  const Text("Ok" , style:  TextStyle(color: primaryColor) ,),),
      //           ],
      //         ),)
      //       }
      child: SizedBox(
        child: tripCompletedViewModel.paymentDetailsLoading
        ? const Center(child: CircularProgressIndicator(color: primaryColor,),) 
        : SingleChildScrollView(
          controller: widget.sc,
          child: Column(
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
              gapH24,
              Align(
                child: Text(
                  "Your ride is completed",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: kBlack,
                  ),
                ),
              ),
              gapH10,
              Align(
                child: Text(
                  "€${tripCompletedViewModel.paymentDetailsResponseModel.data?.totalPrice.toString() ?? "N/A"}",
                  style: TextStyle(
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w600,
                    color: kBlack,
                  ),
                ),
              ),
              gapH20,
              const Divider(
                color: Color(0XffF3F3F3),
              ),
              gapH16,
              PaddedColumn(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Duration",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: kGrey,
                            ),
                          ),
                          Text(
                            (tripCompletedViewModel.paymentDetailsResponseModel.data?.duration?[0] ?? '') != "-"
                              ? tripCompletedViewModel.paymentDetailsResponseModel.data?.duration ?? "N/A"
                              : "N/A",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0Xff555555),
                            ),
                          ),
                        ],
                      ),
                      gapW32,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Distance",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: kGrey,
                            ),
                          ),
                          Text(
                            tripCompletedViewModel.paymentDetailsResponseModel.data?.distance ?? "N/A",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0Xff555555),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  gapH32,
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
                            "Invoice",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        ListTile(
                          dense: true,
                          visualDensity: VisualDensity.compact,
                          title: Text(
                            "Base fair",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: kGrey,
                            ),
                          ),
                          trailing: Text(
                            "€${tripCompletedViewModel.paymentDetailsResponseModel.data?.baseFair.toString() ?? "0"}",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: kGrey,
                            ),
                          ),
                        ),
                        ListTile(
                          visualDensity: VisualDensity.compact,
                          dense: true,
                          title: Text(
                            "TAX",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: kGrey,
                            ),
                          ),
                          trailing: Text(
                            tripCompletedViewModel.paymentDetailsResponseModel.data?.tax.toString() == ""
                              ? "€0"
                              : "€${tripCompletedViewModel.paymentDetailsResponseModel.data?.tax.toString() ?? "0"}",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: kGrey,
                            ),
                          ),
                        ),
                        ListTile(
                          dense: true,
                          visualDensity: VisualDensity.compact,
                          title: Text(
                            "Surcharge",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: kGrey,
                            ),
                          ),
                          trailing: Text(
                            "€${tripCompletedViewModel.paymentDetailsResponseModel.data?.surcharge.toString() ?? "0"}",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: kGrey,
                            ),
                          ),
                        ),
                        ListTile(
                          visualDensity: VisualDensity.compact,
                          dense: true,
                          title: Text(
                            "Waiting Time",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: kGrey,
                            ),
                          ),
                          trailing: Text(
                            tripCompletedViewModel.paymentDetailsResponseModel.data?.waitingTime.toString() == ""
                              ? "0:00"
                              : tripCompletedViewModel.paymentDetailsResponseModel.data?.waitingTime.toString() ?? "0",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: kGrey,
                            ),
                          ),
                        ),
                        gapH6,
                        Visibility(
                          visible: (tripCompletedViewModel.paymentDetailsResponseModel.data?.cancellationAmount ?? 0) > 0,
                          child: Column(
                            children: [
                              ListTile(
                                visualDensity: VisualDensity.compact,
                                dense: true,
                                title: Text(
                                  "Previous Cancellation charges",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: kGrey,
                                  ),
                                ),
                                trailing: Text(
                                  "€${tripCompletedViewModel.paymentDetailsResponseModel.data?.cancellationAmount ?? 0}",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: kGrey,
                                  ),
                                ),
                              ),
                              gapH6,
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  // gapH20,
                  // DecoratedBox(
                  //   decoration: BoxDecoration(
                  //     color: kWhite,
                  //     borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.grey.withOpacity(0.3),
                  //         spreadRadius: 0.5,
                  //         blurRadius: 7,
                  //         offset: const Offset(
                  //           0,
                  //           2,
                  //         ), // changes position of shadow
                  //       ),
                  //     ],
                  //   ),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       ListTile(
                  //         dense: true,
                  //         visualDensity: VisualDensity.compact,
                  //         title: Text(
                  //           "Pay With",
                  //           style: TextStyle(
                  //             fontSize: 12.sp,
                  //             fontWeight: FontWeight.w600,
                  //           ),
                  //         ),
                  //         trailing: Text(
                  //           "€${ref.watch(tripConfirmedViewModelProvider).getOngoingRideResponseModel.data?.price.toString() ?? "0"}",
                  //           style: TextStyle(
                  //             fontSize: 12.sp,
                  //             fontWeight: FontWeight.w600,
                  //           ),
                  //         ),
                  //       ),
                  //       ListTile(
                  //         contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                  //         dense: true,
                  //         visualDensity: VisualDensity.compact,
                  //         minVerticalPadding: 0,
                  //         leading: Image.asset(
                  //           "assets/icons/wallet.png",
                  //           height: 20.h,          
                  //           color: Colors.grey,    
                  //           colorBlendMode: BlendMode.color,            
                  //         ),
                  //         title: Text(
                  //           LocaleKeys.wallet.tr(),
                  //           style: TextStyle(
                  //             fontSize: 12.sp,
                  //             fontWeight: FontWeight.w600,
                  //             color: kGrey,
                  //           ),
                  //         ),
                  //         subtitle: Text(
                  //           "Available Balance :€0",
                  //           style: TextStyle(
                  //             fontSize: 10.sp,
                  //             fontWeight: FontWeight.w500,
                  //             color: kGrey,
                  //           ),
                  //         ),
                  //         trailing: Radio(
                  //           fillColor: MaterialStateProperty.all<Color>(
                  //             kGrey,
                  //           ),
                  //           value: 0,
                  //           groupValue: 1,
                  //           onChanged: (value) {},
                  //         ),
                  //       ),
                  //       ListTile(
                  //         contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                  //         visualDensity: VisualDensity.compact,
                  //         dense: true,
                  //         leading: Image.asset(
                  //           "assets/icons/card.png",
                  //           height: 20.h,
                  //         ),
                  //         title: GestureDetector(
                  //           onTap: () {
                  //             // showCardSelectorDialogBox();
                  //           },
                  //           child: Row(
                  //             children: [
                  //               Text(
                  //                 LocaleKeys.card.tr(),
                  //                 style: TextStyle(
                  //                   fontSize: 12.sp,
                  //                   fontWeight: FontWeight.w600,
                  //                 ),
                  //               ),
                  //               Text(
                  //                 "  xx-${ref.watch(splashViewModelProvider).getSavedCardsModel.savedPaymentMethod?[0].card?.last4 ?? 0000}",
                  //                 style: TextStyle(
                  //                   fontSize: 12.sp,
                  //                   fontWeight: FontWeight.w600,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         subtitle: Text(
                  //           "Will be deducted from your selected card",
                  //           style: TextStyle(
                  //             fontSize: 10.sp,
                  //             fontWeight: FontWeight.w500,
                  //           ),
                  //         ),
                  //         trailing: Radio(
                  //           fillColor: MaterialStateProperty.all<Color>(
                  //             primaryColor,
                  //           ),
                  //           value: 0,
                  //           groupValue: 0,
                  //           onChanged: (value) {},
                  //         ),
                  //       ),
                  //       ListTile(
                  //         contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                  //         visualDensity: VisualDensity.compact,
                  //         dense: true,
                  //         leading: Image.asset(
                  //           "assets/icons/cash.png",
                  //           height: 20.h,
                  //         ),
                  //         title: Text(
                  //           LocaleKeys.cash.tr(),
                  //           style: TextStyle(
                  //             fontSize: 12.sp,
                  //             fontWeight: FontWeight.w600,
                  //             color: kGrey,
                  //           ),
                  //         ),
                  //         subtitle: Text(
                  //           "Give cash after the ride",
                  //           style: TextStyle(
                  //             fontSize: 10.sp,
                  //             fontWeight: FontWeight.w500,
                  //             color: kGrey,
                  //           ),
                  //         ),
                  //         trailing: Radio(
                  //           fillColor: MaterialStateProperty.all<Color>(
                  //             kGrey,
                  //           ),
                  //           value: 0,
                  //           groupValue: 1,
                  //           onChanged: (value) {},
                  //         ),
                  //       ),
                  //       gapH6,
                  //     ],
                  //   ),
                  // ),
              
                ],
              ),
              gapH20,
            ],
          ),
        ),
      ),
    );
  }


  // Future<void> showCardSelectorDialogBox() async {
  //   int groupValue = 0;
  //   return showDialog(
  //     context: context,
  //     builder: (context) {
  //       return SizedBox(
  //         height: 300,
  //         width: 200,
  //         child: AlertDialog(
  //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  //           title: const Text("Select your card", style: TextStyle(color: kBlack, fontWeight: FontWeight.bold),),
  //           content: ListView.builder(
  //             shrinkWrap: true,
  //             itemCount: ref.read(splashViewModelProvider).getSavedCardsModel.savedPaymentMethod?.length ?? 0,
  //             itemBuilder: (context, index) {
  //               return ListTile(
  //                 contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
  //                 visualDensity: VisualDensity.compact,
  //                 dense: true,
  //                 leading: Image.asset(
  //                   "assets/icons/card.png",
  //                   height: 20.h,
  //                 ),
  //                 title: Row(
  //                   children: [
  //                     Text(
  //                       LocaleKeys.card.tr(),
  //                       style: TextStyle(
  //                         fontSize: 12.sp,
  //                         fontWeight: FontWeight.w600,
  //                       ),
  //                     ),
  //                     Text(
  //                       "  xx-${ref.watch(splashViewModelProvider).getSavedCardsModel.savedPaymentMethod?.card?.last4 ?? 0000}",
  //                       style: TextStyle(
  //                         fontSize: 12.sp,
  //                         fontWeight: FontWeight.w600,
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //                 trailing: Radio(
  //                   fillColor: MaterialStateProperty.all<Color>(
  //                     primaryColor,
  //                   ),
  //                   value: 0,
  //                   groupValue: groupValue,
  //                   onChanged: (value) {
  //                     setState(() {
  //                       groupValue = value!;
  //                     });
  //                   },
  //                 ),
  //               );
  //             },            
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
}
