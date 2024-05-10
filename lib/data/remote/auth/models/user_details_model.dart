// To parse this JSON data, do
//
//     final userDetailsResponse = userDetailsResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details_model.freezed.dart';
part 'user_details_model.g.dart';

UserDetailsResponse userDetailsResponseFromJson(String str) =>
    UserDetailsResponse.fromJson(json.decode(str));

String userDetailsResponseToJson(UserDetailsResponse data) =>
    json.encode(data.toJson());

@freezed
class UserDetailsResponse with _$UserDetailsResponse {
  const factory UserDetailsResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _UserDetailsResponse;

  factory UserDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? id,
    String? firstName,
    String? lastName,
    String? mobile,
    String? email,
    String? language,
    bool? isPhoneVerified,
    bool? isNewUser,
    String? rideStatus,
    String? image,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
