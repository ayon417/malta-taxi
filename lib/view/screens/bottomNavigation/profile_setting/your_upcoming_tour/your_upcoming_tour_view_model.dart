import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:malta_taxi/helpers/base_screen_view.dart';
import 'package:malta_taxi/helpers/base_view_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


final yourUpcomingTourViewModelProvider =
    ChangeNotifierProvider((ref) => YourUpcomingTourViewModel());

class YourUpcomingTourViewModel extends BaseViewModel<BaseScreenView> {
  final RefreshController _yourUpcomingTourRefreshController = RefreshController();
  RefreshController get yourUpcomingTourRefreshController => _yourUpcomingTourRefreshController;

  
}
