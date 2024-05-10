// To parse this JSON data, do
//
//     final cancelRideAmountModel = cancelRideAmountModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_ride_amount_model.freezed.dart';
part 'cancel_ride_amount_model.g.dart';


CancelRideAmountModelRer cancelRideAmountModelRerFromJson(String str) => CancelRideAmountModelRer.fromJson(json.decode(str));

String cancelRideAmountModelRerToJson(CancelRideAmountModelRer data) => json.encode(data.toJson());

@freezed
class CancelRideAmountModelRer with _$CancelRideAmountModelRer {
    const factory CancelRideAmountModelRer({
        required String rideId,
    }) = _CancelRideAmountModelRer;

    factory CancelRideAmountModelRer.fromJson(Map<String, dynamic> json) => _$CancelRideAmountModelRerFromJson(json);
}





CancelRideAmountModelRes cancelRideAmountModelResFromJson(String str) => CancelRideAmountModelRes.fromJson(json.decode(str));

String cancelRideAmountModelResToJson(CancelRideAmountModelRes data) => json.encode(data.toJson());

@freezed
class CancelRideAmountModelRes with _$CancelRideAmountModelRes {
    const factory CancelRideAmountModelRes({
        int? code,
        String? message,
        bool? isSuccess,
        int? cancellationAmount,
    }) = _CancelRideAmountModelRes;

    factory CancelRideAmountModelRes.fromJson(Map<String, dynamic> json) => _$CancelRideAmountModelResFromJson(json);
}

