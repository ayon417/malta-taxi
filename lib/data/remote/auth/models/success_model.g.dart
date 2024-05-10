// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuccessResponseImpl _$$SuccessResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SuccessResponseImpl(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
    );

Map<String, dynamic> _$$SuccessResponseImplToJson(
        _$SuccessResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
    };
