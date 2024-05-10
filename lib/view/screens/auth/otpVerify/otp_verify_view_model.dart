import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/auth/auth_repo.dart';
import 'package:malta_taxi/data/remote/auth/models/otp_verification_model.dart';
import 'package:malta_taxi/helpers/base_view_model.dart';
import 'package:malta_taxi/providers/repository_provider.dart';
import 'package:malta_taxi/services/shared_preference_service.dart';
import 'package:malta_taxi/utils/utils.dart';

final otpVerifyViewModel = ChangeNotifierProvider(
  (ref) => OtpVerifyViewModel(
    ref.read(authRepositoryProvider),
  ),
);

class OtpVerifyViewModel extends BaseViewModel<BaseScreenView> {
  final AuthRepo _authRepo;
  OtpVerifyViewModel(this._authRepo);
  OtpVerificationRequest otpVerificationRequest =
      const OtpVerificationRequest();
  OtpVerificationResponse? _otpVerificationResponse;
  OtpVerificationResponse? get otpVerificationResponse =>
      _otpVerificationResponse;
  bool _isOtpLoading = false;
  bool get isOtpLoading => _isOtpLoading;

  Future<void> verifyOtp(OtpVerificationRequest otpVerificationRequest) async {
    _isOtpLoading = true;
    notifyListeners();
    await _authRepo.verifyOtp(otpVerificationRequest).then((response) {
      toggleLoading();
      response.fold(
        (l) {
          Logger.write(l.toString());
          view!.showSnackbar(l.message);
          _isOtpLoading = false;
          notifyListeners();
        },
        (r) {
          _otpVerificationResponse = r;
          SharedPreferenceService.setString(
            "token",
            _otpVerificationResponse?.accessToken ?? "",
          );
          SharedPreferenceService.setString(
            "uid",
            _otpVerificationResponse?.data?.id ?? "",
          );
          AppConstants.token = _otpVerificationResponse!.accessToken ?? "";
          AppConstants.userId = _otpVerificationResponse!.data!.id ?? "";
          _otpVerificationResponse?.data?.isNewUser ?? false
              ? view!.navigateToScreen(AppRoute.basicDetailView)
              : Future.delayed(const Duration(seconds: 3),(){ view!.navigateToScreen(AppRoute.bottomNavigationView);  _isOtpLoading = false;});
        
          notifyListeners();
        },
      );
      notifyListeners();
    });
  }
}
