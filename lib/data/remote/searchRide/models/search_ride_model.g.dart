// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_ride_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchRideRequestModelImpl _$$SearchRideRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchRideRequestModelImpl(
      pickupLocation: json['pickupLocation'] == null
          ? null
          : PickupLocation.fromJson(
              json['pickupLocation'] as Map<String, dynamic>),
      destinationLocation: json['destinationLocation'] == null
          ? null
          : DestinationLocation.fromJson(
              json['destinationLocation'] as Map<String, dynamic>),
      pickupDateTime: json['pickupDateTime'] as String?,
    );

Map<String, dynamic> _$$SearchRideRequestModelImplToJson(
        _$SearchRideRequestModelImpl instance) =>
    <String, dynamic>{
      'pickupLocation': instance.pickupLocation,
      'destinationLocation': instance.destinationLocation,
      'pickupDateTime': instance.pickupDateTime,
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

_$SearchRideResponseModelImpl _$$SearchRideResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchRideResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchRideResponseModelImplToJson(
        _$SearchRideResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      pickupLocation: json['pickupLocation'] == null
          ? null
          : PickupLocation.fromJson(
              json['pickupLocation'] as Map<String, dynamic>),
      destinationLocation: json['destinationLocation'] == null
          ? null
          : DestinationLocation.fromJson(
              json['destinationLocation'] as Map<String, dynamic>),
      pickupDateTime: json['pickupDateTime'] as String?,
      carType: (json['carType'] as List<dynamic>?)
          ?.map((e) => CarType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'pickupLocation': instance.pickupLocation,
      'destinationLocation': instance.destinationLocation,
      'pickupDateTime': instance.pickupDateTime,
      'carType': instance.carType,
    };

_$CarTypeImpl _$$CarTypeImplFromJson(Map<String, dynamic> json) =>
    _$CarTypeImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      passengerCapacity: json['passengerCapacity'] as String?,
      luggageWeightInKg: json['luggageWeightInKg'] as int?,
      luggageQuantity: json['luggageQuantity'] as int?,
      price: json['price'] as int?,
      pendingCancellationCharges: json['pendingCancellationCharges'] as int?,
    );

Map<String, dynamic> _$$CarTypeImplToJson(_$CarTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'passengerCapacity': instance.passengerCapacity,
      'luggageWeightInKg': instance.luggageWeightInKg,
      'luggageQuantity': instance.luggageQuantity,
      'price': instance.price,
      'pendingCancellationCharges': instance.pendingCancellationCharges,
    };
