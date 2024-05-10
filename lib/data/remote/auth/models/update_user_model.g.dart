// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserRequestImpl _$$UpdateUserRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserRequestImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$UpdateUserRequestImplToJson(
        _$UpdateUserRequestImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'image': instance.image,
    };

_$UpdateUserResponseImpl _$$UpdateUserResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserResponseImpl(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateUserResponseImplToJson(
        _$UpdateUserResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      image: json['image'] as String,
      mobile: json['mobile'] as String,
      customerId: json['customerId'] as String,
      email: json['email'] as String,
      language: json['language'] as String,
      isPhoneVerified: json['isPhoneVerified'] as bool,
      role: json['role'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'image': instance.image,
      'mobile': instance.mobile,
      'customerId': instance.customerId,
      'email': instance.email,
      'language': instance.language,
      'isPhoneVerified': instance.isPhoneVerified,
      'role': instance.role,
      'id': instance.id,
    };
