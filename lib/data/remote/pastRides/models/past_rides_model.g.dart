// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'past_rides_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PastRidesResponseModelImpl _$$PastRidesResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PastRidesResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PastRidesResponseModelImplToJson(
        _$PastRidesResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: json['id'] as String?,
      driverFirstName: json['driverFirstName'] as String?,
      driverLastName: json['driverLastName'] as String?,
      driverImage: json['driverImage'] as String?,
      carImage: json['carImage'] as String?,
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
      distance: json['distance'] as String?,
      price: json['price'] as int?,
      duration: json['duration'] as String?,
      date: json['date'] as String?,
      cancellationAmount: json['cancellationAmount'] as int?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'driverFirstName': instance.driverFirstName,
      'driverLastName': instance.driverLastName,
      'driverImage': instance.driverImage,
      'carImage': instance.carImage,
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
      'duration': instance.duration,
      'date': instance.date,
      'cancellationAmount': instance.cancellationAmount,
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
