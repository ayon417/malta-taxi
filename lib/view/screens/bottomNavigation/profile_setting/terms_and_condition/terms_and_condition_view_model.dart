import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:malta_taxi/helpers/base_screen_view.dart';
import 'package:malta_taxi/helpers/base_view_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


final termsAndConditionViewModelProvider =
    ChangeNotifierProvider((ref) => TermsAndConditionViewModel());

class TermsAndConditionViewModel extends BaseViewModel<BaseScreenView> {
  final RefreshController _termsAndConditionRefreshController = RefreshController();
  RefreshController get termsAndConditionRefreshController => _termsAndConditionRefreshController;

  
}
