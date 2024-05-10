import 'package:malta_taxi/data/remote/cancel_ride/cancel_ride_repo_impl.dart';
import 'package:malta_taxi/data/remote/cancel_ride/model/cancel_ride_amount_model.dart';
import 'package:malta_taxi/data/remote/cancel_ride/model/cancel_ride_model.dart';
import 'package:malta_taxi/helpers/base_view_model.dart';
import 'package:malta_taxi/utils/utils.dart';

final tripCancelViewModelViewModelProvider =
    ChangeNotifierProvider((ref) => TripCancelViewModel(ref: ref));

class TripCancelViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  TripCancelViewModel({required this.ref});
  final CancelRideRepoImpl _cancelRideRepoImpl = CancelRideRepoImpl();
  CancelRideResponse _cancelRideResponseModel = const CancelRideResponse();
  CancelRideResponse get cancelRideResponseModel => _cancelRideResponseModel;

  Future<void> cancelRide(CancelRideRequest cancelRideRequest) async {
    toggleLoading();
    _cancelRideRepoImpl.cancelRide(cancelRideRequest).then((value) {
      return value.fold((l) {
        Logger.printError(l.toString());
      }, (r) {
        Logger.printSuccess(r.toString());
        _cancelRideResponseModel = r;
        notifyListeners();
      });
    });
  }

  CancelRideAmountModelRes _cancelRideAmountModelRes = const CancelRideAmountModelRes();
  CancelRideAmountModelRes get cancelRideAmountModelRes => _cancelRideAmountModelRes;


  Future<void> cancelRideAmount(CancelRideAmountModelRer cancelRideAmountModelReq,) async {
    toggleLoading();
    _cancelRideRepoImpl.cancelRideAmount(cancelRideAmountModelReq).then((value) {
      return value.fold((l) {
        Logger.printError(l.toString());
      }, (r) {
        Logger.printSuccess(r.toString());
        _cancelRideAmountModelRes = r;
        notifyListeners();
      });
    });
  }

  void clearData() {
    _cancelRideAmountModelRes = const CancelRideAmountModelRes();
    _cancelRideResponseModel = const CancelRideResponse();
    notifyListeners();
  }
}
