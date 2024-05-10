// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_ride_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchRideRequestModel _$SearchRideRequestModelFromJson(
    Map<String, dynamic> json) {
  return _SearchRideRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SearchRideRequestModel {
  PickupLocation? get pickupLocation => throw _privateConstructorUsedError;
  DestinationLocation? get destinationLocation =>
      throw _privateConstructorUsedError;
  String? get pickupDateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRideRequestModelCopyWith<SearchRideRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRideRequestModelCopyWith<$Res> {
  factory $SearchRideRequestModelCopyWith(SearchRideRequestModel value,
          $Res Function(SearchRideRequestModel) then) =
      _$SearchRideRequestModelCopyWithImpl<$Res, SearchRideRequestModel>;
  @useResult
  $Res call(
      {PickupLocation? pickupLocation,
      DestinationLocation? destinationLocation,
      String? pickupDateTime});

  $PickupLocationCopyWith<$Res>? get pickupLocation;
  $DestinationLocationCopyWith<$Res>? get destinationLocation;
}

/// @nodoc
class _$SearchRideRequestModelCopyWithImpl<$Res,
        $Val extends SearchRideRequestModel>
    implements $SearchRideRequestModelCopyWith<$Res> {
  _$SearchRideRequestModelCopyWithImpl(this._value, this._then);

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
abstract class _$$SearchRideRequestModelImplCopyWith<$Res>
    implements $SearchRideRequestModelCopyWith<$Res> {
  factory _$$SearchRideRequestModelImplCopyWith(
          _$SearchRideRequestModelImpl value,
          $Res Function(_$SearchRideRequestModelImpl) then) =
      __$$SearchRideRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PickupLocation? pickupLocation,
      DestinationLocation? destinationLocation,
      String? pickupDateTime});

  @override
  $PickupLocationCopyWith<$Res>? get pickupLocation;
  @override
  $DestinationLocationCopyWith<$Res>? get destinationLocation;
}

/// @nodoc
class __$$SearchRideRequestModelImplCopyWithImpl<$Res>
    extends _$SearchRideRequestModelCopyWithImpl<$Res,
        _$SearchRideRequestModelImpl>
    implements _$$SearchRideRequestModelImplCopyWith<$Res> {
  __$$SearchRideRequestModelImplCopyWithImpl(
      _$SearchRideRequestModelImpl _value,
      $Res Function(_$SearchRideRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupLocation = freezed,
    Object? destinationLocation = freezed,
    Object? pickupDateTime = freezed,
  }) {
    return _then(_$SearchRideRequestModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchRideRequestModelImpl implements _SearchRideRequestModel {
  const _$SearchRideRequestModelImpl(
      {this.pickupLocation, this.destinationLocation, this.pickupDateTime});

  factory _$SearchRideRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchRideRequestModelImplFromJson(json);

  @override
  final PickupLocation? pickupLocation;
  @override
  final DestinationLocation? destinationLocation;
  @override
  final String? pickupDateTime;

  @override
  String toString() {
    return 'SearchRideRequestModel(pickupLocation: $pickupLocation, destinationLocation: $destinationLocation, pickupDateTime: $pickupDateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRideRequestModelImpl &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.destinationLocation, destinationLocation) ||
                other.destinationLocation == destinationLocation) &&
            (identical(other.pickupDateTime, pickupDateTime) ||
                other.pickupDateTime == pickupDateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, pickupLocation, destinationLocation, pickupDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRideRequestModelImplCopyWith<_$SearchRideRequestModelImpl>
      get copyWith => __$$SearchRideRequestModelImplCopyWithImpl<
          _$SearchRideRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchRideRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SearchRideRequestModel implements SearchRideRequestModel {
  const factory _SearchRideRequestModel(
      {final PickupLocation? pickupLocation,
      final DestinationLocation? destinationLocation,
      final String? pickupDateTime}) = _$SearchRideRequestModelImpl;

  factory _SearchRideRequestModel.fromJson(Map<String, dynamic> json) =
      _$SearchRideRequestModelImpl.fromJson;

  @override
  PickupLocation? get pickupLocation;
  @override
  DestinationLocation? get destinationLocation;
  @override
  String? get pickupDateTime;
  @override
  @JsonKey(ignore: true)
  _$$SearchRideRequestModelImplCopyWith<_$SearchRideRequestModelImpl>
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

SearchRideResponseModel _$SearchRideResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SearchRideResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SearchRideResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRideResponseModelCopyWith<SearchRideResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRideResponseModelCopyWith<$Res> {
  factory $SearchRideResponseModelCopyWith(SearchRideResponseModel value,
          $Res Function(SearchRideResponseModel) then) =
      _$SearchRideResponseModelCopyWithImpl<$Res, SearchRideResponseModel>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SearchRideResponseModelCopyWithImpl<$Res,
        $Val extends SearchRideResponseModel>
    implements $SearchRideResponseModelCopyWith<$Res> {
  _$SearchRideResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$SearchRideResponseModelImplCopyWith<$Res>
    implements $SearchRideResponseModelCopyWith<$Res> {
  factory _$$SearchRideResponseModelImplCopyWith(
          _$SearchRideResponseModelImpl value,
          $Res Function(_$SearchRideResponseModelImpl) then) =
      __$$SearchRideResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SearchRideResponseModelImplCopyWithImpl<$Res>
    extends _$SearchRideResponseModelCopyWithImpl<$Res,
        _$SearchRideResponseModelImpl>
    implements _$$SearchRideResponseModelImplCopyWith<$Res> {
  __$$SearchRideResponseModelImplCopyWithImpl(
      _$SearchRideResponseModelImpl _value,
      $Res Function(_$SearchRideResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SearchRideResponseModelImpl(
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
class _$SearchRideResponseModelImpl implements _SearchRideResponseModel {
  const _$SearchRideResponseModelImpl(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$SearchRideResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchRideResponseModelImplFromJson(json);

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
    return 'SearchRideResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRideResponseModelImpl &&
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
  _$$SearchRideResponseModelImplCopyWith<_$SearchRideResponseModelImpl>
      get copyWith => __$$SearchRideResponseModelImplCopyWithImpl<
          _$SearchRideResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchRideResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SearchRideResponseModel implements SearchRideResponseModel {
  const factory _SearchRideResponseModel(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$SearchRideResponseModelImpl;

  factory _SearchRideResponseModel.fromJson(Map<String, dynamic> json) =
      _$SearchRideResponseModelImpl.fromJson;

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
  _$$SearchRideResponseModelImplCopyWith<_$SearchRideResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  PickupLocation? get pickupLocation => throw _privateConstructorUsedError;
  DestinationLocation? get destinationLocation =>
      throw _privateConstructorUsedError;
  String? get pickupDateTime => throw _privateConstructorUsedError;
  List<CarType>? get carType => throw _privateConstructorUsedError;

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
      {PickupLocation? pickupLocation,
      DestinationLocation? destinationLocation,
      String? pickupDateTime,
      List<CarType>? carType});

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
    Object? pickupLocation = freezed,
    Object? destinationLocation = freezed,
    Object? pickupDateTime = freezed,
    Object? carType = freezed,
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
              as List<CarType>?,
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
      {PickupLocation? pickupLocation,
      DestinationLocation? destinationLocation,
      String? pickupDateTime,
      List<CarType>? carType});

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
    Object? pickupLocation = freezed,
    Object? destinationLocation = freezed,
    Object? pickupDateTime = freezed,
    Object? carType = freezed,
  }) {
    return _then(_$DataImpl(
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
          ? _value._carType
          : carType // ignore: cast_nullable_to_non_nullable
              as List<CarType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.pickupLocation,
      this.destinationLocation,
      this.pickupDateTime,
      final List<CarType>? carType})
      : _carType = carType;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final PickupLocation? pickupLocation;
  @override
  final DestinationLocation? destinationLocation;
  @override
  final String? pickupDateTime;
  final List<CarType>? _carType;
  @override
  List<CarType>? get carType {
    final value = _carType;
    if (value == null) return null;
    if (_carType is EqualUnmodifiableListView) return _carType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(pickupLocation: $pickupLocation, destinationLocation: $destinationLocation, pickupDateTime: $pickupDateTime, carType: $carType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.destinationLocation, destinationLocation) ||
                other.destinationLocation == destinationLocation) &&
            (identical(other.pickupDateTime, pickupDateTime) ||
                other.pickupDateTime == pickupDateTime) &&
            const DeepCollectionEquality().equals(other._carType, _carType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pickupLocation,
      destinationLocation,
      pickupDateTime,
      const DeepCollectionEquality().hash(_carType));

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
      {final PickupLocation? pickupLocation,
      final DestinationLocation? destinationLocation,
      final String? pickupDateTime,
      final List<CarType>? carType}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  PickupLocation? get pickupLocation;
  @override
  DestinationLocation? get destinationLocation;
  @override
  String? get pickupDateTime;
  @override
  List<CarType>? get carType;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CarType _$CarTypeFromJson(Map<String, dynamic> json) {
  return _CarType.fromJson(json);
}

/// @nodoc
mixin _$CarType {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get passengerCapacity => throw _privateConstructorUsedError;
  int? get luggageWeightInKg => throw _privateConstructorUsedError;
  int? get luggageQuantity => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get pendingCancellationCharges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarTypeCopyWith<CarType> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarTypeCopyWith<$Res> {
  factory $CarTypeCopyWith(CarType value, $Res Function(CarType) then) =
      _$CarTypeCopyWithImpl<$Res, CarType>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? image,
      String? passengerCapacity,
      int? luggageWeightInKg,
      int? luggageQuantity,
      int? price,
      int? pendingCancellationCharges});
}

/// @nodoc
class _$CarTypeCopyWithImpl<$Res, $Val extends CarType>
    implements $CarTypeCopyWith<$Res> {
  _$CarTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? passengerCapacity = freezed,
    Object? luggageWeightInKg = freezed,
    Object? luggageQuantity = freezed,
    Object? price = freezed,
    Object? pendingCancellationCharges = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      passengerCapacity: freezed == passengerCapacity
          ? _value.passengerCapacity
          : passengerCapacity // ignore: cast_nullable_to_non_nullable
              as String?,
      luggageWeightInKg: freezed == luggageWeightInKg
          ? _value.luggageWeightInKg
          : luggageWeightInKg // ignore: cast_nullable_to_non_nullable
              as int?,
      luggageQuantity: freezed == luggageQuantity
          ? _value.luggageQuantity
          : luggageQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      pendingCancellationCharges: freezed == pendingCancellationCharges
          ? _value.pendingCancellationCharges
          : pendingCancellationCharges // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarTypeImplCopyWith<$Res> implements $CarTypeCopyWith<$Res> {
  factory _$$CarTypeImplCopyWith(
          _$CarTypeImpl value, $Res Function(_$CarTypeImpl) then) =
      __$$CarTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? image,
      String? passengerCapacity,
      int? luggageWeightInKg,
      int? luggageQuantity,
      int? price,
      int? pendingCancellationCharges});
}

/// @nodoc
class __$$CarTypeImplCopyWithImpl<$Res>
    extends _$CarTypeCopyWithImpl<$Res, _$CarTypeImpl>
    implements _$$CarTypeImplCopyWith<$Res> {
  __$$CarTypeImplCopyWithImpl(
      _$CarTypeImpl _value, $Res Function(_$CarTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? passengerCapacity = freezed,
    Object? luggageWeightInKg = freezed,
    Object? luggageQuantity = freezed,
    Object? price = freezed,
    Object? pendingCancellationCharges = freezed,
  }) {
    return _then(_$CarTypeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      passengerCapacity: freezed == passengerCapacity
          ? _value.passengerCapacity
          : passengerCapacity // ignore: cast_nullable_to_non_nullable
              as String?,
      luggageWeightInKg: freezed == luggageWeightInKg
          ? _value.luggageWeightInKg
          : luggageWeightInKg // ignore: cast_nullable_to_non_nullable
              as int?,
      luggageQuantity: freezed == luggageQuantity
          ? _value.luggageQuantity
          : luggageQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      pendingCancellationCharges: freezed == pendingCancellationCharges
          ? _value.pendingCancellationCharges
          : pendingCancellationCharges // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarTypeImpl implements _CarType {
  const _$CarTypeImpl(
      {this.id,
      this.name,
      this.description,
      this.image,
      this.passengerCapacity,
      this.luggageWeightInKg,
      this.luggageQuantity,
      this.price,
      this.pendingCancellationCharges});

  factory _$CarTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarTypeImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final String? passengerCapacity;
  @override
  final int? luggageWeightInKg;
  @override
  final int? luggageQuantity;
  @override
  final int? price;
  @override
  final int? pendingCancellationCharges;

  @override
  String toString() {
    return 'CarType(id: $id, name: $name, description: $description, image: $image, passengerCapacity: $passengerCapacity, luggageWeightInKg: $luggageWeightInKg, luggageQuantity: $luggageQuantity, price: $price, pendingCancellationCharges: $pendingCancellationCharges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.passengerCapacity, passengerCapacity) ||
                other.passengerCapacity == passengerCapacity) &&
            (identical(other.luggageWeightInKg, luggageWeightInKg) ||
                other.luggageWeightInKg == luggageWeightInKg) &&
            (identical(other.luggageQuantity, luggageQuantity) ||
                other.luggageQuantity == luggageQuantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.pendingCancellationCharges,
                    pendingCancellationCharges) ||
                other.pendingCancellationCharges ==
                    pendingCancellationCharges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      image,
      passengerCapacity,
      luggageWeightInKg,
      luggageQuantity,
      price,
      pendingCancellationCharges);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarTypeImplCopyWith<_$CarTypeImpl> get copyWith =>
      __$$CarTypeImplCopyWithImpl<_$CarTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarTypeImplToJson(
      this,
    );
  }
}

abstract class _CarType implements CarType {
  const factory _CarType(
      {final String? id,
      final String? name,
      final String? description,
      final String? image,
      final String? passengerCapacity,
      final int? luggageWeightInKg,
      final int? luggageQuantity,
      final int? price,
      final int? pendingCancellationCharges}) = _$CarTypeImpl;

  factory _CarType.fromJson(Map<String, dynamic> json) = _$CarTypeImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get image;
  @override
  String? get passengerCapacity;
  @override
  int? get luggageWeightInKg;
  @override
  int? get luggageQuantity;
  @override
  int? get price;
  @override
  int? get pendingCancellationCharges;
  @override
  @JsonKey(ignore: true)
  _$$CarTypeImplCopyWith<_$CarTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
