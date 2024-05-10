// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proceed_ride_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProceedRideRequestModelImpl _$$ProceedRideRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProceedRideRequestModelImpl(
      pickupLocation: json['pickupLocation'] == null
          ? null
          : PickupLocation.fromJson(
              json['pickupLocation'] as Map<String, dynamic>),
      destinationLocation: json['destinationLocation'] == null
          ? null
          : DestinationLocation.fromJson(
              json['destinationLocation'] as Map<String, dynamic>),
      pickupDateTime: json['pickupDateTime'] as String?,
      carType: json['carType'] as String?,
      isChildBooster: json['isChildBooster'] as bool?,
      isPetFriendly: json['isPetFriendly'] as bool?,
      isWheelChair: json['isWheelChair'] as bool?,
    );

Map<String, dynamic> _$$ProceedRideRequestModelImplToJson(
        _$ProceedRideRequestModelImpl instance) =>
    <String, dynamic>{
      'pickupLocation': instance.pickupLocation,
      'destinationLocation': instance.destinationLocation,
      'pickupDateTime': instance.pickupDateTime,
      'carType': instance.carType,
      'isChildBooster': instance.isChildBooster,
      'isPetFriendly': instance.isPetFriendly,
      'isWheelChair': instance.isWheelChair,
    };

_$DestinationLocationImpl _$$DestinationLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$DestinationLocationImpl(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      destinationLocationName: json['destinationLocationName'] as String?,
    );

Map<String, dynamic> _$$DestinationLocationImplToJson(
        _$DestinationLocationImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
      'destinationLocationName': instance.destinationLocationName,
    };

_$PickupLocationImpl _$$PickupLocationImplFromJson(Map<String, dynamic> json) =>
    _$PickupLocationImpl(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      pickupLocationName: json['pickupLocationName'] as String?,
    );

Map<String, dynamic> _$$PickupLocationImplToJson(
        _$PickupLocationImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
      'pickupLocationName': instance.pickupLocationName,
    };

_$ProceedRideResponseModelImpl _$$ProceedRideResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProceedRideResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProceedRideResponseModelImplToJson(
        _$ProceedRideResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as String?,
      pickupLocationName: json['pickupLocationName'] as String?,
      destinationLocationName: json['destinationLocationName'] as String?,
      isPayment: json['isPayment'] as bool?,
      pickupLocation: json['pickupLocation'] == null
          ? null
          : PickupLocation.fromJson(
              json['pickupLocation'] as Map<String, dynamic>),
      destinationLocation: json['destinationLocation'] == null
          ? null
          : DestinationLocation.fromJson(
              json['destinationLocation'] as Map<String, dynamic>),
      pickupDateTime: json['pickupDateTime'] as String?,
      price: json['price'] as int?,
      rideStatus: json['rideStatus'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pickupLocationName': instance.pickupLocationName,
      'destinationLocationName': instance.destinationLocationName,
      'isPayment': instance.isPayment,
      'pickupLocation': instance.pickupLocation,
      'destinationLocation': instance.destinationLocation,
      'pickupDateTime': instance.pickupDateTime,
      'price': instance.price,
      'rideStatus': instance.rideStatus,
    };
