// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cash_threshold_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCashThresholdResponseModelImpl
    _$$GetCashThresholdResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$GetCashThresholdResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: json['data'] == null
              ? null
              : Data.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetCashThresholdResponseModelImplToJson(
        _$GetCashThresholdResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      isCashAllowed: json['isCashAllowed'] as bool?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'isCashAllowed': instance.isCashAllowed,
    };
