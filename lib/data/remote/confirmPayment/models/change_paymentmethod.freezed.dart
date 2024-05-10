// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_paymentmethod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePaymentMethodReq _$ChangePaymentMethodReqFromJson(
    Map<String, dynamic> json) {
  return _ChangePaymentMethodReq.fromJson(json);
}

/// @nodoc
mixin _$ChangePaymentMethodReq {
  String? get rideId => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePaymentMethodReqCopyWith<ChangePaymentMethodReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePaymentMethodReqCopyWith<$Res> {
  factory $ChangePaymentMethodReqCopyWith(ChangePaymentMethodReq value,
          $Res Function(ChangePaymentMethodReq) then) =
      _$ChangePaymentMethodReqCopyWithImpl<$Res, ChangePaymentMethodReq>;
  @useResult
  $Res call({String? rideId, String? paymentMethod});
}

/// @nodoc
class _$ChangePaymentMethodReqCopyWithImpl<$Res,
        $Val extends ChangePaymentMethodReq>
    implements $ChangePaymentMethodReqCopyWith<$Res> {
  _$ChangePaymentMethodReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideId = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_value.copyWith(
      rideId: freezed == rideId
          ? _value.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePaymentMethodReqImplCopyWith<$Res>
    implements $ChangePaymentMethodReqCopyWith<$Res> {
  factory _$$ChangePaymentMethodReqImplCopyWith(
          _$ChangePaymentMethodReqImpl value,
          $Res Function(_$ChangePaymentMethodReqImpl) then) =
      __$$ChangePaymentMethodReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? rideId, String? paymentMethod});
}

/// @nodoc
class __$$ChangePaymentMethodReqImplCopyWithImpl<$Res>
    extends _$ChangePaymentMethodReqCopyWithImpl<$Res,
        _$ChangePaymentMethodReqImpl>
    implements _$$ChangePaymentMethodReqImplCopyWith<$Res> {
  __$$ChangePaymentMethodReqImplCopyWithImpl(
      _$ChangePaymentMethodReqImpl _value,
      $Res Function(_$ChangePaymentMethodReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideId = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_$ChangePaymentMethodReqImpl(
      rideId: freezed == rideId
          ? _value.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePaymentMethodReqImpl implements _ChangePaymentMethodReq {
  const _$ChangePaymentMethodReqImpl({this.rideId, this.paymentMethod});

  factory _$ChangePaymentMethodReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePaymentMethodReqImplFromJson(json);

  @override
  final String? rideId;
  @override
  final String? paymentMethod;

  @override
  String toString() {
    return 'ChangePaymentMethodReq(rideId: $rideId, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePaymentMethodReqImpl &&
            (identical(other.rideId, rideId) || other.rideId == rideId) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rideId, paymentMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePaymentMethodReqImplCopyWith<_$ChangePaymentMethodReqImpl>
      get copyWith => __$$ChangePaymentMethodReqImplCopyWithImpl<
          _$ChangePaymentMethodReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePaymentMethodReqImplToJson(
      this,
    );
  }
}

abstract class _ChangePaymentMethodReq implements ChangePaymentMethodReq {
  const factory _ChangePaymentMethodReq(
      {final String? rideId,
      final String? paymentMethod}) = _$ChangePaymentMethodReqImpl;

  factory _ChangePaymentMethodReq.fromJson(Map<String, dynamic> json) =
      _$ChangePaymentMethodReqImpl.fromJson;

  @override
  String? get rideId;
  @override
  String? get paymentMethod;
  @override
  @JsonKey(ignore: true)
  _$$ChangePaymentMethodReqImplCopyWith<_$ChangePaymentMethodReqImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChangePaymentMethodRes _$ChangePaymentMethodResFromJson(
    Map<String, dynamic> json) {
  return _ChangePaymentMethodRes.fromJson(json);
}

/// @nodoc
mixin _$ChangePaymentMethodRes {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePaymentMethodResCopyWith<ChangePaymentMethodRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePaymentMethodResCopyWith<$Res> {
  factory $ChangePaymentMethodResCopyWith(ChangePaymentMethodRes value,
          $Res Function(ChangePaymentMethodRes) then) =
      _$ChangePaymentMethodResCopyWithImpl<$Res, ChangePaymentMethodRes>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess});
}

/// @nodoc
class _$ChangePaymentMethodResCopyWithImpl<$Res,
        $Val extends ChangePaymentMethodRes>
    implements $ChangePaymentMethodResCopyWith<$Res> {
  _$ChangePaymentMethodResCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePaymentMethodResImplCopyWith<$Res>
    implements $ChangePaymentMethodResCopyWith<$Res> {
  factory _$$ChangePaymentMethodResImplCopyWith(
          _$ChangePaymentMethodResImpl value,
          $Res Function(_$ChangePaymentMethodResImpl) then) =
      __$$ChangePaymentMethodResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess});
}

/// @nodoc
class __$$ChangePaymentMethodResImplCopyWithImpl<$Res>
    extends _$ChangePaymentMethodResCopyWithImpl<$Res,
        _$ChangePaymentMethodResImpl>
    implements _$$ChangePaymentMethodResImplCopyWith<$Res> {
  __$$ChangePaymentMethodResImplCopyWithImpl(
      _$ChangePaymentMethodResImpl _value,
      $Res Function(_$ChangePaymentMethodResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_$ChangePaymentMethodResImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePaymentMethodResImpl implements _ChangePaymentMethodRes {
  const _$ChangePaymentMethodResImpl({this.code, this.message, this.isSuccess});

  factory _$ChangePaymentMethodResImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePaymentMethodResImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;

  @override
  String toString() {
    return 'ChangePaymentMethodRes(code: $code, message: $message, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePaymentMethodResImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePaymentMethodResImplCopyWith<_$ChangePaymentMethodResImpl>
      get copyWith => __$$ChangePaymentMethodResImplCopyWithImpl<
          _$ChangePaymentMethodResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePaymentMethodResImplToJson(
      this,
    );
  }
}

abstract class _ChangePaymentMethodRes implements ChangePaymentMethodRes {
  const factory _ChangePaymentMethodRes(
      {final int? code,
      final String? message,
      final bool? isSuccess}) = _$ChangePaymentMethodResImpl;

  factory _ChangePaymentMethodRes.fromJson(Map<String, dynamic> json) =
      _$ChangePaymentMethodResImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$ChangePaymentMethodResImplCopyWith<_$ChangePaymentMethodResImpl>
      get copyWith => throw _privateConstructorUsedError;
}
