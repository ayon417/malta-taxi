import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_payment_model.freezed.dart';
part 'confirm_payment_model.g.dart';

ConfirmPaymentModel confirmPaymentModelFromJson(String str) => ConfirmPaymentModel.fromJson(json.decode(str) as Map<String, dynamic>);
String confirmPaymentModelToJson(ConfirmPaymentModel data) => json.encode(data.toJson());

@freezed
class ConfirmPaymentModel with _$ConfirmPaymentModel {
    const factory ConfirmPaymentModel({
        int? code,
        String? message,
        bool? isSuccess,
        Data? data,
    }) = _ConfirmPaymentModel;

    factory ConfirmPaymentModel.fromJson(Map<String, dynamic> json) => _$ConfirmPaymentModelFromJson(json);
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
