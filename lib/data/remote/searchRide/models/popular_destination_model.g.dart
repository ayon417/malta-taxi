// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_destination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PopularDestinationResponseImpl _$$PopularDestinationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PopularDestinationResponseImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PopularDestinationResponseImplToJson(
        _$PopularDestinationResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };
