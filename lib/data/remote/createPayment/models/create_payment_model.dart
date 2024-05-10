import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_payment_model.freezed.dart';
part 'create_payment_model.g.dart';

///==================== REQUEST ====================///
CreatePaymentRequestModel createPaymentRequestModelFromJson(String str) => CreatePaymentRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String createPaymentRequestModelToJson(CreatePaymentRequestModel data) => json.encode(data.toJson());

@freezed
class CreatePaymentRequestModel with _$CreatePaymentRequestModel {
    const factory CreatePaymentRequestModel({
        String? cardId,
        String? rideId,
    }) = _CreatePaymentRequestModel;

    factory CreatePaymentRequestModel.fromJson(Map<String, dynamic> json) => _$CreatePaymentRequestModelFromJson(json);
}

///==================== RESPONSE ====================///
CreatePaymentResponseModel createPaymentResponseModelFromJson(String str) => CreatePaymentResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String createPaymentResponseModelToJson(CreatePaymentResponseModel data) => json.encode(data.toJson());

@freezed
class CreatePaymentResponseModel with _$CreatePaymentResponseModel {
    const factory CreatePaymentResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
        Data? data,
    }) = _CreatePaymentResponseModel;

    factory CreatePaymentResponseModel.fromJson(Map<String, dynamic> json) => _$CreatePaymentResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        String? transactionId,
        int? amount,
        String? paymentMethod,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
