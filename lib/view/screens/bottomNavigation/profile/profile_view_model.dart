import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:malta_taxi/data/remote/auth/auth_repo.dart';
import 'package:malta_taxi/helpers/base_screen_view.dart';
import 'package:malta_taxi/helpers/base_view_model.dart';
import 'package:malta_taxi/providers/repository_provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

final profileViewModelProvider =
    ChangeNotifierProvider((ref) => ProfileViewModel(
          ref.read(authRepositoryProvider),
        ),);

class ProfileViewModel extends BaseViewModel<BaseScreenView> {
  final AuthRepo _authRepo;
  ProfileViewModel(this._authRepo);

  final RefreshController _profileRefreshController = RefreshController();
  RefreshController get profileRefreshController => _profileRefreshController;
  Future<void> deleteAccount(String userID) async {
    await _authRepo.deleteAccount(userID).then((value) {
      toggleLoading();
      notifyListeners();
      value.fold(
        (l) => view!.showSnackbar(l.message),
        (r) {
          notifyListeners();
        },
      );
    });
  }
}
