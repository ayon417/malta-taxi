// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ongoing_ride_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetOngoingRideRequestModelImpl _$$GetOngoingRideRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOngoingRideRequestModelImpl(
      rideId: json['rideId'] as String?,
    );

Map<String, dynamic> _$$GetOngoingRideRequestModelImplToJson(
        _$GetOngoingRideRequestModelImpl instance) =>
    <String, dynamic>{
      'rideId': instance.rideId,
    };

_$GetOngoingRideResponseModelImpl _$$GetOngoingRideResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOngoingRideResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetOngoingRideResponseModelImplToJson(
        _$GetOngoingRideResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as String?,
      driverFirstName: json['driverFirstName'] as String?,
      driverLastName: json['driverLastName'] as String?,
      driverImage: json['driverImage'] as String?,
      pickupLocation: json['pickupLocation'] == null
          ? null
          : PickupLocation.fromJson(
              json['pickupLocation'] as Map<String, dynamic>),
      destinationLocation: json['destinationLocation'] == null
          ? null
          : DestinationLocation.fromJson(
              json['destinationLocation'] as Map<String, dynamic>),
      pickupDateTime: json['pickupDateTime'] as String?,
      driverMobileNumber: json['driverMobileNumber'] as String?,
      carNumber: json['carNumber'] as String?,
      carName: json['carName'] as String?,
      carModel: json['carModel'] as String?,
      rideStatus: json['rideStatus'] as String?,
      isPayment: json['isPayment'] as bool?,
      distance: json['distance'] as int?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'driverFirstName': instance.driverFirstName,
      'driverLastName': instance.driverLastName,
      'driverImage': instance.driverImage,
      'pickupLocation': instance.pickupLocation,
      'destinationLocation': instance.destinationLocation,
      'pickupDateTime': instance.pickupDateTime,
      'driverMobileNumber': instance.driverMobileNumber,
      'carNumber': instance.carNumber,
      'carName': instance.carName,
      'carModel': instance.carModel,
      'rideStatus': instance.rideStatus,
      'isPayment': instance.isPayment,
      'distance': instance.distance,
      'price': instance.price,
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
