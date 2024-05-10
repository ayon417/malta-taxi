// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_ride_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckRideStatusResponseModelImpl _$$CheckRideStatusResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckRideStatusResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckRideStatusResponseModelImplToJson(
        _$CheckRideStatusResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      rideId: json['rideId'] as String?,
      rideStatus: json['rideStatus'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'rideId': instance.rideId,
      'rideStatus': instance.rideStatus,
    };
