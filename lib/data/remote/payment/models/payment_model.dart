import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';


///==================== REQUEST ====================///
PaymentRequestModel paymentRequestModelFromJson(String str) => PaymentRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String paymentRequestModelToJson(PaymentRequestModel data) => json.encode(data.toJson());

@freezed
class PaymentRequestModel with _$PaymentRequestModel {
    const factory PaymentRequestModel({
        String? rideId,
    }) = _PaymentRequestModel;

    factory PaymentRequestModel.fromJson(Map<String, dynamic> json) => _$PaymentRequestModelFromJson(json);
}

///==================== RESPONSE ====================///
PaymentResponseModel paymentResponseModelFromJson(String str) => PaymentResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String paymentResponseModelToJson(PaymentResponseModel data) => json.encode(data.toJson());

@freezed
class PaymentResponseModel with _$PaymentResponseModel {
    const factory PaymentResponseModel({
        int? code,
        bool? isSuccess,
        String? paymentLink,
    }) = _PaymentResponseModel;

    factory PaymentResponseModel.fromJson(Map<String, dynamic> json) => _$PaymentResponseModelFromJson(json);
}
