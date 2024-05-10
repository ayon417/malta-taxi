import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:malta_taxi/helpers/base_screen_view.dart';
import 'package:malta_taxi/helpers/base_view_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


final locationEnableViewModelProvider =
    ChangeNotifierProvider((ref) => LocationEnableViewModel());

class LocationEnableViewModel extends BaseViewModel<BaseScreenView> {
  final RefreshController _locationEnableRefreshController = RefreshController();
  RefreshController get locationEnableRefreshController => _locationEnableRefreshController;

  
}
