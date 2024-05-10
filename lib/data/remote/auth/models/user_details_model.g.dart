// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailsResponseImpl _$$UserDetailsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailsResponseImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDetailsResponseImplToJson(
        _$UserDetailsResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      mobile: json['mobile'] as String?,
      email: json['email'] as String?,
      language: json['language'] as String?,
      isPhoneVerified: json['isPhoneVerified'] as bool?,
      isNewUser: json['isNewUser'] as bool?,
      rideStatus: json['rideStatus'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'mobile': instance.mobile,
      'email': instance.email,
      'language': instance.language,
      'isPhoneVerified': instance.isPhoneVerified,
      'isNewUser': instance.isNewUser,
      'rideStatus': instance.rideStatus,
      'image': instance.image,
    };
