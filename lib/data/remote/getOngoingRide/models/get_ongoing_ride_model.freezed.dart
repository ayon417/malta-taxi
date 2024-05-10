// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_ongoing_ride_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetOngoingRideRequestModel _$GetOngoingRideRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GetOngoingRideRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetOngoingRideRequestModel {
  String? get rideId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOngoingRideRequestModelCopyWith<GetOngoingRideRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOngoingRideRequestModelCopyWith<$Res> {
  factory $GetOngoingRideRequestModelCopyWith(GetOngoingRideRequestModel value,
          $Res Function(GetOngoingRideRequestModel) then) =
      _$GetOngoingRideRequestModelCopyWithImpl<$Res,
          GetOngoingRideRequestModel>;
  @useResult
  $Res call({String? rideId});
}

/// @nodoc
class _$GetOngoingRideRequestModelCopyWithImpl<$Res,
        $Val extends GetOngoingRideRequestModel>
    implements $GetOngoingRideRequestModelCopyWith<$Res> {
  _$GetOngoingRideRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideId = freezed,
  }) {
    return _then(_value.copyWith(
      rideId: freezed == rideId
          ? _value.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetOngoingRideRequestModelImplCopyWith<$Res>
    implements $GetOngoingRideRequestModelCopyWith<$Res> {
  factory _$$GetOngoingRideRequestModelImplCopyWith(
          _$GetOngoingRideRequestModelImpl value,
          $Res Function(_$GetOngoingRideRequestModelImpl) then) =
      __$$GetOngoingRideRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? rideId});
}

/// @nodoc
class __$$GetOngoingRideRequestModelImplCopyWithImpl<$Res>
    extends _$GetOngoingRideRequestModelCopyWithImpl<$Res,
        _$GetOngoingRideRequestModelImpl>
    implements _$$GetOngoingRideRequestModelImplCopyWith<$Res> {
  __$$GetOngoingRideRequestModelImplCopyWithImpl(
      _$GetOngoingRideRequestModelImpl _value,
      $Res Function(_$GetOngoingRideRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideId = freezed,
  }) {
    return _then(_$GetOngoingRideRequestModelImpl(
      rideId: freezed == rideId
          ? _value.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOngoingRideRequestModelImpl implements _GetOngoingRideRequestModel {
  const _$GetOngoingRideRequestModelImpl({this.rideId});

  factory _$GetOngoingRideRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetOngoingRideRequestModelImplFromJson(json);

  @override
  final String? rideId;

  @override
  String toString() {
    return 'GetOngoingRideRequestModel(rideId: $rideId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOngoingRideRequestModelImpl &&
            (identical(other.rideId, rideId) || other.rideId == rideId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rideId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOngoingRideRequestModelImplCopyWith<_$GetOngoingRideRequestModelImpl>
      get copyWith => __$$GetOngoingRideRequestModelImplCopyWithImpl<
          _$GetOngoingRideRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOngoingRideRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetOngoingRideRequestModel
    implements GetOngoingRideRequestModel {
  const factory _GetOngoingRideRequestModel({final String? rideId}) =
      _$GetOngoingRideRequestModelImpl;

  factory _GetOngoingRideRequestModel.fromJson(Map<String, dynamic> json) =
      _$GetOngoingRideRequestModelImpl.fromJson;

  @override
  String? get rideId;
  @override
  @JsonKey(ignore: true)
  _$$GetOngoingRideRequestModelImplCopyWith<_$GetOngoingRideRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetOngoingRideResponseModel _$GetOngoingRideResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetOngoingRideResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetOngoingRideResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOngoingRideResponseModelCopyWith<GetOngoingRideResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOngoingRideResponseModelCopyWith<$Res> {
  factory $GetOngoingRideResponseModelCopyWith(
          GetOngoingRideResponseModel value,
          $Res Function(GetOngoingRideResponseModel) then) =
      _$GetOngoingRideResponseModelCopyWithImpl<$Res,
          GetOngoingRideResponseModel>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetOngoingRideResponseModelCopyWithImpl<$Res,
        $Val extends GetOngoingRideResponseModel>
    implements $GetOngoingRideResponseModelCopyWith<$Res> {
  _$GetOngoingRideResponseModelCopyWithImpl(this._value, this._then);

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
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetOngoingRideResponseModelImplCopyWith<$Res>
    implements $GetOngoingRideResponseModelCopyWith<$Res> {
  factory _$$GetOngoingRideResponseModelImplCopyWith(
          _$GetOngoingRideResponseModelImpl value,
          $Res Function(_$GetOngoingRideResponseModelImpl) then) =
      __$$GetOngoingRideResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetOngoingRideResponseModelImplCopyWithImpl<$Res>
    extends _$GetOngoingRideResponseModelCopyWithImpl<$Res,
        _$GetOngoingRideResponseModelImpl>
    implements _$$GetOngoingRideResponseModelImplCopyWith<$Res> {
  __$$GetOngoingRideResponseModelImplCopyWithImpl(
      _$GetOngoingRideResponseModelImpl _value,
      $Res Function(_$GetOngoingRideResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetOngoingRideResponseModelImpl(
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
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetOngoingRideResponseModelImpl
    implements _GetOngoingRideResponseModel {
  const _$GetOngoingRideResponseModelImpl(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$GetOngoingRideResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetOngoingRideResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  @override
  final Data? data;

  @override
  String toString() {
    return 'GetOngoingRideResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOngoingRideResponseModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, isSuccess, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOngoingRideResponseModelImplCopyWith<_$GetOngoingRideResponseModelImpl>
      get copyWith => __$$GetOngoingRideResponseModelImplCopyWithImpl<
          _$GetOngoingRideResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOngoingRideResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetOngoingRideResponseModel
    implements GetOngoingRideResponseModel {
  const factory _GetOngoingRideResponseModel(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$GetOngoingRideResponseModelImpl;

  factory _GetOngoingRideResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetOngoingRideResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetOngoingRideResponseModelImplCopyWith<_$GetOngoingRideResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get id => throw _privateConstructorUsedError;
  String? get driverFirstName => throw _privateConstructorUsedError;
  String? get driverLastName => throw _privateConstructorUsedError;
  String? get driverImage => throw _privateConstructorUsedError;
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
  int? get distance => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String? id,
      String? driverFirstName,
      String? driverLastName,
      String? driverImage,
      PickupLocation? pickupLocation,
      DestinationLocation? destinationLocation,
      String? pickupDateTime,
      String? driverMobileNumber,
      String? carNumber,
      String? carName,
      String? carModel,
      String? rideStatus,
      bool? isPayment,
      int? distance,
      int? price});

  $PickupLocationCopyWith<$Res>? get pickupLocation;
  $DestinationLocationCopyWith<$Res>? get destinationLocation;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

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
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? driverFirstName,
      String? driverLastName,
      String? driverImage,
      PickupLocation? pickupLocation,
      DestinationLocation? destinationLocation,
      String? pickupDateTime,
      String? driverMobileNumber,
      String? carNumber,
      String? carName,
      String? carModel,
      String? rideStatus,
      bool? isPayment,
      int? distance,
      int? price});

  @override
  $PickupLocationCopyWith<$Res>? get pickupLocation;
  @override
  $DestinationLocationCopyWith<$Res>? get destinationLocation;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? driverFirstName = freezed,
    Object? driverLastName = freezed,
    Object? driverImage = freezed,
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
  }) {
    return _then(_$DataImpl(
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
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.id,
      this.driverFirstName,
      this.driverLastName,
      this.driverImage,
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
      this.price});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? driverFirstName;
  @override
  final String? driverLastName;
  @override
  final String? driverImage;
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
  final int? distance;
  @override
  final int? price;

  @override
  String toString() {
    return 'Data(id: $id, driverFirstName: $driverFirstName, driverLastName: $driverLastName, driverImage: $driverImage, pickupLocation: $pickupLocation, destinationLocation: $destinationLocation, pickupDateTime: $pickupDateTime, driverMobileNumber: $driverMobileNumber, carNumber: $carNumber, carName: $carName, carModel: $carModel, rideStatus: $rideStatus, isPayment: $isPayment, distance: $distance, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.driverFirstName, driverFirstName) ||
                other.driverFirstName == driverFirstName) &&
            (identical(other.driverLastName, driverLastName) ||
                other.driverLastName == driverLastName) &&
            (identical(other.driverImage, driverImage) ||
                other.driverImage == driverImage) &&
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
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      driverFirstName,
      driverLastName,
      driverImage,
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
      price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final String? id,
      final String? driverFirstName,
      final String? driverLastName,
      final String? driverImage,
      final PickupLocation? pickupLocation,
      final DestinationLocation? destinationLocation,
      final String? pickupDateTime,
      final String? driverMobileNumber,
      final String? carNumber,
      final String? carName,
      final String? carModel,
      final String? rideStatus,
      final bool? isPayment,
      final int? distance,
      final int? price}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get driverFirstName;
  @override
  String? get driverLastName;
  @override
  String? get driverImage;
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
  int? get distance;
  @override
  int? get price;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
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
