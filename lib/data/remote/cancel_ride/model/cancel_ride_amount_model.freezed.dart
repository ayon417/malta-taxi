// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_ride_amount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CancelRideAmountModelRer _$CancelRideAmountModelRerFromJson(
    Map<String, dynamic> json) {
  return _CancelRideAmountModelRer.fromJson(json);
}

/// @nodoc
mixin _$CancelRideAmountModelRer {
  String get rideId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CancelRideAmountModelRerCopyWith<CancelRideAmountModelRer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelRideAmountModelRerCopyWith<$Res> {
  factory $CancelRideAmountModelRerCopyWith(CancelRideAmountModelRer value,
          $Res Function(CancelRideAmountModelRer) then) =
      _$CancelRideAmountModelRerCopyWithImpl<$Res, CancelRideAmountModelRer>;
  @useResult
  $Res call({String rideId});
}

/// @nodoc
class _$CancelRideAmountModelRerCopyWithImpl<$Res,
        $Val extends CancelRideAmountModelRer>
    implements $CancelRideAmountModelRerCopyWith<$Res> {
  _$CancelRideAmountModelRerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideId = null,
  }) {
    return _then(_value.copyWith(
      rideId: null == rideId
          ? _value.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CancelRideAmountModelRerImplCopyWith<$Res>
    implements $CancelRideAmountModelRerCopyWith<$Res> {
  factory _$$CancelRideAmountModelRerImplCopyWith(
          _$CancelRideAmountModelRerImpl value,
          $Res Function(_$CancelRideAmountModelRerImpl) then) =
      __$$CancelRideAmountModelRerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rideId});
}

/// @nodoc
class __$$CancelRideAmountModelRerImplCopyWithImpl<$Res>
    extends _$CancelRideAmountModelRerCopyWithImpl<$Res,
        _$CancelRideAmountModelRerImpl>
    implements _$$CancelRideAmountModelRerImplCopyWith<$Res> {
  __$$CancelRideAmountModelRerImplCopyWithImpl(
      _$CancelRideAmountModelRerImpl _value,
      $Res Function(_$CancelRideAmountModelRerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideId = null,
  }) {
    return _then(_$CancelRideAmountModelRerImpl(
      rideId: null == rideId
          ? _value.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CancelRideAmountModelRerImpl implements _CancelRideAmountModelRer {
  const _$CancelRideAmountModelRerImpl({required this.rideId});

  factory _$CancelRideAmountModelRerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelRideAmountModelRerImplFromJson(json);

  @override
  final String rideId;

  @override
  String toString() {
    return 'CancelRideAmountModelRer(rideId: $rideId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelRideAmountModelRerImpl &&
            (identical(other.rideId, rideId) || other.rideId == rideId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rideId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelRideAmountModelRerImplCopyWith<_$CancelRideAmountModelRerImpl>
      get copyWith => __$$CancelRideAmountModelRerImplCopyWithImpl<
          _$CancelRideAmountModelRerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelRideAmountModelRerImplToJson(
      this,
    );
  }
}

abstract class _CancelRideAmountModelRer implements CancelRideAmountModelRer {
  const factory _CancelRideAmountModelRer({required final String rideId}) =
      _$CancelRideAmountModelRerImpl;

  factory _CancelRideAmountModelRer.fromJson(Map<String, dynamic> json) =
      _$CancelRideAmountModelRerImpl.fromJson;

  @override
  String get rideId;
  @override
  @JsonKey(ignore: true)
  _$$CancelRideAmountModelRerImplCopyWith<_$CancelRideAmountModelRerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CancelRideAmountModelRes _$CancelRideAmountModelResFromJson(
    Map<String, dynamic> json) {
  return _CancelRideAmountModelRes.fromJson(json);
}

/// @nodoc
mixin _$CancelRideAmountModelRes {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  int? get cancellationAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CancelRideAmountModelResCopyWith<CancelRideAmountModelRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelRideAmountModelResCopyWith<$Res> {
  factory $CancelRideAmountModelResCopyWith(CancelRideAmountModelRes value,
          $Res Function(CancelRideAmountModelRes) then) =
      _$CancelRideAmountModelResCopyWithImpl<$Res, CancelRideAmountModelRes>;
  @useResult
  $Res call(
      {int? code, String? message, bool? isSuccess, int? cancellationAmount});
}

/// @nodoc
class _$CancelRideAmountModelResCopyWithImpl<$Res,
        $Val extends CancelRideAmountModelRes>
    implements $CancelRideAmountModelResCopyWith<$Res> {
  _$CancelRideAmountModelResCopyWithImpl(this._value, this._then);

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
    Object? cancellationAmount = freezed,
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
      cancellationAmount: freezed == cancellationAmount
          ? _value.cancellationAmount
          : cancellationAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CancelRideAmountModelResImplCopyWith<$Res>
    implements $CancelRideAmountModelResCopyWith<$Res> {
  factory _$$CancelRideAmountModelResImplCopyWith(
          _$CancelRideAmountModelResImpl value,
          $Res Function(_$CancelRideAmountModelResImpl) then) =
      __$$CancelRideAmountModelResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code, String? message, bool? isSuccess, int? cancellationAmount});
}

/// @nodoc
class __$$CancelRideAmountModelResImplCopyWithImpl<$Res>
    extends _$CancelRideAmountModelResCopyWithImpl<$Res,
        _$CancelRideAmountModelResImpl>
    implements _$$CancelRideAmountModelResImplCopyWith<$Res> {
  __$$CancelRideAmountModelResImplCopyWithImpl(
      _$CancelRideAmountModelResImpl _value,
      $Res Function(_$CancelRideAmountModelResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? cancellationAmount = freezed,
  }) {
    return _then(_$CancelRideAmountModelResImpl(
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
      cancellationAmount: freezed == cancellationAmount
          ? _value.cancellationAmount
          : cancellationAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CancelRideAmountModelResImpl implements _CancelRideAmountModelRes {
  const _$CancelRideAmountModelResImpl(
      {this.code, this.message, this.isSuccess, this.cancellationAmount});

  factory _$CancelRideAmountModelResImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelRideAmountModelResImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  @override
  final int? cancellationAmount;

  @override
  String toString() {
    return 'CancelRideAmountModelRes(code: $code, message: $message, isSuccess: $isSuccess, cancellationAmount: $cancellationAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelRideAmountModelResImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.cancellationAmount, cancellationAmount) ||
                other.cancellationAmount == cancellationAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, message, isSuccess, cancellationAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelRideAmountModelResImplCopyWith<_$CancelRideAmountModelResImpl>
      get copyWith => __$$CancelRideAmountModelResImplCopyWithImpl<
          _$CancelRideAmountModelResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelRideAmountModelResImplToJson(
      this,
    );
  }
}

abstract class _CancelRideAmountModelRes implements CancelRideAmountModelRes {
  const factory _CancelRideAmountModelRes(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final int? cancellationAmount}) = _$CancelRideAmountModelResImpl;

  factory _CancelRideAmountModelRes.fromJson(Map<String, dynamic> json) =
      _$CancelRideAmountModelResImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  int? get cancellationAmount;
  @override
  @JsonKey(ignore: true)
  _$$CancelRideAmountModelResImplCopyWith<_$CancelRideAmountModelResImpl>
      get copyWith => throw _privateConstructorUsedError;
}
