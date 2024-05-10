// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proceed_ride_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProceedRideRequestModel _$ProceedRideRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ProceedRideRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ProceedRideRequestModel {
  PickupLocation? get pickupLocation => throw _privateConstructorUsedError;
  DestinationLocation? get destinationLocation =>
      throw _privateConstructorUsedError;
  String? get pickupDateTime => throw _privateConstructorUsedError;
  String? get carType => throw _privateConstructorUsedError;
  bool? get isChildBooster => throw _privateConstructorUsedError;
  bool? get isPetFriendly => throw _privateConstructorUsedError;
  bool? get isWheelChair => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProceedRideRequestModelCopyWith<ProceedRideRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProceedRideRequestModelCopyWith<$Res> {
  factory $ProceedRideRequestModelCopyWith(ProceedRideRequestModel value,
          $Res Function(ProceedRideRequestModel) then) =
      _$ProceedRideRequestModelCopyWithImpl<$Res, ProceedRideRequestModel>;
  @useResult
  $Res call(
      {PickupLocation? pickupLocation,
      DestinationLocation? destinationLocation,
      String? pickupDateTime,
      String? carType,
      bool? isChildBooster,
      bool? isPetFriendly,
      bool? isWheelChair});

  $PickupLocationCopyWith<$Res>? get pickupLocation;
  $DestinationLocationCopyWith<$Res>? get destinationLocation;
}

/// @nodoc
class _$ProceedRideRequestModelCopyWithImpl<$Res,
        $Val extends ProceedRideRequestModel>
    implements $ProceedRideRequestModelCopyWith<$Res> {
  _$ProceedRideRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupLocation = freezed,
    Object? destinationLocation = freezed,
    Object? pickupDateTime = freezed,
    Object? carType = freezed,
    Object? isChildBooster = freezed,
    Object? isPetFriendly = freezed,
    Object? isWheelChair = freezed,
  }) {
    return _then(_value.copyWith(
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
      carType: freezed == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as String?,
      isChildBooster: freezed == isChildBooster
          ? _value.isChildBooster
          : isChildBooster // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPetFriendly: freezed == isPetFriendly
          ? _value.isPetFriendly
          : isPetFriendly // ignore: cast_nullable_to_non_nullable
              as bool?,
      isWheelChair: freezed == isWheelChair
          ? _value.isWheelChair
          : isWheelChair // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$ProceedRideRequestModelImplCopyWith<$Res>
    implements $ProceedRideRequestModelCopyWith<$Res> {
  factory _$$ProceedRideRequestModelImplCopyWith(
          _$ProceedRideRequestModelImpl value,
          $Res Function(_$ProceedRideRequestModelImpl) then) =
      __$$ProceedRideRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PickupLocation? pickupLocation,
      DestinationLocation? destinationLocation,
      String? pickupDateTime,
      String? carType,
      bool? isChildBooster,
      bool? isPetFriendly,
      bool? isWheelChair});

  @override
  $PickupLocationCopyWith<$Res>? get pickupLocation;
  @override
  $DestinationLocationCopyWith<$Res>? get destinationLocation;
}

/// @nodoc
class __$$ProceedRideRequestModelImplCopyWithImpl<$Res>
    extends _$ProceedRideRequestModelCopyWithImpl<$Res,
        _$ProceedRideRequestModelImpl>
    implements _$$ProceedRideRequestModelImplCopyWith<$Res> {
  __$$ProceedRideRequestModelImplCopyWithImpl(
      _$ProceedRideRequestModelImpl _value,
      $Res Function(_$ProceedRideRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupLocation = freezed,
    Object? destinationLocation = freezed,
    Object? pickupDateTime = freezed,
    Object? carType = freezed,
    Object? isChildBooster = freezed,
    Object? isPetFriendly = freezed,
    Object? isWheelChair = freezed,
  }) {
    return _then(_$ProceedRideRequestModelImpl(
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
      carType: freezed == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as String?,
      isChildBooster: freezed == isChildBooster
          ? _value.isChildBooster
          : isChildBooster // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPetFriendly: freezed == isPetFriendly
          ? _value.isPetFriendly
          : isPetFriendly // ignore: cast_nullable_to_non_nullable
              as bool?,
      isWheelChair: freezed == isWheelChair
          ? _value.isWheelChair
          : isWheelChair // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProceedRideRequestModelImpl implements _ProceedRideRequestModel {
  const _$ProceedRideRequestModelImpl(
      {this.pickupLocation,
      this.destinationLocation,
      this.pickupDateTime,
      this.carType,
      this.isChildBooster,
      this.isPetFriendly,
      this.isWheelChair});

  factory _$ProceedRideRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProceedRideRequestModelImplFromJson(json);

  @override
  final PickupLocation? pickupLocation;
  @override
  final DestinationLocation? destinationLocation;
  @override
  final String? pickupDateTime;
  @override
  final String? carType;
  @override
  final bool? isChildBooster;
  @override
  final bool? isPetFriendly;
  @override
  final bool? isWheelChair;

  @override
  String toString() {
    return 'ProceedRideRequestModel(pickupLocation: $pickupLocation, destinationLocation: $destinationLocation, pickupDateTime: $pickupDateTime, carType: $carType, isChildBooster: $isChildBooster, isPetFriendly: $isPetFriendly, isWheelChair: $isWheelChair)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProceedRideRequestModelImpl &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.destinationLocation, destinationLocation) ||
                other.destinationLocation == destinationLocation) &&
            (identical(other.pickupDateTime, pickupDateTime) ||
                other.pickupDateTime == pickupDateTime) &&
            (identical(other.carType, carType) || other.carType == carType) &&
            (identical(other.isChildBooster, isChildBooster) ||
                other.isChildBooster == isChildBooster) &&
            (identical(other.isPetFriendly, isPetFriendly) ||
                other.isPetFriendly == isPetFriendly) &&
            (identical(other.isWheelChair, isWheelChair) ||
                other.isWheelChair == isWheelChair));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pickupLocation,
      destinationLocation,
      pickupDateTime,
      carType,
      isChildBooster,
      isPetFriendly,
      isWheelChair);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProceedRideRequestModelImplCopyWith<_$ProceedRideRequestModelImpl>
      get copyWith => __$$ProceedRideRequestModelImplCopyWithImpl<
          _$ProceedRideRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProceedRideRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ProceedRideRequestModel implements ProceedRideRequestModel {
  const factory _ProceedRideRequestModel(
      {final PickupLocation? pickupLocation,
      final DestinationLocation? destinationLocation,
      final String? pickupDateTime,
      final String? carType,
      final bool? isChildBooster,
      final bool? isPetFriendly,
      final bool? isWheelChair}) = _$ProceedRideRequestModelImpl;

  factory _ProceedRideRequestModel.fromJson(Map<String, dynamic> json) =
      _$ProceedRideRequestModelImpl.fromJson;

  @override
  PickupLocation? get pickupLocation;
  @override
  DestinationLocation? get destinationLocation;
  @override
  String? get pickupDateTime;
  @override
  String? get carType;
  @override
  bool? get isChildBooster;
  @override
  bool? get isPetFriendly;
  @override
  bool? get isWheelChair;
  @override
  @JsonKey(ignore: true)
  _$$ProceedRideRequestModelImplCopyWith<_$ProceedRideRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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

ProceedRideResponseModel _$ProceedRideResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ProceedRideResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ProceedRideResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProceedRideResponseModelCopyWith<ProceedRideResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProceedRideResponseModelCopyWith<$Res> {
  factory $ProceedRideResponseModelCopyWith(ProceedRideResponseModel value,
          $Res Function(ProceedRideResponseModel) then) =
      _$ProceedRideResponseModelCopyWithImpl<$Res, ProceedRideResponseModel>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProceedRideResponseModelCopyWithImpl<$Res,
        $Val extends ProceedRideResponseModel>
    implements $ProceedRideResponseModelCopyWith<$Res> {
  _$ProceedRideResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ProceedRideResponseModelImplCopyWith<$Res>
    implements $ProceedRideResponseModelCopyWith<$Res> {
  factory _$$ProceedRideResponseModelImplCopyWith(
          _$ProceedRideResponseModelImpl value,
          $Res Function(_$ProceedRideResponseModelImpl) then) =
      __$$ProceedRideResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProceedRideResponseModelImplCopyWithImpl<$Res>
    extends _$ProceedRideResponseModelCopyWithImpl<$Res,
        _$ProceedRideResponseModelImpl>
    implements _$$ProceedRideResponseModelImplCopyWith<$Res> {
  __$$ProceedRideResponseModelImplCopyWithImpl(
      _$ProceedRideResponseModelImpl _value,
      $Res Function(_$ProceedRideResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ProceedRideResponseModelImpl(
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
class _$ProceedRideResponseModelImpl implements _ProceedRideResponseModel {
  const _$ProceedRideResponseModelImpl(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$ProceedRideResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProceedRideResponseModelImplFromJson(json);

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
    return 'ProceedRideResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProceedRideResponseModelImpl &&
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
  _$$ProceedRideResponseModelImplCopyWith<_$ProceedRideResponseModelImpl>
      get copyWith => __$$ProceedRideResponseModelImplCopyWithImpl<
          _$ProceedRideResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProceedRideResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ProceedRideResponseModel implements ProceedRideResponseModel {
  const factory _ProceedRideResponseModel(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$ProceedRideResponseModelImpl;

  factory _ProceedRideResponseModel.fromJson(Map<String, dynamic> json) =
      _$ProceedRideResponseModelImpl.fromJson;

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
  _$$ProceedRideResponseModelImplCopyWith<_$ProceedRideResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get id => throw _privateConstructorUsedError;
  String? get pickupLocationName => throw _privateConstructorUsedError;
  String? get destinationLocationName => throw _privateConstructorUsedError;
  bool? get isPayment => throw _privateConstructorUsedError;
  PickupLocation? get pickupLocation => throw _privateConstructorUsedError;
  DestinationLocation? get destinationLocation =>
      throw _privateConstructorUsedError;
  String? get pickupDateTime => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get rideStatus => throw _privateConstructorUsedError;

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
      String? pickupLocationName,
      String? destinationLocationName,
      bool? isPayment,
      PickupLocation? pickupLocation,
      DestinationLocation? destinationLocation,
      String? pickupDateTime,
      int? price,
      String? rideStatus});

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
    Object? pickupLocationName = freezed,
    Object? destinationLocationName = freezed,
    Object? isPayment = freezed,
    Object? pickupLocation = freezed,
    Object? destinationLocation = freezed,
    Object? pickupDateTime = freezed,
    Object? price = freezed,
    Object? rideStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLocationName: freezed == pickupLocationName
          ? _value.pickupLocationName
          : pickupLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationLocationName: freezed == destinationLocationName
          ? _value.destinationLocationName
          : destinationLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
      isPayment: freezed == isPayment
          ? _value.isPayment
          : isPayment // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      rideStatus: freezed == rideStatus
          ? _value.rideStatus
          : rideStatus // ignore: cast_nullable_to_non_nullable
              as String?,
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
      String? pickupLocationName,
      String? destinationLocationName,
      bool? isPayment,
      PickupLocation? pickupLocation,
      DestinationLocation? destinationLocation,
      String? pickupDateTime,
      int? price,
      String? rideStatus});

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
    Object? pickupLocationName = freezed,
    Object? destinationLocationName = freezed,
    Object? isPayment = freezed,
    Object? pickupLocation = freezed,
    Object? destinationLocation = freezed,
    Object? pickupDateTime = freezed,
    Object? price = freezed,
    Object? rideStatus = freezed,
  }) {
    return _then(_$DataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLocationName: freezed == pickupLocationName
          ? _value.pickupLocationName
          : pickupLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationLocationName: freezed == destinationLocationName
          ? _value.destinationLocationName
          : destinationLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
      isPayment: freezed == isPayment
          ? _value.isPayment
          : isPayment // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      rideStatus: freezed == rideStatus
          ? _value.rideStatus
          : rideStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.id,
      this.pickupLocationName,
      this.destinationLocationName,
      this.isPayment,
      this.pickupLocation,
      this.destinationLocation,
      this.pickupDateTime,
      this.price,
      this.rideStatus});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? pickupLocationName;
  @override
  final String? destinationLocationName;
  @override
  final bool? isPayment;
  @override
  final PickupLocation? pickupLocation;
  @override
  final DestinationLocation? destinationLocation;
  @override
  final String? pickupDateTime;
  @override
  final int? price;
  @override
  final String? rideStatus;

  @override
  String toString() {
    return 'Data(id: $id, pickupLocationName: $pickupLocationName, destinationLocationName: $destinationLocationName, isPayment: $isPayment, pickupLocation: $pickupLocation, destinationLocation: $destinationLocation, pickupDateTime: $pickupDateTime, price: $price, rideStatus: $rideStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pickupLocationName, pickupLocationName) ||
                other.pickupLocationName == pickupLocationName) &&
            (identical(
                    other.destinationLocationName, destinationLocationName) ||
                other.destinationLocationName == destinationLocationName) &&
            (identical(other.isPayment, isPayment) ||
                other.isPayment == isPayment) &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.destinationLocation, destinationLocation) ||
                other.destinationLocation == destinationLocation) &&
            (identical(other.pickupDateTime, pickupDateTime) ||
                other.pickupDateTime == pickupDateTime) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rideStatus, rideStatus) ||
                other.rideStatus == rideStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      pickupLocationName,
      destinationLocationName,
      isPayment,
      pickupLocation,
      destinationLocation,
      pickupDateTime,
      price,
      rideStatus);

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
      final String? pickupLocationName,
      final String? destinationLocationName,
      final bool? isPayment,
      final PickupLocation? pickupLocation,
      final DestinationLocation? destinationLocation,
      final String? pickupDateTime,
      final int? price,
      final String? rideStatus}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get pickupLocationName;
  @override
  String? get destinationLocationName;
  @override
  bool? get isPayment;
  @override
  PickupLocation? get pickupLocation;
  @override
  DestinationLocation? get destinationLocation;
  @override
  String? get pickupDateTime;
  @override
  int? get price;
  @override
  String? get rideStatus;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
