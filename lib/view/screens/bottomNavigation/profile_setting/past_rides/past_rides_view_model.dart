import 'package:malta_taxi/data/remote/pastRides/models/past_rides_model.dart';
import 'package:malta_taxi/data/remote/pastRides/past_rides_repo_impl.dart';
import 'package:malta_taxi/helpers/base_view_model.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


final pastRidesViewModelProvider =
    ChangeNotifierProvider((ref) => PastRidesViewModel(ref: ref));

class PastRidesViewModel extends BaseViewModel<BaseScreenView> {

  Ref ref;
  PastRidesViewModel({required this.ref});

  final PastRidesRepoImpl _pastRidesRepoImpl = PastRidesRepoImpl();

  final RefreshController _pastRidesRefreshController = RefreshController();
  RefreshController get pastRidesRefreshController => _pastRidesRefreshController;

  PastRidesResponseModel _pastRidesResponseModel = const PastRidesResponseModel();
  PastRidesResponseModel get pastRidesResponseModel => _pastRidesResponseModel;

  Future<void> getPastRides() async {
    toggleLoading();
    _pastRidesRepoImpl.getPastRides().then((value) {
      toggleLoading();
      return value.fold(
        (l) {
          Logger.printError(l.message);
        }, 
        (r) {
          _pastRidesResponseModel = r;
          notifyListeners();

          Logger.printSuccess(r.toString());
        }
      );
    });
  }

}
