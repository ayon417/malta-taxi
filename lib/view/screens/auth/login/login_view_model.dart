import 'dart:developer';

import 'package:malta_taxi/data/remote/auth/auth_repo.dart';
import 'package:malta_taxi/data/remote/auth/models/login_model.dart';
import 'package:malta_taxi/helpers/base_view_model.dart';
import 'package:malta_taxi/providers/repository_provider.dart';
import 'package:malta_taxi/utils/utils.dart';

final loginViewModel = ChangeNotifierProvider(
  (ref) => LoginViewModel(
    ref.read(authRepositoryProvider),
  ),
);

class LoginViewModel extends BaseViewModel<BaseScreenView> {
  final AuthRepo _authRepo;
  LoginViewModel(this._authRepo);

  LoginRequest loginRequest = const LoginRequest();
  LoginResponse? _loginResponse;
  LoginResponse? get loginResponse => _loginResponse;
  bool _isLoginLoading = false;
  bool get isLoginLoading => _isLoginLoading;

  Future<void> login(LoginRequest loginRequest, String phoneNubmer) async {
    _isLoginLoading = true;
    await _authRepo.login(loginRequest).then((value) {
      toggleLoading();
      _isLoginLoading = false;
      notifyListeners();
      value.fold(
        (l) => view!.showSnackbar(l.message),
        (r) {
          _loginResponse = r;
          log("LOGIN RESPONSE WITH OTP ======> $r");
          notifyListeners();
          view!.navigateToScreen(
            AppRoute.otpVerifyView,
            params: {
              "phone": phoneNubmer,
            },
          );
        },
      );
    });
  }

  Future<void> resendOtpCode(LoginRequest loginRequest) async {
    await _authRepo.login(loginRequest).then((value) {
      value.fold(
        (l) => view!.showSnackbar(l.message),
        (r) {
          _loginResponse = r;
          notifyListeners();
        },
      );
    });
  }
}
