// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'past_rides_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PastRidesResponseModel _$PastRidesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PastRidesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PastRidesResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PastRidesResponseModelCopyWith<PastRidesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PastRidesResponseModelCopyWith<$Res> {
  factory $PastRidesResponseModelCopyWith(PastRidesResponseModel value,
          $Res Function(PastRidesResponseModel) then) =
      _$PastRidesResponseModelCopyWithImpl<$Res, PastRidesResponseModel>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Datum>? data});
}

/// @nodoc
class _$PastRidesResponseModelCopyWithImpl<$Res,
        $Val extends PastRidesResponseModel>
    implements $PastRidesResponseModelCopyWith<$Res> {
  _$PastRidesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PastRidesResponseModelImplCopyWith<$Res>
    implements $PastRidesResponseModelCopyWith<$Res> {
  factory _$$PastRidesResponseModelImplCopyWith(
          _$PastRidesResponseModelImpl value,
          $Res Function(_$PastRidesResponseModelImpl) then) =
      __$$PastRidesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Datum>? data});
}

/// @nodoc
class __$$PastRidesResponseModelImplCopyWithImpl<$Res>
    extends _$PastRidesResponseModelCopyWithImpl<$Res,
        _$PastRidesResponseModelImpl>
    implements _$$PastRidesResponseModelImplCopyWith<$Res> {
  __$$PastRidesResponseModelImplCopyWithImpl(
      _$PastRidesResponseModelImpl _value,
      $Res Function(_$PastRidesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PastRidesResponseModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PastRidesResponseModelImpl implements _PastRidesResponseModel {
  const _$PastRidesResponseModelImpl(
      {this.code, this.message, this.isSuccess, final List<Datum>? data})
      : _data = data;

  factory _$PastRidesResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PastRidesResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PastRidesResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PastRidesResponseModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, isSuccess,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PastRidesResponseModelImplCopyWith<_$PastRidesResponseModelImpl>
      get copyWith => __$$PastRidesResponseModelImplCopyWithImpl<
          _$PastRidesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PastRidesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PastRidesResponseModel implements PastRidesResponseModel {
  const factory _PastRidesResponseModel(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final List<Datum>? data}) = _$PastRidesResponseModelImpl;

  factory _PastRidesResponseModel.fromJson(Map<String, dynamic> json) =
      _$PastRidesResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  List<Datum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$PastRidesResponseModelImplCopyWith<_$PastRidesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  String? get id => throw _privateConstructorUsedError;
  String? get driverFirstName => throw _privateConstructorUsedError;
  String? get driverLastName => throw _privateConstructorUsedError;
  String? get driverImage => throw _privateConstructorUsedError;
  String? get carImage => throw _privateConstructorUsedError;
  PickupLocation? get pickupLocation => throw _privateConstructorUsedError;
  DestinationLocation? get destinationLocation =>
      throw _privateConstructorUsedError;
  String? get pickupDateTime => throw _privateConstructorUsedError;
  String? get driverMobileNumber => throw _privateConstructorUsedError;
  String? get carNumber => throw _privateConstructorUsedError;
  String? get carName => throw _privateConstructorUsedError;
  String? get carModel => throw _privateConstructorUsedError;
  String? get rideStatus => throw _privateConstructorUsedError;
  bool? get isPayment => throw _privateConstructorUsedError;
  String? get distance => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  int? get cancellationAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {String? id,
      String? driverFirstName,
      String? driverLastName,
      String? driverImage,
      String? carImage,
      PickupLocation? pickupLocation,
      DestinationLocation? destinationLocation,
      String? pickupDateTime,
      String? driverMobileNumber,
      String? carNumber,
      String? carName,
      String? carModel,
      String? rideStatus,
      bool? isPayment,
      String? distance,
      int? price,
      String? duration,
      String? date,
      int? cancellationAmount});

  $PickupLocationCopyWith<$Res>? get pickupLocation;
  $DestinationLocationCopyWith<$Res>? get destinationLocation;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? driverFirstName = freezed,
    Object? driverLastName = freezed,
    Object? driverImage = freezed,
    Object? carImage = freezed,
    Object? pickupLocation = freezed,
    Object? destinationLocation = freezed,
    Object? pickupDateTime = freezed,
    Object? driverMobileNumber = freezed,
    Object? carNumber = freezed,
    Object? carName = freezed,
    Object? carModel = freezed,
    Object? rideStatus = freezed,
    Object? isPayment = freezed,
    Object? distance = freezed,
    Object? price = freezed,
    Object? duration = freezed,
    Object? date = freezed,
    Object? cancellationAmount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      driverFirstName: freezed == driverFirstName
          ? _value.driverFirstName
          : driverFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverLastName: freezed == driverLastName
          ? _value.driverLastName
          : driverLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverImage: freezed == driverImage
          ? _value.driverImage
          : driverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      carImage: freezed == carImage
          ? _value.carImage
          : carImage // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLocation: freezed == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as PickupLocation?,
      destinationLocation: freezed == destinationLocation
          ? _value.destinationLocation
          : destinationLocation // ignore: cast_nullable_to_non_nullable
              as DestinationLocation?,
      pickupDateTime: freezed == pickupDateTime
          ? _value.pickupDateTime
          : pickupDateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      driverMobileNumber: freezed == driverMobileNumber
          ? _value.driverMobileNumber
          : driverMobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      carNumber: freezed == carNumber
          ? _value.carNumber
          : carNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      carName: freezed == carName
          ? _value.carName
          : carName // ignore: cast_nullable_to_non_nullable
              as String?,
      carModel: freezed == carModel
          ? _value.carModel
          : carModel // ignore: cast_nullable_to_non_nullable
              as String?,
      rideStatus: freezed == rideStatus
          ? _value.rideStatus
          : rideStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isPayment: freezed == isPayment
          ? _value.isPayment
          : isPayment // ignore: cast_nullable_to_non_nullable
              as bool?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationAmount: freezed == cancellationAmount
          ? _value.cancellationAmount
          : cancellationAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PickupLocationCopyWith<$Res>? get pickupLocation {
    if (_value.pickupLocation == null) {
      return null;
    }

    return $PickupLocationCopyWith<$Res>(_value.pickupLocation!, (value) {
      return _then(_value.copyWith(pickupLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DestinationLocationCopyWith<$Res>? get destinationLocation {
    if (_value.destinationLocation == null) {
      return null;
    }

    return $DestinationLocationCopyWith<$Res>(_value.destinationLocation!,
        (value) {
      return _then(_value.copyWith(destinationLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? driverFirstName,
      String? driverLastName,
      String? driverImage,
      String? carImage,
      PickupLocation? pickupLocation,
      DestinationLocation? destinationLocation,
      String? pickupDateTime,
      String? driverMobileNumber,
      String? carNumber,
      String? carName,
      String? carModel,
      String? rideStatus,
      bool? isPayment,
      String? distance,
      int? price,
      String? duration,
      String? date,
      int? cancellationAmount});

  @override
  $PickupLocationCopyWith<$Res>? get pickupLocation;
  @override
  $DestinationLocationCopyWith<$Res>? get destinationLocation;
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? driverFirstName = freezed,
    Object? driverLastName = freezed,
    Object? driverImage = freezed,
    Object? carImage = freezed,
    Object? pickupLocation = freezed,
    Object? destinationLocation = freezed,
    Object? pickupDateTime = freezed,
    Object? driverMobileNumber = freezed,
    Object? carNumber = freezed,
    Object? carName = freezed,
    Object? carModel = freezed,
    Object? rideStatus = freezed,
    Object? isPayment = freezed,
    Object? distance = freezed,
    Object? price = freezed,
    Object? duration = freezed,
    Object? date = freezed,
    Object? cancellationAmount = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      driverFirstName: freezed == driverFirstName
          ? _value.driverFirstName
          : driverFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverLastName: freezed == driverLastName
          ? _value.driverLastName
          : driverLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverImage: freezed == driverImage
          ? _value.driverImage
          : driverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      carImage: freezed == carImage
          ? _value.carImage
          : carImage // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLocation: freezed == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as PickupLocation?,
      destinationLocation: freezed == destinationLocation
          ? _value.destinationLocation
          : destinationLocation // ignore: cast_nullable_to_non_nullable
              as DestinationLocation?,
      pickupDateTime: freezed == pickupDateTime
          ? _value.pickupDateTime
          : pickupDateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      driverMobileNumber: freezed == driverMobileNumber
          ? _value.driverMobileNumber
          : driverMobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      carNumber: freezed == carNumber
          ? _value.carNumber
          : carNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      carName: freezed == carName
          ? _value.carName
          : carName // ignore: cast_nullable_to_non_nullable
              as String?,
      carModel: freezed == carModel
          ? _value.carModel
          : carModel // ignore: cast_nullable_to_non_nullable
              as String?,
      rideStatus: freezed == rideStatus
          ? _value.rideStatus
          : rideStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isPayment: freezed == isPayment
          ? _value.isPayment
          : isPayment // ignore: cast_nullable_to_non_nullable
              as bool?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationAmount: freezed == cancellationAmount
          ? _value.cancellationAmount
          : cancellationAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {this.id,
      this.driverFirstName,
      this.driverLastName,
      this.driverImage,
      this.carImage,
      this.pickupLocation,
      this.destinationLocation,
      this.pickupDateTime,
      this.driverMobileNumber,
      this.carNumber,
      this.carName,
      this.carModel,
      this.rideStatus,
      this.isPayment,
      this.distance,
      this.price,
      this.duration,
      this.date,
      this.cancellationAmount});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  final String? id;
  @override
  final String? driverFirstName;
  @override
  final String? driverLastName;
  @override
  final String? driverImage;
  @override
  final String? carImage;
  @override
  final PickupLocation? pickupLocation;
  @override
  final DestinationLocation? destinationLocation;
  @override
  final String? pickupDateTime;
  @override
  final String? driverMobileNumber;
  @override
  final String? carNumber;
  @override
  final String? carName;
  @override
  final String? carModel;
  @override
  final String? rideStatus;
  @override
  final bool? isPayment;
  @override
  final String? distance;
  @override
  final int? price;
  @override
  final String? duration;
  @override
  final String? date;
  @override
  final int? cancellationAmount;

  @override
  String toString() {
    return 'Datum(id: $id, driverFirstName: $driverFirstName, driverLastName: $driverLastName, driverImage: $driverImage, carImage: $carImage, pickupLocation: $pickupLocation, destinationLocation: $destinationLocation, pickupDateTime: $pickupDateTime, driverMobileNumber: $driverMobileNumber, carNumber: $carNumber, carName: $carName, carModel: $carModel, rideStatus: $rideStatus, isPayment: $isPayment, distance: $distance, price: $price, duration: $duration, date: $date, cancellationAmount: $cancellationAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.driverFirstName, driverFirstName) ||
                other.driverFirstName == driverFirstName) &&
            (identical(other.driverLastName, driverLastName) ||
                other.driverLastName == driverLastName) &&
            (identical(other.driverImage, driverImage) ||
                other.driverImage == driverImage) &&
            (identical(other.carImage, carImage) ||
                other.carImage == carImage) &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.destinationLocation, destinationLocation) ||
                other.destinationLocation == destinationLocation) &&
            (identical(other.pickupDateTime, pickupDateTime) ||
                other.pickupDateTime == pickupDateTime) &&
            (identical(other.driverMobileNumber, driverMobileNumber) ||
                other.driverMobileNumber == driverMobileNumber) &&
            (identical(other.carNumber, carNumber) ||
                other.carNumber == carNumber) &&
            (identical(other.carName, carName) || other.carName == carName) &&
            (identical(other.carModel, carModel) ||
                other.carModel == carModel) &&
            (identical(other.rideStatus, rideStatus) ||
                other.rideStatus == rideStatus) &&
            (identical(other.isPayment, isPayment) ||
                other.isPayment == isPayment) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.cancellationAmount, cancellationAmount) ||
                other.cancellationAmount == cancellationAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        driverFirstName,
        driverLastName,
        driverImage,
        carImage,
        pickupLocation,
        destinationLocation,
        pickupDateTime,
        driverMobileNumber,
        carNumber,
        carName,
        carModel,
        rideStatus,
        isPayment,
        distance,
        price,
        duration,
        date,
        cancellationAmount
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {final String? id,
      final String? driverFirstName,
      final String? driverLastName,
      final String? driverImage,
      final String? carImage,
      final PickupLocation? pickupLocation,
      final DestinationLocation? destinationLocation,
      final String? pickupDateTime,
      final String? driverMobileNumber,
      final String? carNumber,
      final String? carName,
      final String? carModel,
      final String? rideStatus,
      final bool? isPayment,
      final String? distance,
      final int? price,
      final String? duration,
      final String? date,
      final int? cancellationAmount}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  String? get id;
  @override
  String? get driverFirstName;
  @override
  String? get driverLastName;
  @override
  String? get driverImage;
  @override
  String? get carImage;
  @override
  PickupLocation? get pickupLocation;
  @override
  DestinationLocation? get destinationLocation;
  @override
  String? get pickupDateTime;
  @override
  String? get driverMobileNumber;
  @override
  String? get carNumber;
  @override
  String? get carName;
  @override
  String? get carModel;
  @override
  String? get rideStatus;
  @override
  bool? get isPayment;
  @override
  String? get distance;
  @override
  int? get price;
  @override
  String? get duration;
  @override
  String? get date;
  @override
  int? get cancellationAmount;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DestinationLocation _$DestinationLocationFromJson(Map<String, dynamic> json) {
  return _DestinationLocation.fromJson(json);
}

/// @nodoc
mixin _$DestinationLocation {
  String? get type => throw _privateConstructorUsedError;
  List<double>? get coordinates => throw _privateConstructorUsedError;
  String? get destinationLocationName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DestinationLocationCopyWith<DestinationLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationLocationCopyWith<$Res> {
  factory $DestinationLocationCopyWith(
          DestinationLocation value, $Res Function(DestinationLocation) then) =
      _$DestinationLocationCopyWithImpl<$Res, DestinationLocation>;
  @useResult
  $Res call(
      {String? type,
      List<double>? coordinates,
      String? destinationLocationName});
}

/// @nodoc
class _$DestinationLocationCopyWithImpl<$Res, $Val extends DestinationLocation>
    implements $DestinationLocationCopyWith<$Res> {
  _$DestinationLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
    Object? destinationLocationName = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      destinationLocationName: freezed == destinationLocationName
          ? _value.destinationLocationName
          : destinationLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DestinationLocationImplCopyWith<$Res>
    implements $DestinationLocationCopyWith<$Res> {
  factory _$$DestinationLocationImplCopyWith(_$DestinationLocationImpl value,
          $Res Function(_$DestinationLocationImpl) then) =
      __$$DestinationLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type,
      List<double>? coordinates,
      String? destinationLocationName});
}

/// @nodoc
class __$$DestinationLocationImplCopyWithImpl<$Res>
    extends _$DestinationLocationCopyWithImpl<$Res, _$DestinationLocationImpl>
    implements _$$DestinationLocationImplCopyWith<$Res> {
  __$$DestinationLocationImplCopyWithImpl(_$DestinationLocationImpl _value,
      $Res Function(_$DestinationLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
    Object? destinationLocationName = freezed,
  }) {
    return _then(_$DestinationLocationImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      destinationLocationName: freezed == destinationLocationName
          ? _value.destinationLocationName
          : destinationLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DestinationLocationImpl implements _DestinationLocation {
  const _$DestinationLocationImpl(
      {this.type,
      final List<double>? coordinates,
      this.destinationLocationName})
      : _coordinates = coordinates;

  factory _$DestinationLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DestinationLocationImplFromJson(json);

  @override
  final String? type;
  final List<double>? _coordinates;
  @override
  List<double>? get coordinates {
    final value = _coordinates;
    if (value == null) return null;
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? destinationLocationName;

  @override
  String toString() {
    return 'DestinationLocation(type: $type, coordinates: $coordinates, destinationLocationName: $destinationLocationName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationLocationImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates) &&
            (identical(
                    other.destinationLocationName, destinationLocationName) ||
                other.destinationLocationName == destinationLocationName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(_coordinates),
      destinationLocationName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinationLocationImplCopyWith<_$DestinationLocationImpl> get copyWith =>
      __$$DestinationLocationImplCopyWithImpl<_$DestinationLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DestinationLocationImplToJson(
      this,
    );
  }
}

abstract class _DestinationLocation implements DestinationLocation {
  const factory _DestinationLocation(
      {final String? type,
      final List<double>? coordinates,
      final String? destinationLocationName}) = _$DestinationLocationImpl;

  factory _DestinationLocation.fromJson(Map<String, dynamic> json) =
      _$DestinationLocationImpl.fromJson;

  @override
  String? get type;
  @override
  List<double>? get coordinates;
  @override
  String? get destinationLocationName;
  @override
  @JsonKey(ignore: true)
  _$$DestinationLocationImplCopyWith<_$DestinationLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PickupLocation _$PickupLocationFromJson(Map<String, dynamic> json) {
  return _PickupLocation.fromJson(json);
}

/// @nodoc
mixin _$PickupLocation {
  String? get type => throw _privateConstructorUsedError;
  List<double>? get coordinates => throw _privateConstructorUsedError;
  String? get pickupLocationName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PickupLocationCopyWith<PickupLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickupLocationCopyWith<$Res> {
  factory $PickupLocationCopyWith(
          PickupLocation value, $Res Function(PickupLocation) then) =
      _$PickupLocationCopyWithImpl<$Res, PickupLocation>;
  @useResult
  $Res call(
      {String? type, List<double>? coordinates, String? pickupLocationName});
}

/// @nodoc
class _$PickupLocationCopyWithImpl<$Res, $Val extends PickupLocation>
    implements $PickupLocationCopyWith<$Res> {
  _$PickupLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
    Object? pickupLocationName = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      pickupLocationName: freezed == pickupLocationName
          ? _value.pickupLocationName
          : pickupLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PickupLocationImplCopyWith<$Res>
    implements $PickupLocationCopyWith<$Res> {
  factory _$$PickupLocationImplCopyWith(_$PickupLocationImpl value,
          $Res Function(_$PickupLocationImpl) then) =
      __$$PickupLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type, List<double>? coordinates, String? pickupLocationName});
}

/// @nodoc
class __$$PickupLocationImplCopyWithImpl<$Res>
    extends _$PickupLocationCopyWithImpl<$Res, _$PickupLocationImpl>
    implements _$$PickupLocationImplCopyWith<$Res> {
  __$$PickupLocationImplCopyWithImpl(
      _$PickupLocationImpl _value, $Res Function(_$PickupLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
    Object? pickupLocationName = freezed,
  }) {
    return _then(_$PickupLocationImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      pickupLocationName: freezed == pickupLocationName
          ? _value.pickupLocationName
          : pickupLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PickupLocationImpl implements _PickupLocation {
  const _$PickupLocationImpl(
      {this.type, final List<double>? coordinates, this.pickupLocationName})
      : _coordinates = coordinates;

  factory _$PickupLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PickupLocationImplFromJson(json);

  @override
  final String? type;
  final List<double>? _coordinates;
  @override
  List<double>? get coordinates {
    final value = _coordinates;
    if (value == null) return null;
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? pickupLocationName;

  @override
  String toString() {
    return 'PickupLocation(type: $type, coordinates: $coordinates, pickupLocationName: $pickupLocationName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickupLocationImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates) &&
            (identical(other.pickupLocationName, pickupLocationName) ||
                other.pickupLocationName == pickupLocationName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type,
      const DeepCollectionEquality().hash(_coordinates), pickupLocationName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickupLocationImplCopyWith<_$PickupLocationImpl> get copyWith =>
      __$$PickupLocationImplCopyWithImpl<_$PickupLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PickupLocationImplToJson(
      this,
    );
  }
}

abstract class _PickupLocation implements PickupLocation {
  const factory _PickupLocation(
      {final String? type,
      final List<double>? coordinates,
      final String? pickupLocationName}) = _$PickupLocationImpl;

  factory _PickupLocation.fromJson(Map<String, dynamic> json) =
      _$PickupLocationImpl.fromJson;

  @override
  String? get type;
  @override
  List<double>? get coordinates;
  @override
  String? get pickupLocationName;
  @override
  @JsonKey(ignore: true)
  _$$PickupLocationImplCopyWith<_$PickupLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
