import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_details_model.freezed.dart';
part 'payment_details_model.g.dart';


///=================== REQUEST ===================///
PaymentDetailsRequestModel paymentDetailsRequestModelFromJson(String str) => PaymentDetailsRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String paymentDetailsRequestModelToJson(PaymentDetailsRequestModel data) => json.encode(data.toJson());

@freezed
class PaymentDetailsRequestModel with _$PaymentDetailsRequestModel {
    const factory PaymentDetailsRequestModel({
        String? rideId,
    }) = _PaymentDetailsRequestModel;

    factory PaymentDetailsRequestModel.fromJson(Map<String, dynamic> json) => _$PaymentDetailsRequestModelFromJson(json);
}



///=================== RESPONSE ===================///
PaymentDetailsResponseModel paymentDetailsResponseModelFromJson(String str) => PaymentDetailsResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String paymentDetailsResponseModelToJson(PaymentDetailsResponseModel data) => json.encode(data.toJson());

@freezed
class PaymentDetailsResponseModel with _$PaymentDetailsResponseModel {
    const factory PaymentDetailsResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
        Data? data,
    }) = _PaymentDetailsResponseModel;

    factory PaymentDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$PaymentDetailsResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        String? id,
        String? duration,
        int? baseFair,
        String? tax,
        int? surcharge,
        String? waitingTime,
        int? totalPrice,
        String? distance,
        bool? isPayment,
        String? paymentMethod,
        int? cancellationAmount
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
