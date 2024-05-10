// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpVerificationRequestImpl _$$OtpVerificationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$OtpVerificationRequestImpl(
      mobile: json['mobile'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$$OtpVerificationRequestImplToJson(
        _$OtpVerificationRequestImpl instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
      'otp': instance.otp,
    };

_$OtpVerificationResponseImpl _$$OtpVerificationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OtpVerificationResponseImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$OtpVerificationResponseImplToJson(
        _$OtpVerificationResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      mobile: json['mobile'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      language: json['language'] as String?,
      isPhoneVerified: json['isPhoneVerified'] as bool?,
      isUserDetailsAdded: json['isUserDetailsAdded'] as bool?,
      isNewUser: json['isNewUser'] as bool?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'mobile': instance.mobile,
      'email': instance.email,
      'role': instance.role,
      'language': instance.language,
      'isPhoneVerified': instance.isPhoneVerified,
      'isUserDetailsAdded': instance.isUserDetailsAdded,
      'isNewUser': instance.isNewUser,
    };
