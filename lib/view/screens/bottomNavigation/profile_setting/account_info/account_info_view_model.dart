import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/auth/auth_repo_impl.dart';
import 'package:malta_taxi/data/remote/auth/models/update_user_model.dart';
import 'package:malta_taxi/helpers/base_view_model.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/splash/splash_view_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

final accountInfoViewModelProvider =
    ChangeNotifierProvider((ref) => AccountInfoViewModel(ref: ref));

class AccountInfoViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  AccountInfoViewModel({required this.ref});

  final AuthRepoImpl _authRepoImpl = AuthRepoImpl(ApiClient());

  final RefreshController _accountInfoRefreshController = RefreshController();
  RefreshController get accountInfoRefreshController =>
      _accountInfoRefreshController;

  Future<void> updateUserDetails(
    BuildContext context,
    UpdateUserRequest updateUserRequest,
  ) async {
    toggleLoading();
    _authRepoImpl.updateUserDetails(updateUserRequest).then((value) {
      toggleLoading();
      return value.fold((l) {
        Logger.printError(l.message);
      }, (r) {
        Logger.printSuccess(r.message);
        Fluttertoast.showToast(
          msg: r.message,
        );
        ref.read(splashViewModelProvider).getUserDetails(shouldNavigate: false);
      });
    });
  }
}
