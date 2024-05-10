import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_ride_status_model.freezed.dart';
part 'check_ride_status_model.g.dart';

CheckRideStatusResponseModel checkRideStatusResponseModelFromJson(String str) => CheckRideStatusResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String checkRideStatusResponseModelToJson(CheckRideStatusResponseModel data) => json.encode(data.toJson());

@freezed
class CheckRideStatusResponseModel with _$CheckRideStatusResponseModel {
    const factory CheckRideStatusResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
        Data? data,
    }) = _CheckRideStatusResponseModel;

    factory CheckRideStatusResponseModel.fromJson(Map<String, dynamic> json) => _$CheckRideStatusResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        String? rideId,
        String? rideStatus,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
