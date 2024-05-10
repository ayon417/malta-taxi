// To parse this JSON data, do
//
//     final cancelRideRequest = cancelRideRequestFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_ride_model.freezed.dart';
part 'cancel_ride_model.g.dart';

CancelRideRequest cancelRideRequestFromJson(String str) =>
    CancelRideRequest.fromJson(json.decode(str));

String cancelRideRequestToJson(CancelRideRequest data) =>
    json.encode(data.toJson());

@freezed
class CancelRideRequest with _$CancelRideRequest {
  const factory CancelRideRequest({
    String? rideId,
    String? cancellationReason,
  }) = _CancelRideRequest;

  factory CancelRideRequest.fromJson(Map<String, dynamic> json) =>
      _$CancelRideRequestFromJson(json);
}

CancelRideResponse cancelRideResponseFromJson(String str) =>
    CancelRideResponse.fromJson(json.decode(str));

String cancelRideResponseToJson(CancelRideResponse data) =>
    json.encode(data.toJson());

@freezed
class CancelRideResponse with _$CancelRideResponse {
  const factory CancelRideResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _CancelRideResponse;

  factory CancelRideResponse.fromJson(Map<String, dynamic> json) =>
      _$CancelRideResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data() = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
