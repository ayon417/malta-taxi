// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_cash_threshold_model.freezed.dart';
part 'get_cash_threshold_model.g.dart';

GetCashThresholdResponseModel getCashThresholdResponseModelFromJson(String str) => GetCashThresholdResponseModel.fromJson(json.decode(str));
String getCashThresholdResponseModelToJson(GetCashThresholdResponseModel data) => json.encode(data.toJson());

@freezed
class GetCashThresholdResponseModel with _$GetCashThresholdResponseModel {
    const factory GetCashThresholdResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _GetCashThresholdResponseModel;

    factory GetCashThresholdResponseModel.fromJson(Map<String, dynamic> json) => _$GetCashThresholdResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "isCashAllowed")
        bool? isCashAllowed,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
