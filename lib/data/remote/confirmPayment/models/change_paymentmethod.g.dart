// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_paymentmethod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePaymentMethodReqImpl _$$ChangePaymentMethodReqImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePaymentMethodReqImpl(
      rideId: json['rideId'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
    );

Map<String, dynamic> _$$ChangePaymentMethodReqImplToJson(
        _$ChangePaymentMethodReqImpl instance) =>
    <String, dynamic>{
      'rideId': instance.rideId,
      'paymentMethod': instance.paymentMethod,
    };

_$ChangePaymentMethodResImpl _$$ChangePaymentMethodResImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePaymentMethodResImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
    );

Map<String, dynamic> _$$ChangePaymentMethodResImplToJson(
        _$ChangePaymentMethodResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
    };
