// To parse this JSON data, do
//
//     final updateUserRequest = updateUserRequestFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_model.freezed.dart';
part 'update_user_model.g.dart';

// To parse this JSON data, do

UpdateUserRequest updateUserRequestFromJson(String str) =>
    UpdateUserRequest.fromJson(json.decode(str));

String updateUserRequestToJson(UpdateUserRequest data) =>
    json.encode(data.toJson());

@freezed
class UpdateUserRequest with _$UpdateUserRequest {
  const factory UpdateUserRequest({
    required String firstName,
    required String lastName,
    required String email,
    required String image,
  }) = _UpdateUserRequest;

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);
}

UpdateUserResponse updateUserResponseFromJson(String str) =>
    UpdateUserResponse.fromJson(json.decode(str));

String updateUserResponseToJson(UpdateUserResponse data) =>
    json.encode(data.toJson());

@freezed
class UpdateUserResponse with _$UpdateUserResponse {
  const factory UpdateUserResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _UpdateUserResponse;

  factory UpdateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String firstName,
    required String lastName,
    required String image,
    required String mobile,
    required String customerId,
    required String email,
    required String language,
    required bool isPhoneVerified,
    required String role,
    required String id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
