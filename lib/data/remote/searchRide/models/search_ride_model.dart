import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_ride_model.freezed.dart';
part 'search_ride_model.g.dart';

///===================== REQUEST =====================///
SearchRideRequestModel searchRideRequestModelFromJson(String str) => SearchRideRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String searchRideRequestModelToJson(SearchRideRequestModel data) => json.encode(data.toJson());

@freezed
class SearchRideRequestModel with _$SearchRideRequestModel {
    const factory SearchRideRequestModel({
        PickupLocation? pickupLocation,
        DestinationLocation? destinationLocation,
        String? pickupDateTime,
    }) = _SearchRideRequestModel;

    factory SearchRideRequestModel.fromJson(Map<String, dynamic> json) => _$SearchRideRequestModelFromJson(json);
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
SearchRideResponseModel searchRideResponseModelFromJson(String str) => SearchRideResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String searchRideResponseModelToJson(SearchRideResponseModel data) => json.encode(data.toJson());

@freezed
class SearchRideResponseModel with _$SearchRideResponseModel {
    const factory SearchRideResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
        Data? data,
    }) = _SearchRideResponseModel;

    factory SearchRideResponseModel.fromJson(Map<String, dynamic> json) => _$SearchRideResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        PickupLocation? pickupLocation,
        DestinationLocation? destinationLocation,
        String? pickupDateTime,
        List<CarType>? carType,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class CarType with _$CarType {
    const factory CarType({
        String? id,
        String? name,
        String? description,
        String? image,
        String? passengerCapacity,
        int? luggageWeightInKg,
        int? luggageQuantity,
        int? price,
        int? pendingCancellationCharges
    }) = _CarType;

    factory CarType.fromJson(Map<String, dynamic> json) => _$CarTypeFromJson(json);
}

// @freezed
// class DestinationLocation with _$DestinationLocation {
//     const factory DestinationLocation({
//         String? type,
//         List<double>? coordinates,
//         String? destinationLocationName,
//     }) = _DestinationLocation;

//     factory DestinationLocation.fromJson(Map<String, dynamic> json) => _$DestinationLocationFromJson(json);
// }

// @freezed
// class PickupLocation with _$PickupLocation {
//     const factory PickupLocation({
//         String? type,
//         List<double>? coordinates,
//         String? pickupLocationName,
//     }) = _PickupLocation;

//     factory PickupLocation.fromJson(Map<String, dynamic> json) => _$PickupLocationFromJson(json);
// }
