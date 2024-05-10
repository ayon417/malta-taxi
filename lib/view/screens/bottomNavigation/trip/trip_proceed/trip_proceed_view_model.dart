// ignore_for_file: avoid_dynamic_calls

import 'package:dio/dio.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/cashThreshold/cash_threshold_repo_impl.dart';
import 'package:malta_taxi/data/remote/cashThreshold/models/get_cash_threshold_model.dart';
import 'package:malta_taxi/data/remote/proceedRide/models/proceed_ride_model.dart';
import 'package:malta_taxi/data/remote/proceedRide/proceed_ride_repo_impl.dart';
import 'package:malta_taxi/helpers/base_view_model.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

final tripProceedViewModelProvider =
    ChangeNotifierProvider((ref) => TripProceedViewModel(ref: ref));

class TripProceedViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  TripProceedViewModel({required this.ref});

  final ProceedRideRepoImpl _proceedRideRepoImpl = ProceedRideRepoImpl();
  final CashThresholdRepoImpl _cashThresholdRepoImpl = CashThresholdRepoImpl();

  final RefreshController _tripProceedRefreshController = RefreshController();
  RefreshController get tripProceedRefreshController =>
      _tripProceedRefreshController;

  bool _isWheelchairAccess = false;
  bool get isWheelchairAccess => _isWheelchairAccess;
  void setisWheelchairAccess(bool isWheelchairAccess) {
    _isWheelchairAccess = isWheelchairAccess;
    notifyListeners();
  }

  bool _isChildBooster = false;
  bool get isChildBooster => _isChildBooster;
  void setisChildBooster(bool isChildBooster) {
    _isChildBooster = isChildBooster;
    notifyListeners();
  }

  bool _isPetFriendly = false;
  bool get isPetFriendly => _isPetFriendly;
  void setisPetFriendly(bool isPetFriendly) {
    _isPetFriendly = isPetFriendly;
    notifyListeners();
  }

  String? _carId;
  String? get carId => _carId;
  void setCarId(String? id) {
    _carId = id;
    notifyListeners();
  }

  Map<String, dynamic> _pickupCoords = {};
  Map<String, dynamic> get pickupCoords => _pickupCoords;
  void setpickupLatLong(Map<String, dynamic> coords) {
    _pickupCoords = coords;
    notifyListeners();
  }

  Map<String, dynamic> _destinationCoords = {};
  Map<String, dynamic> get destinationCoords => _destinationCoords;
  void setDestinationLatLong(Map<String, dynamic> coords) {
    _destinationCoords = coords;
    notifyListeners();
  }

  bool _tripAllowed = true;
  bool get tripAllowed => _tripAllowed;
  void setTripAllowed(bool flag) {
    _tripAllowed = flag;
    notifyListeners();
  }


  GetCashThresholdResponseModel _getCashThresholdResponseModel = GetCashThresholdResponseModel();
  GetCashThresholdResponseModel get getCashThresholdResponseModel => _getCashThresholdResponseModel;

  // bool _isCashAllowed = false;
  // bool get isCashAllowed => _isCashAllowed;
  // void setIsCashAllowed(bool flag) {
  //   _isCashAllowed = flag;
  //   notifyListeners();
  // }



  void clearAllFilters() {
    _isWheelchairAccess = false;
    _isChildBooster = false;
    _isPetFriendly = false;
    _carId = "";
    notifyListeners();
  }

  ProceedRideResponseModel _proceedRideResponseModel =
      const ProceedRideResponseModel();
  ProceedRideResponseModel get proceedRideResponseModel =>
      _proceedRideResponseModel;

  void setProceedRideResponseModel(ProceedRideResponseModel model) {
    _proceedRideResponseModel = model;
    notifyListeners();
  }

  Future<void> proceedRide(
    ProceedRideRequestModel proceedRideRequestModel,
  ) async {
    toggleLoading();
    _proceedRideRepoImpl.proceedRide(proceedRideRequestModel).then((value) {
      toggleLoading();
      return value.fold((l) {
        Logger.printError(l.toString());
      }, (r) {
        Logger.printSuccess(r.toString());
        _proceedRideResponseModel = r;
        notifyListeners();
      });
    });
  }

  Future<void> cancelRide(
    ProceedRideRequestModel proceedRideRequestModel,
  ) async {
    toggleLoading();
    _proceedRideRepoImpl.proceedRide(proceedRideRequestModel).then((value) {
      toggleLoading();
      return value.fold((l) {
        Logger.printError(l.toString());
      }, (r) {
        Logger.printSuccess(r.toString());
        _proceedRideResponseModel = r;
        notifyListeners();
      });
    });
  }

  String cancelReason = "Plan Changed";
  String get getCancelReason => cancelReason;
  void setCancelReason(String reason) {
    cancelReason = reason;
    notifyListeners();
  }

  Future<String> addNewCard() async {
    try {
      final Response response = await ApiClient()
          .get("${AppConstants.baseUrl}users/ride/payment/save-card");
      Logger.printSuccess(response.data.toString());
      return response.data['data'].toString();
    } catch (e) {
      Logger.printError(e.toString());
      return e.toString();
    }
  }


  Future<void> getCashThreshold() async {
    toggleLoading();
    await _cashThresholdRepoImpl.getCashThreshold().then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _getCashThresholdResponseModel = r;
          notifyListeners();

          Logger.printSuccess(_getCashThresholdResponseModel.toString());
        }
      );
    });
  }

  // trip processed view model clear

}
