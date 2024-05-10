// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePaymentRequestModelImpl _$$CreatePaymentRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePaymentRequestModelImpl(
      cardId: json['cardId'] as String?,
      rideId: json['rideId'] as String?,
    );

Map<String, dynamic> _$$CreatePaymentRequestModelImplToJson(
        _$CreatePaymentRequestModelImpl instance) =>
    <String, dynamic>{
      'cardId': instance.cardId,
      'rideId': instance.rideId,
    };

_$CreatePaymentResponseModelImpl _$$CreatePaymentResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePaymentResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreatePaymentResponseModelImplToJson(
        _$CreatePaymentResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      transactionId: json['transactionId'] as String?,
      amount: json['amount'] as int?,
      paymentMethod: json['paymentMethod'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'amount': instance.amount,
      'paymentMethod': instance.paymentMethod,
    };
