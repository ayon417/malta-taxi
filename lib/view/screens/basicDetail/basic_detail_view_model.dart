import 'package:malta_taxi/data/remote/auth/auth_repo.dart';
import 'package:malta_taxi/data/remote/auth/models/update_user_model.dart';
import 'package:malta_taxi/helpers/base_view_model.dart';
import 'package:malta_taxi/providers/repository_provider.dart';
import 'package:malta_taxi/utils/utils.dart';

final basicUserDetailsViewModel = ChangeNotifierProvider(
  (ref) => BasicUserDetailsViewModel(
    ref.read(authRepositoryProvider),
  ),
);

class BasicUserDetailsViewModel extends BaseViewModel<BaseScreenView> {
  final AuthRepo _authRepo;
  BasicUserDetailsViewModel(this._authRepo);
  late UpdateUserRequest updateUserRequest;
  UpdateUserResponse? _updateUserResponse;
  UpdateUserResponse? get updateUserResponse => _updateUserResponse;
  bool _isLoding = false;
  bool get isLoding => _isLoding;

  Future<void> updateUserDetails(UpdateUserRequest updateUserRequest) async {
    _isLoding = true;
    await _authRepo.updateUserDetails(updateUserRequest).then((value) {
      toggleLoading();
      _isLoding = false;
      notifyListeners();
      value.fold(
        (l) => view!.showSnackbar(l.message),
        (r) {
          _updateUserResponse = r;
          notifyListeners();
          view!.navigateToScreen(
            AppRoute.locationEnableView,
          );
        },
      );
    });
  }
}
