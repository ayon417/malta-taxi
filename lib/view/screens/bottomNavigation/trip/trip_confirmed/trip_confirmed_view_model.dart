// ignore_for_file: unused_field

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:malta_taxi/data/remote/checkRideStatus/check_ride_status_repo_impl.dart';
import 'package:malta_taxi/data/remote/checkRideStatus/models/check_ride_status_model.dart';
import 'package:malta_taxi/data/remote/confirmPayment/confirm_payment_repo_impl.dart';
import 'package:malta_taxi/data/remote/confirmPayment/models/change_paymentmethod.dart';
import 'package:malta_taxi/data/remote/getOngoingRide/get_ongoing_ride_repo_impl.dart';
import 'package:malta_taxi/helpers/base_view_model.dart';
import 'package:malta_taxi/services/shared_preference_service.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_proceed/component/trip_proceed_bottombar.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

final tripConfirmedViewModelProvider =
    ChangeNotifierProvider((ref) => TripConfirmedViewModel(ref: ref));

class TripConfirmedViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  TripConfirmedViewModel({required this.ref});

  final CheckRideStatusRepoImpl _checkRideStatusRepoImpl =
      CheckRideStatusRepoImpl();
  final GetOngoingRideRepoImpl _getOngoingRideRepoImpl =
      GetOngoingRideRepoImpl();

  final RefreshController _tripConfirmedRefreshController = RefreshController();
  RefreshController get tripConfirmedRefreshController =>
      _tripConfirmedRefreshController;

  CheckRideStatusResponseModel _checkRideStatusResponseModel =
      const CheckRideStatusResponseModel(code: 0);
  CheckRideStatusResponseModel get checkRideStatusResponseModel =>
      _checkRideStatusResponseModel;

  String _rideId = "";
  String get rideId => _rideId;

  bool _singleCancel = false;
  bool get singleCancel => _singleCancel;

  int _time = 0;

  // GetOngoingRideResponseModel _getOngoingRideResponseModel =
  //     const GetOngoingRideResponseModel();
  // GetOngoingRideResponseModel get getOngoingRideResponseModel =>
  //     _getOngoingRideResponseModel;

  Timer _checkRideStatusTimer = Timer(Duration.zero, () {});
  Timer get checkRideStatusTimer => _checkRideStatusTimer;

  void clearResponseModels() {
    _checkRideStatusResponseModel = const CheckRideStatusResponseModel();
    // _getOngoingRideResponseModel = const GetOngoingRideResponseModel();
    notifyListeners();
  }

  void stopCheckRideStatusTimer() {
    _checkRideStatusTimer.cancel();
    notifyListeners();
  }

  void setRideId(String data) {
    _rideId = data;
    notifyListeners();
  }

  void clearRideId() {
    _rideId = "";
    notifyListeners();
  }

  void toggleSingleCancel() {
    _singleCancel = !_singleCancel;
    notifyListeners();
  }

  Future<void> checkRideStatus(BuildContext context, {bool isHomePage = false}) async {
    // toggleLoading();
    _checkRideStatusTimer = Timer.periodic(const Duration(seconds: 1), (timer) {

      Logger.printWarning("timer ===> $_time");

      if(_time == 300) {
        _time = 0;
        _checkRideStatusTimer.cancel();
        notifyListeners();

        showDialog(context: context, builder: (context) => AlertDialog(
          surfaceTintColor:  kWhite,
          title: const Text("Apologies!"),
          content: const Text("We couldn't find any driver nearby :(\nPlease try again after a few minutes"),
          actions: [
            TextButton(onPressed: () {
              context.pop();
              context.pop();
            }, child:  const Text("Ok" , style:  TextStyle(color: primaryColor) ,), ),
          ],
        ),);
      } else {
        _time++;
        notifyListeners();
      }

      if (_checkRideStatusResponseModel.code == 0) {
        _checkRideStatusRepoImpl.checkRideStatus().then((value) {
          return value.fold((l) {
            Logger.printError(l.message);
          }, (r) {
            _checkRideStatusResponseModel = r;
            _rideId = r.data?.rideId ?? "";
            Logger.printSuccess(_rideId);
            notifyListeners();
          });
        });
      } else {
        if ((_checkRideStatusResponseModel.data?.rideStatus ?? "") ==  "booked") {
          _checkRideStatusTimer.cancel();
          _time = 0;
          // toggleLoading();
          // ref.watch(tripProceedViewModelProvider).setTripAllowed(false);
          // getOngoingRide(context, GetOngoingRideRequestModel(rideId: _checkRideStatusResponseModel.data?.rideId ?? ""));
          getOngoingRide(context, _checkRideStatusResponseModel.data?.rideId ?? "");
          context.pushNamed(AppRoute.tripConfirmedView.name);
        }
        // if ((_checkRideStatusResponseModel.data?.rideStatus ?? "") == "notFound") {
        //   timer.cancel();
        //   toggleLoading();
        //    context.canPop();
        //    _checkRideStatusResponseModel = const CheckRideStatusResponseModel();
        //   notifyListeners();
        // }  
        else {

          /// [DOCS FOR AYUSH]
          /// The code block is checking if the `isHomePage` flag is false. If it is false, it calls the
          /// `checkRideStatus()` method from the `_checkRideStatusRepoImpl` object. This method is
          /// responsible for checking the status of a ride but will stop the timer if the user is in home page as
          /// it signifies that the user is not in any ongoing ride.
          _checkRideStatusRepoImpl.checkRideStatus().then((value) {
            return value.fold((l) {
              Logger.printError(l.message);
            }, (r) {
              _checkRideStatusResponseModel = r;
              _rideId = r.data?.rideId ?? "";
              Logger.printSuccess(_rideId);
              notifyListeners();
            });
          });

          if(isHomePage) {
            _checkRideStatusTimer.cancel();
            notifyListeners();
          }
        }
      }
    });
  }

  Future<void> getOngoingRide(BuildContext context, String? rideStatus) async {
    // toggleLoading();
    if ((rideStatus ?? "") ==  "notFound" &&  loading == true) {
      // toggleLoading();
      // timer.cancel();
    } else if ((rideStatus ?? "") ==  "accepted" && loading == true) {
      // toggleLoading();
    } else if ((rideStatus ?? "") == "reachedDestination" &&  loading == true) {
      // toggleLoading();
    } else if ((rideStatus ?? "") == "started" &&  loading == true) {
      // toggleLoading();
    } else if ((rideStatus ?? "") ==  "completed" ||  (rideStatus ?? "") ==  "pendingPayment") {
      // timer.cancel();
      context.goNamed(AppRoute.tripCompletedView.name);
    } else if ((rideStatus ?? "") ==  "cancelled") {
          // timer.cancel();
        showModalBottomSheet(
          isDismissible: false,
          context: context,
          builder: (context) => const CancelBottomSheet(),
        );
      } else {
      
      // if ((_getOngoingRideResponseModel.data?.rideStatus ?? "") ==  "cancelled") {
      //     timer.cancel();
      //     showModalBottomSheet(
      //     isDismissible: false,
      //     context: context,
      //     builder: (context) => const CancelBottomSheet(),
      //   );
      // }
      // _getOngoingRideRepoImpl
      //     .getOngoingRide(getOngoingRideRequestModel)
      //     .then((value) {
      //   return value.fold((l) {
      //     Logger.printError(l.message);
      //   }, (r) {
      //     _getOngoingRideResponseModel = r;
      //     notifyListeners();
      //   });
      // });
    }
    // toggleLoading();    
    // ref.read(locationPickerViewModelProvider).dropAddController.clear();
    // ref.read(locationPickerViewModelProvider).pickupAddController.clear();
    // Timer.periodic(const Duration(seconds: 2), (timer) {
    //   if (_getOngoingRideResponseModel.code == 0) {
    //     _getOngoingRideRepoImpl
    //         .getOngoingRide(getOngoingRideRequestModel)
    //         .then((value) {
    //       return value.fold((l) {
    //         Logger.printError(l.message);
    //       }, (r) {
    //         _getOngoingRideResponseModel = r;
    //         notifyListeners();
    //       });
    //     });
    //   } else {
    //     if ((_getOngoingRideResponseModel.data?.rideStatus ?? "") ==  "notFound" &&  loading == true) {
    //       toggleLoading();
    //       timer.cancel();
    //     } else if ((_getOngoingRideResponseModel.data?.rideStatus ?? "") ==  "accepted" && loading == true) {
    //       toggleLoading();
    //     } else if ((_getOngoingRideResponseModel.data?.rideStatus ?? "") == "reachedDestination" &&  loading == true) {
    //       toggleLoading();
    //     } else if ((_getOngoingRideResponseModel.data?.rideStatus ?? "") == "started" &&  loading == true) {
    //       toggleLoading();
    //     } else if ((_getOngoingRideResponseModel.data?.rideStatus ?? "") ==  "completed" ||  (_getOngoingRideResponseModel.data?.rideStatus ?? "") ==  "pendingPayment") {
    //       timer.cancel();
    //       context.goNamed(AppRoute.tripCompletedView.name);
    //     } else if ((_getOngoingRideResponseModel.data?.rideStatus ?? "") ==  "cancelled") {
    //           timer.cancel();
    //           showModalBottomSheet(
    //           isDismissible: false,
    //           context: context,
    //           builder: (context) => const CancelBottomSheet(),
    //         );
    //       } else {
          
    //       // if ((_getOngoingRideResponseModel.data?.rideStatus ?? "") ==  "cancelled") {
    //       //     timer.cancel();
    //       //     showModalBottomSheet(
    //       //     isDismissible: false,
    //       //     context: context,
    //       //     builder: (context) => const CancelBottomSheet(),
    //       //   );
    //       // }
    //       _getOngoingRideRepoImpl
    //           .getOngoingRide(getOngoingRideRequestModel)
    //           .then((value) {
    //         return value.fold((l) {
    //           Logger.printError(l.message);
    //         }, (r) {
    //           _getOngoingRideResponseModel = r;
    //           notifyListeners();
    //         });
    //       });
    //     }
    //   }
    // });
  }

  final ConfirmPaymentRepoImpl _confirmPaymentRepoImpl =
      ConfirmPaymentRepoImpl();
  ChangePaymentMethodRes _changePaymentMethodRes =
      const ChangePaymentMethodRes();
  ChangePaymentMethodRes get changePaymentMethodRes => _changePaymentMethodRes;

// chnage payment method
  Future<void> changePaymentMethod(BuildContext context,
      ChangePaymentMethodReq changePaymentMethodReq,) async {
    Logger.printSuccess(changePaymentMethodReq.toString());
    _confirmPaymentRepoImpl
        .changePaymentMethod(changePaymentMethodReq)
        .then((value) {
      return value.fold((l) {
        Logger.printError(l.message);
      }, (r) {
        _changePaymentMethodRes = r;
        notifyListeners();
        // Fluttertoast.showToast(msg: "Payment method changed successfully");
      });
    });
  }

  Future<void> savePaymentOption(int i) async {
    SharedPreferenceService.setInt("paymentoption", i);
  }

  Future<int> getPaymentOption() async {
    final int? val = SharedPreferenceService.getInt("paymentoption");
    Logger.printSuccess("Payment option ====> $val");
    return val ?? 0;
  }
}
