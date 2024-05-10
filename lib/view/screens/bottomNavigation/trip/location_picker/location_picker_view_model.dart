import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:malta_taxi/data/remote/searchRide/models/popular_destination_model.dart';
import 'package:malta_taxi/data/remote/searchRide/models/search_ride_model.dart';
import 'package:malta_taxi/data/remote/searchRide/search_ride_repo_impl.dart';
import 'package:malta_taxi/helpers/base_view_model.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

final locationPickerViewModelProvider =
    ChangeNotifierProvider((ref) => LocationPickerViewModel(ref: ref));

class LocationPickerViewModel extends BaseViewModel {
  Ref ref;
  LocationPickerViewModel({required this.ref});

  final SearchRideRepoImpl _searchRideRepoImpl = SearchRideRepoImpl();

  final FocusNode _pickupAddinputNode = FocusNode();
  FocusNode get pickupAddinputNode => _pickupAddinputNode;
  final FocusNode _dropAddinputNode = FocusNode();
  FocusNode get dropAddinputNode => _dropAddinputNode;
  final PanelController _pc = PanelController();
  PanelController get pc => _pc;
  final TextEditingController pickupAddController = TextEditingController();
  final TextEditingController dropAddController = TextEditingController();
  bool _isPickupLocationShowCursor = false;
  bool get isPickupLocationShowCursor => _isPickupLocationShowCursor;
  bool _isPickupTyping = false;
  bool _isDropTyping = true;
  String _pickupFinal = "";  
  String _dropFinal = "";  



  void setisPickupLocationShowCursor(bool value) {
    _isPickupLocationShowCursor = value;
    notifyListeners();
  }

  List<String> _locationSuggestion = [];
  List<String> get getLocationSuggestion => _locationSuggestion;
  void setLocationSuggestion(List<String> value) {
    _locationSuggestion = value;
    notifyListeners();
  }

  SearchRideResponseModel _searchRideResponseModel =
      const SearchRideResponseModel();
  SearchRideResponseModel get searchRideResponseModel =>
      _searchRideResponseModel;

  bool get isPickupTyping => _isPickupTyping;
  bool get isDropTyping => _isDropTyping;
  String get pickupFinal => _pickupFinal;  
  String get dropFinal => _dropFinal;


  void setPickupTyping(bool flag) {
    _isPickupTyping = flag;
    notifyListeners();
  }

  void setDropTyping(bool flag) {
    _isDropTyping = flag;
    notifyListeners();
  }

  void setPickupFinal(String data) {
    _pickupFinal = data;
    notifyListeners();
  }

  void setDropFinal(String data) {
    _dropFinal = data;
    notifyListeners();
  }

  void clearSearchResponseData() {
    _searchRideResponseModel = const SearchRideResponseModel();
    notifyListeners();
  }



  Future<void> searchRide(
    SearchRideRequestModel searchRideRequestModel,
    BuildContext context,
  ) async {
    toggleLoading();
    _searchRideRepoImpl.searchRide(searchRideRequestModel).then((value) {
      toggleLoading();
      return value.fold((l) {
        context.pop();
        notifyListeners();
        Fluttertoast.showToast(msg: l.message);
      }, (r) {
        _searchRideResponseModel = r;
        if((r.code ?? 400) == 400) {
          showDialog(context: context, builder: (context) => AlertDialog(
            surfaceTintColor:  kWhite,
            title: const Text("Oops!"),
            content: Text("${r.message}"),
            actions: [
              TextButton(onPressed: () {
                context.pop();
              }, child:  const Text("No" , style:  TextStyle(color: primaryColor) ,), ),
            ],
          ),);
        }
        notifyListeners();
      });
    });
    notifyListeners();
  }

  PopularDestinationResponse _popularDestinationResponse =
      const PopularDestinationResponse();
  PopularDestinationResponse get popularDestinationResponse =>
      _popularDestinationResponse;

  Future<void> popularDestination() async {
    toggleLoading();
    _searchRideRepoImpl.popularDestination().then((value) {
      toggleLoading();
      return value.fold((l) {
        Logger.printError(l.message);
      }, (r) {
        Logger.printSuccess(r.toString());
        _popularDestinationResponse = r;
        notifyListeners();
      });
    });
  }

  String _userCurrentLocationAddress = "";
  String get getUserCurrentLocationAddress => _userCurrentLocationAddress;
  String _userCurrentLocationLat = "35.85262209841351";
  String get getUserCurrentLocationLat => _userCurrentLocationLat;
  String _userCurrentLocationLng = "14.490389507531006";
  String get getUserCurrentLocationLng => _userCurrentLocationLng;

  Future<void> setUserCurrentLocation() async {
    // final status = await Permission.location.request();
    final status = await Permission.locationWhenInUse.request();
    if (status.isGranted) {
      final Position position = await Geolocator.getCurrentPosition();
      Logger.printSuccess(position.toString());
      final double lat = position.latitude;
      final double long = position.longitude;
      final List<Placemark> placemarks =
          await placemarkFromCoordinates(lat, long);
      _userCurrentLocationAddress =
          " ${placemarks.first.name}, ${placemarks.first.subLocality}, ${placemarks.first.locality}, ${placemarks.first.administrativeArea}, ${placemarks.first.country}, ${placemarks.first.postalCode}";
      _userCurrentLocationLat = lat.toString();
      _userCurrentLocationLng = long.toString();

      notifyListeners();
    }

    notifyListeners();
  }
}
