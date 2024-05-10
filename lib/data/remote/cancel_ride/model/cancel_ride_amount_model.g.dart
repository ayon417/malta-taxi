// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_ride_amount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CancelRideAmountModelRerImpl _$$CancelRideAmountModelRerImplFromJson(
        Map<String, dynamic> json) =>
    _$CancelRideAmountModelRerImpl(
      rideId: json['rideId'] as String,
    );

Map<String, dynamic> _$$CancelRideAmountModelRerImplToJson(
        _$CancelRideAmountModelRerImpl instance) =>
    <String, dynamic>{
      'rideId': instance.rideId,
    };

_$CancelRideAmountModelResImpl _$$CancelRideAmountModelResImplFromJson(
        Map<String, dynamic> json) =>
    _$CancelRideAmountModelResImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      cancellationAmount: json['cancellationAmount'] as int?,
    );

Map<String, dynamic> _$$CancelRideAmountModelResImplToJson(
        _$CancelRideAmountModelResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'cancellationAmount': instance.cancellationAmount,
    };
