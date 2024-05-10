import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'past_rides_model.freezed.dart';
part 'past_rides_model.g.dart';

PastRidesResponseModel pastRidesResponseModelFromJson(String str) => PastRidesResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String pastRidesResponseModelToJson(PastRidesResponseModel data) => json.encode(data.toJson());

@freezed
class PastRidesResponseModel with _$PastRidesResponseModel {
    const factory PastRidesResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
        List<Datum>? data,
    }) = _PastRidesResponseModel;

    factory PastRidesResponseModel.fromJson(Map<String, dynamic> json) => _$PastRidesResponseModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
        String? id,
        String? driverFirstName,
        String? driverLastName,
        String? driverImage,
        String? carImage,
        PickupLocation? pickupLocation,
        DestinationLocation? destinationLocation,
        String? pickupDateTime,
        String? driverMobileNumber,
        String? carNumber,
        String? carName,
        String? carModel,
        String? rideStatus,
        bool? isPayment,
        String? distance,
        int? price,
        String? duration,
        String? date,
        int? cancellationAmount
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
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