// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentDetailsRequestModelImpl _$$PaymentDetailsRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentDetailsRequestModelImpl(
      rideId: json['rideId'] as String?,
    );

Map<String, dynamic> _$$PaymentDetailsRequestModelImplToJson(
        _$PaymentDetailsRequestModelImpl instance) =>
    <String, dynamic>{
      'rideId': instance.rideId,
    };

_$PaymentDetailsResponseModelImpl _$$PaymentDetailsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentDetailsResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentDetailsResponseModelImplToJson(
        _$PaymentDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as String?,
      duration: json['duration'] as String?,
      baseFair: json['baseFair'] as int?,
      tax: json['tax'] as String?,
      surcharge: json['surcharge'] as int?,
      waitingTime: json['waitingTime'] as String?,
      totalPrice: json['totalPrice'] as int?,
      distance: json['distance'] as String?,
      isPayment: json['isPayment'] as bool?,
      paymentMethod: json['paymentMethod'] as String?,
      cancellationAmount: json['cancellationAmount'] as int?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'duration': instance.duration,
      'baseFair': instance.baseFair,
      'tax': instance.tax,
      'surcharge': instance.surcharge,
      'waitingTime': instance.waitingTime,
      'totalPrice': instance.totalPrice,
      'distance': instance.distance,
      'isPayment': instance.isPayment,
      'paymentMethod': instance.paymentMethod,
      'cancellationAmount': instance.cancellationAmount,
    };
