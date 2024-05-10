// ignore_for_file: avoid_positional_boolean_parameters

import 'package:flutter/services.dart' show rootBundle;
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/auth/auth_repo.dart';
import 'package:malta_taxi/data/remote/auth/auth_repo_impl.dart';
import 'package:malta_taxi/data/remote/auth/models/user_details_model.dart';
import 'package:malta_taxi/data/remote/getSavedCards/get_saved_cards_repo_impl.dart';
import 'package:malta_taxi/data/remote/getSavedCards/models/get_saved_cards_model.dart';
import 'package:malta_taxi/helpers/base_view_model.dart';
import 'package:malta_taxi/utils/utils.dart';

final splashViewModelProvider = ChangeNotifierProvider(
  (ref) => SplashViewModel(ref: ref),
);

class SplashViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  SplashViewModel({required this.ref});

  final GetSavedCardsRepoImpl _getSavedCardsRepoImpl = GetSavedCardsRepoImpl();
  final AuthRepo _authRepo = AuthRepoImpl(ApiClient());

  UserDetailsResponse? _userDetailsResponse;
  UserDetailsResponse? get userDetailsResponse => _userDetailsResponse;

  GetSavedCardsModel _getSavedCardsModel = const GetSavedCardsModel();
  GetSavedCardsModel get getSavedCardsModel => _getSavedCardsModel;

  bool _isCardSkipped = false;
  bool get isCardSkipped => _isCardSkipped;



  void changeIsCardSkippedFlag(bool val) {
    _isCardSkipped = val;
    notifyListeners();
  }



  Future getUserDetails({bool? shouldNavigate = true}) async {
    await _authRepo.userdetails().then(
          (value) => value.fold(
            (l) {
              view!.navigateToScreen(AppRoute.loginView);
            },
            (r) {
              Logger.printSuccess("user details =====> $r");
              _userDetailsResponse = r;
              if (shouldNavigate ?? true) {
                _userDetailsResponse!.data!.isNewUser!
                    ? view!.navigateToScreen(AppRoute.basicDetailView)
                    : Future.delayed(const Duration(seconds: 2),()=> view!.navigateToScreen(AppRoute.bottomNavigationView));
              }
              notifyListeners();
            },
          ),
        );
  }

  Future<void> getSavedCards() async {
    toggleLoading();
    _getSavedCardsRepoImpl.getSavedCards().then((value) {
      toggleLoading();
      return value.fold((l) => Logger.printError(l.message), (r) {
        _getSavedCardsModel = r;
        Logger.printSuccess(r.toString());
        notifyListeners();
      });
    });
  }

  // load map style
  String _mapStyle = '';
  String get mapStyle => _mapStyle;
  loadCustomMapStyle() async {
    _mapStyle = await rootBundle.loadString('assets/maps/maps.json');
    notifyListeners();
  }
}
