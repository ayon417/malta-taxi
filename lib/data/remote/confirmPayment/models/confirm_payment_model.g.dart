// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfirmPaymentModelImpl _$$ConfirmPaymentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmPaymentModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConfirmPaymentModelImplToJson(
        _$ConfirmPaymentModelImpl instance) =>
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
