import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:malta_taxi/helpers/base_screen_view.dart';
import 'package:malta_taxi/helpers/base_view_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


final privacyPolicyViewModelProvider =
    ChangeNotifierProvider((ref) => PrivacyPolicyViewModel());

class PrivacyPolicyViewModel extends BaseViewModel<BaseScreenView> {
  final RefreshController _privacyPolicyRefreshController = RefreshController();
  RefreshController get privacyPolicyRefreshController => _privacyPolicyRefreshController;

  
}
