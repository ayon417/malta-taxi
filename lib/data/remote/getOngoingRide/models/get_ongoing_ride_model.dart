import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_ongoing_ride_model.freezed.dart';
part 'get_ongoing_ride_model.g.dart';


///====================== REQUEST ======================///
GetOngoingRideRequestModel getOngoingRideRequestModelFromJson(String str) => GetOngoingRideRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getOngoingRideRequestModelToJson(GetOngoingRideRequestModel data) => json.encode(data.toJson());

@freezed
class GetOngoingRideRequestModel with _$GetOngoingRideRequestModel {
    const factory GetOngoingRideRequestModel({
        String? rideId,
    }) = _GetOngoingRideRequestModel;

    factory GetOngoingRideRequestModel.fromJson(Map<String, dynamic> json) => _$GetOngoingRideRequestModelFromJson(json);
}


///====================== RESPONSE ======================///
GetOngoingRideResponseModel getOngoingRideResponseModelFromJson(String str) => GetOngoingRideResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getOngoingRideResponseModelToJson(GetOngoingRideResponseModel data) => json.encode(data.toJson());

@freezed
class GetOngoingRideResponseModel with _$GetOngoingRideResponseModel {
    const factory GetOngoingRideResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
        Data? data,
    }) = _GetOngoingRideResponseModel;

    factory GetOngoingRideResponseModel.fromJson(Map<String, dynamic> json) => _$GetOngoingRideResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        String? id,
        String? driverFirstName,
        String? driverLastName,
        String? driverImage,
        PickupLocation? pickupLocation,
        DestinationLocation? destinationLocation,
        String? pickupDateTime,
        String? driverMobileNumber,
        String? carNumber,
        String? carName,
        String? carModel,
        String? rideStatus,
        bool? isPayment,
        int? distance,
        int? price,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class DestinationLocation with _$DestinationLocation {
    const factory DestinationLocation({
        String? type,
        List<double>? coordinates,
        String? destinationLocationName,
    }) = _DestinationLocation;

    factory DestinationLocation.fromJson(Map<String, dynamic> json) => _$DestinationLocationFromJson(json);
}

@freezed
class PickupLocation with _$PickupLocation {
    const factory PickupLocation({
        String? type,
        List<double>? coordinates,
        String? pickupLocationName,
    }) = _PickupLocation;

    factory PickupLocation.fromJson(Map<String, dynamic> json) => _$PickupLocationFromJson(json);
}