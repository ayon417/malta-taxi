// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentRequestModelImpl _$$PaymentRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentRequestModelImpl(
      rideId: json['rideId'] as String?,
    );

Map<String, dynamic> _$$PaymentRequestModelImplToJson(
        _$PaymentRequestModelImpl instance) =>
    <String, dynamic>{
      'rideId': instance.rideId,
    };

_$PaymentResponseModelImpl _$$PaymentResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentResponseModelImpl(
      code: json['code'] as int?,
      isSuccess: json['isSuccess'] as bool?,
      paymentLink: json['paymentLink'] as String?,
    );

Map<String, dynamic> _$$PaymentResponseModelImplToJson(
        _$PaymentResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'isSuccess': instance.isSuccess,
      'paymentLink': instance.paymentLink,
    };
