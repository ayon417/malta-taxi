// To parse this JSON data, do
//
//     final popularDestinationResponse = popularDestinationResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_destination_model.freezed.dart';
part 'popular_destination_model.g.dart';

PopularDestinationResponse popularDestinationResponseFromJson(String str) =>
    PopularDestinationResponse.fromJson(json.decode(str));

String popularDestinationResponseToJson(PopularDestinationResponse data) =>
    json.encode(data.toJson());

@freezed
class PopularDestinationResponse with _$PopularDestinationResponse {
  const factory PopularDestinationResponse({
    int? code,
    String? message,
    bool? isSuccess,
    List<String>? data,
  }) = _PopularDestinationResponse;

  factory PopularDestinationResponse.fromJson(Map<String, dynamic> json) =>
      _$PopularDestinationResponseFromJson(json);
}
