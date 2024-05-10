import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'proceed_ride_model.freezed.dart';
part 'proceed_ride_model.g.dart';

///===================== REQUEST =====================///
ProceedRideRequestModel proceedRideRequestModelFromJson(String str) => ProceedRideRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String proceedRideRequestModelToJson(ProceedRideRequestModel data) => json.encode(data.toJson());

@freezed
class ProceedRideRequestModel with _$ProceedRideRequestModel {
    const factory ProceedRideRequestModel({
        PickupLocation? pickupLocation,
        DestinationLocation? destinationLocation,
        String? pickupDateTime,
        String? carType,
        bool? isChildBooster,
        bool? isPetFriendly,
        bool? isWheelChair,
    }) = _ProceedRideRequestModel;

    factory ProceedRideRequestModel.fromJson(Map<String, dynamic> json) => _$ProceedRideRequestModelFromJson(json);
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


///===================== RESPONSE =====================///
ProceedRideResponseModel proceedRideResponseModelFromJson(String str) => ProceedRideResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String proceedRideResponseModelToJson(ProceedRideResponseModel data) => json.encode(data.toJson());

@freezed
class ProceedRideResponseModel with _$ProceedRideResponseModel {
    const factory ProceedRideResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
        Data? data,
    }) = _ProceedRideResponseModel;

    factory ProceedRideResponseModel.fromJson(Map<String, dynamic> json) => _$ProceedRideResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        String? id,
        String? pickupLocationName,
        String? destinationLocationName,
        bool? isPayment,
        PickupLocation? pickupLocation,
        DestinationLocation? destinationLocation,
        String? pickupDateTime,
        int? price,
        String? rideStatus,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}