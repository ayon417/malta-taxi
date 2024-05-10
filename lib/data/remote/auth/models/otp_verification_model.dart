// To parse this JSON data, do
//
//     final otpVerificationRequest = otpVerificationRequestFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_verification_model.freezed.dart';
part 'otp_verification_model.g.dart';

OtpVerificationRequest otpVerificationRequestFromJson(String str) =>
    OtpVerificationRequest.fromJson(json.decode(str));

String otpVerificationRequestToJson(OtpVerificationRequest data) =>
    json.encode(data.toJson());

@freezed
class OtpVerificationRequest with _$OtpVerificationRequest {
  const factory OtpVerificationRequest({
    String? mobile,
    String? otp,
  }) = _OtpVerificationRequest;

  factory OtpVerificationRequest.fromJson(Map<String, dynamic> json) =>
      _$OtpVerificationRequestFromJson(json);
}

// To parse this JSON data, do
//
//     final otpVerificationResponse = otpVerificationResponseFromJson(jsonString);

OtpVerificationResponse otpVerificationResponseFromJson(String str) =>
    OtpVerificationResponse.fromJson(json.decode(str));

String otpVerificationResponseToJson(OtpVerificationResponse data) =>
    json.encode(data.toJson());

@freezed
class OtpVerificationResponse with _$OtpVerificationResponse {
  const factory OtpVerificationResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
    String? accessToken,
    String? refreshToken,
  }) = _OtpVerificationResponse;

  factory OtpVerificationResponse.fromJson(Map<String, dynamic> json) =>
      _$OtpVerificationResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? id,
    String? firstName,
    String? lastName,
    String? mobile,
    String? email,
    String? role,
    String? language,
    bool? isPhoneVerified,
    bool? isUserDetailsAdded,
    bool? isNewUser,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
