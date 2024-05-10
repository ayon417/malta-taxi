// ignore_for_file: avoid_dynamic_calls
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/utils/utils.dart';

class PlaceSearch {
  String apiKey = AppConstants.googleMapKey;

  //* auto place suggestion
  Future<List<String>> fetchLocationSuggestions(String query) async {
    // make a url for google places autocomplete and pass the query and show only
    final String apiUrl =
        "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=$apiKey&components=country:mt";

    // 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=$apiKey';

    final response = await Dio().get(apiUrl);

    Logger.printSuccess(response.data.toString());

    if (response.statusCode == 200) {
      final data = response.data;
      if (data['status'] == 'OK') {
        final predictions = data['predictions'];
        final List<String> suggestions = [];
        for (var i = 0; i < predictions.length; i++) {
          suggestions.add(predictions[i]['description']);
        }

        return suggestions;
      }
    }
    return [];
  }

  Future<Map<String, dynamic>> getLatLong(String query) async {
    String address = query.split(" ").join("%20");
    address = address.split(',').join();

    Logger.printWarning(query);
    Logger.printWarning(address);

    try {
      final response = await ApiClient().get(
        "https://maps.googleapis.com/maps/api/geocode/json?address=$address&key=$apiKey",
      );
      Logger.printSuccess(
        response.data!['results'][0]['geometry']['location'].toString(),
      );
      // final response = await ApiClient().get("https://maps.googleapis.com/maps/api/geocode/json?address=24%20Sussex%20Drive%20Ottawa%20ON&key=AIzaSyAjdNnw06XH3bUkAB6VZBU3w7ynnvk1b5I");
      return response.data!['results'][0]['geometry']['location']
          as Map<String, dynamic>;
    } catch (e) {
      Logger.printError(e.toString());
      return {};
    }
  }

  //* get data lat long to address convert
  Future<String> getPlaceAddress(double lat, double lng) async {
    final String apiUrl =
        "https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$apiKey";
    final response = await Dio().get(apiUrl);
    Logger.printSuccess(response.data.toString());
    if (response.statusCode == 200) {
      final data = response.data;
      if (data['status'] == 'OK') {
        final address = data['results'][0]['formatted_address'];
        return address;
      }
    }
    return "";
  }

  //* get your location
  // Future getYourLocation() async {
  //   final status = await Permission.location.request();
  //   if (status.isGranted) {
  //     final Position position = await Geolocator.getCurrentPosition();
  //     final double lat = position.latitude;
  //     final double long = position.longitude;
  //     final List<Placemark> placemarks =
  //         await placemarkFromCoordinates(lat, long);
  //     // AppConstants.userCurrentLocationAddress =
  //     //     " ${placemarks.first.name}, ${placemarks.first.subLocality}, ${placemarks.first.locality}, ${placemarks.first.administrativeArea}, ${placemarks.first.country}, ${placemarks.first.postalCode}";
  //     // AppConstants.userCurrentLocationLat = lat.toString();
  //     // AppConstants.userCurrentLocationLng = long.toString();
  
  //   }
  // }

//   StreamSubscription<Position>? _positionStreamSubscription;
// //* get your live location
//   void startLocationTracking() {
//     _positionStreamSubscription =
//         Geolocator.getPositionStream().listen((Position position) async {
//       final double lat = position.latitude;
//       final double long = position.longitude;
//       final List<Placemark> placemarks =
//           await placemarkFromCoordinates(lat, long);
//       AppConstants.userCurrentLocationAddress =
//           " ${placemarks.first.name}, ${placemarks.first.subLocality}, ${placemarks.first.locality}, ${placemarks.first.administrativeArea}, ${placemarks.first.country}, ${placemarks.first.postalCode}";
//       AppConstants.userCurrentLocationLat = lat.toString();
//       AppConstants.userCurrentLocationLng = long.toString();
//     });
//   }

  // void stopLocationTracking() {
  //   _positionStreamSubscription?.cancel();
  //   _positionStreamSubscription = null;
  // }
}
