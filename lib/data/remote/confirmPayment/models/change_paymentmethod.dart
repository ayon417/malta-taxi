// To parse this JSON data, do
//
//     final changePaymentMethodReq = changePaymentMethodReqFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_paymentmethod.freezed.dart';
part 'change_paymentmethod.g.dart';

ChangePaymentMethodReq changePaymentMethodReqFromJson(String str) => ChangePaymentMethodReq.fromJson(json.decode(str));

String changePaymentMethodReqToJson(ChangePaymentMethodReq data) => json.encode(data.toJson());

@freezed
class ChangePaymentMethodReq with _$ChangePaymentMethodReq {
    const factory ChangePaymentMethodReq({
        String? rideId,
        String? paymentMethod,
    }) = _ChangePaymentMethodReq;

    factory ChangePaymentMethodReq.fromJson(Map<String, dynamic> json) => _$ChangePaymentMethodReqFromJson(json);
}




ChangePaymentMethodRes changePaymentMethodResFromJson(String str) => ChangePaymentMethodRes.fromJson(json.decode(str));

String changePaymentMethodResToJson(ChangePaymentMethodRes data) => json.encode(data.toJson());

@freezed
class ChangePaymentMethodRes with _$ChangePaymentMethodRes {
    const factory ChangePaymentMethodRes({
        int? code,
        String? message,
        bool? isSuccess,
    }) = _ChangePaymentMethodRes;

    factory ChangePaymentMethodRes.fromJson(Map<String, dynamic> json) => _$ChangePaymentMethodResFromJson(json);
}
