// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_ride_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CancelRideRequestImpl _$$CancelRideRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CancelRideRequestImpl(
      rideId: json['rideId'] as String?,
      cancellationReason: json['cancellationReason'] as String?,
    );

Map<String, dynamic> _$$CancelRideRequestImplToJson(
        _$CancelRideRequestImpl instance) =>
    <String, dynamic>{
      'rideId': instance.rideId,
      'cancellationReason': instance.cancellationReason,
    };

_$CancelRideResponseImpl _$$CancelRideResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CancelRideResponseImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CancelRideResponseImplToJson(
        _$CancelRideResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl();

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{};
