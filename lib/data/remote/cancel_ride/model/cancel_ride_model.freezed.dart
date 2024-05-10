// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_ride_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CancelRideRequest _$CancelRideRequestFromJson(Map<String, dynamic> json) {
  return _CancelRideRequest.fromJson(json);
}

/// @nodoc
mixin _$CancelRideRequest {
  String? get rideId => throw _privateConstructorUsedError;
  String? get cancellationReason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CancelRideRequestCopyWith<CancelRideRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelRideRequestCopyWith<$Res> {
  factory $CancelRideRequestCopyWith(
          CancelRideRequest value, $Res Function(CancelRideRequest) then) =
      _$CancelRideRequestCopyWithImpl<$Res, CancelRideRequest>;
  @useResult
  $Res call({String? rideId, String? cancellationReason});
}

/// @nodoc
class _$CancelRideRequestCopyWithImpl<$Res, $Val extends CancelRideRequest>
    implements $CancelRideRequestCopyWith<$Res> {
  _$CancelRideRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideId = freezed,
    Object? cancellationReason = freezed,
  }) {
    return _then(_value.copyWith(
      rideId: freezed == rideId
          ? _value.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationReason: freezed == cancellationReason
          ? _value.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CancelRideRequestImplCopyWith<$Res>
    implements $CancelRideRequestCopyWith<$Res> {
  factory _$$CancelRideRequestImplCopyWith(_$CancelRideRequestImpl value,
          $Res Function(_$CancelRideRequestImpl) then) =
      __$$CancelRideRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? rideId, String? cancellationReason});
}

/// @nodoc
class __$$CancelRideRequestImplCopyWithImpl<$Res>
    extends _$CancelRideRequestCopyWithImpl<$Res, _$CancelRideRequestImpl>
    implements _$$CancelRideRequestImplCopyWith<$Res> {
  __$$CancelRideRequestImplCopyWithImpl(_$CancelRideRequestImpl _value,
      $Res Function(_$CancelRideRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideId = freezed,
    Object? cancellationReason = freezed,
  }) {
    return _then(_$CancelRideRequestImpl(
      rideId: freezed == rideId
          ? _value.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationReason: freezed == cancellationReason
          ? _value.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CancelRideRequestImpl implements _CancelRideRequest {
  const _$CancelRideRequestImpl({this.rideId, this.cancellationReason});

  factory _$CancelRideRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelRideRequestImplFromJson(json);

  @override
  final String? rideId;
  @override
  final String? cancellationReason;

  @override
  String toString() {
    return 'CancelRideRequest(rideId: $rideId, cancellationReason: $cancellationReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelRideRequestImpl &&
            (identical(other.rideId, rideId) || other.rideId == rideId) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rideId, cancellationReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelRideRequestImplCopyWith<_$CancelRideRequestImpl> get copyWith =>
      __$$CancelRideRequestImplCopyWithImpl<_$CancelRideRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelRideRequestImplToJson(
      this,
    );
  }
}

abstract class _CancelRideRequest implements CancelRideRequest {
  const factory _CancelRideRequest(
      {final String? rideId,
      final String? cancellationReason}) = _$CancelRideRequestImpl;

  factory _CancelRideRequest.fromJson(Map<String, dynamic> json) =
      _$CancelRideRequestImpl.fromJson;

  @override
  String? get rideId;
  @override
  String? get cancellationReason;
  @override
  @JsonKey(ignore: true)
  _$$CancelRideRequestImplCopyWith<_$CancelRideRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CancelRideResponse _$CancelRideResponseFromJson(Map<String, dynamic> json) {
  return _CancelRideResponse.fromJson(json);
}

/// @nodoc
mixin _$CancelRideResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CancelRideResponseCopyWith<CancelRideResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelRideResponseCopyWith<$Res> {
  factory $CancelRideResponseCopyWith(
          CancelRideResponse value, $Res Function(CancelRideResponse) then) =
      _$CancelRideResponseCopyWithImpl<$Res, CancelRideResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CancelRideResponseCopyWithImpl<$Res, $Val extends CancelRideResponse>
    implements $CancelRideResponseCopyWith<$Res> {
  _$CancelRideResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$CancelRideResponseImplCopyWith<$Res>
    implements $CancelRideResponseCopyWith<$Res> {
  factory _$$CancelRideResponseImplCopyWith(_$CancelRideResponseImpl value,
          $Res Function(_$CancelRideResponseImpl) then) =
      __$$CancelRideResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CancelRideResponseImplCopyWithImpl<$Res>
    extends _$CancelRideResponseCopyWithImpl<$Res, _$CancelRideResponseImpl>
    implements _$$CancelRideResponseImplCopyWith<$Res> {
  __$$CancelRideResponseImplCopyWithImpl(_$CancelRideResponseImpl _value,
      $Res Function(_$CancelRideResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CancelRideResponseImpl(
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
class _$CancelRideResponseImpl implements _CancelRideResponse {
  const _$CancelRideResponseImpl(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$CancelRideResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelRideResponseImplFromJson(json);

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
    return 'CancelRideResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelRideResponseImpl &&
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
  _$$CancelRideResponseImplCopyWith<_$CancelRideResponseImpl> get copyWith =>
      __$$CancelRideResponseImplCopyWithImpl<_$CancelRideResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelRideResponseImplToJson(
      this,
    );
  }
}

abstract class _CancelRideResponse implements CancelRideResponse {
  const factory _CancelRideResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$CancelRideResponseImpl;

  factory _CancelRideResponse.fromJson(Map<String, dynamic> json) =
      _$CancelRideResponseImpl.fromJson;

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
  _$$CancelRideResponseImplCopyWith<_$CancelRideResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl();

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  String toString() {
    return 'Data()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data() = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;
}
