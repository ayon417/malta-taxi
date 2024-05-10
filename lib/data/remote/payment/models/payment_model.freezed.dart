// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentRequestModel _$PaymentRequestModelFromJson(Map<String, dynamic> json) {
  return _PaymentRequestModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentRequestModel {
  String? get rideId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentRequestModelCopyWith<PaymentRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentRequestModelCopyWith<$Res> {
  factory $PaymentRequestModelCopyWith(
          PaymentRequestModel value, $Res Function(PaymentRequestModel) then) =
      _$PaymentRequestModelCopyWithImpl<$Res, PaymentRequestModel>;
  @useResult
  $Res call({String? rideId});
}

/// @nodoc
class _$PaymentRequestModelCopyWithImpl<$Res, $Val extends PaymentRequestModel>
    implements $PaymentRequestModelCopyWith<$Res> {
  _$PaymentRequestModelCopyWithImpl(this._value, this._then);

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
abstract class _$$PaymentRequestModelImplCopyWith<$Res>
    implements $PaymentRequestModelCopyWith<$Res> {
  factory _$$PaymentRequestModelImplCopyWith(_$PaymentRequestModelImpl value,
          $Res Function(_$PaymentRequestModelImpl) then) =
      __$$PaymentRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? rideId});
}

/// @nodoc
class __$$PaymentRequestModelImplCopyWithImpl<$Res>
    extends _$PaymentRequestModelCopyWithImpl<$Res, _$PaymentRequestModelImpl>
    implements _$$PaymentRequestModelImplCopyWith<$Res> {
  __$$PaymentRequestModelImplCopyWithImpl(_$PaymentRequestModelImpl _value,
      $Res Function(_$PaymentRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideId = freezed,
  }) {
    return _then(_$PaymentRequestModelImpl(
      rideId: freezed == rideId
          ? _value.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentRequestModelImpl implements _PaymentRequestModel {
  const _$PaymentRequestModelImpl({this.rideId});

  factory _$PaymentRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentRequestModelImplFromJson(json);

  @override
  final String? rideId;

  @override
  String toString() {
    return 'PaymentRequestModel(rideId: $rideId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentRequestModelImpl &&
            (identical(other.rideId, rideId) || other.rideId == rideId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rideId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentRequestModelImplCopyWith<_$PaymentRequestModelImpl> get copyWith =>
      __$$PaymentRequestModelImplCopyWithImpl<_$PaymentRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentRequestModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentRequestModel implements PaymentRequestModel {
  const factory _PaymentRequestModel({final String? rideId}) =
      _$PaymentRequestModelImpl;

  factory _PaymentRequestModel.fromJson(Map<String, dynamic> json) =
      _$PaymentRequestModelImpl.fromJson;

  @override
  String? get rideId;
  @override
  @JsonKey(ignore: true)
  _$$PaymentRequestModelImplCopyWith<_$PaymentRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentResponseModel _$PaymentResponseModelFromJson(Map<String, dynamic> json) {
  return _PaymentResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentResponseModel {
  int? get code => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  String? get paymentLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentResponseModelCopyWith<PaymentResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentResponseModelCopyWith<$Res> {
  factory $PaymentResponseModelCopyWith(PaymentResponseModel value,
          $Res Function(PaymentResponseModel) then) =
      _$PaymentResponseModelCopyWithImpl<$Res, PaymentResponseModel>;
  @useResult
  $Res call({int? code, bool? isSuccess, String? paymentLink});
}

/// @nodoc
class _$PaymentResponseModelCopyWithImpl<$Res,
        $Val extends PaymentResponseModel>
    implements $PaymentResponseModelCopyWith<$Res> {
  _$PaymentResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? isSuccess = freezed,
    Object? paymentLink = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentLink: freezed == paymentLink
          ? _value.paymentLink
          : paymentLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentResponseModelImplCopyWith<$Res>
    implements $PaymentResponseModelCopyWith<$Res> {
  factory _$$PaymentResponseModelImplCopyWith(_$PaymentResponseModelImpl value,
          $Res Function(_$PaymentResponseModelImpl) then) =
      __$$PaymentResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, bool? isSuccess, String? paymentLink});
}

/// @nodoc
class __$$PaymentResponseModelImplCopyWithImpl<$Res>
    extends _$PaymentResponseModelCopyWithImpl<$Res, _$PaymentResponseModelImpl>
    implements _$$PaymentResponseModelImplCopyWith<$Res> {
  __$$PaymentResponseModelImplCopyWithImpl(_$PaymentResponseModelImpl _value,
      $Res Function(_$PaymentResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? isSuccess = freezed,
    Object? paymentLink = freezed,
  }) {
    return _then(_$PaymentResponseModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentLink: freezed == paymentLink
          ? _value.paymentLink
          : paymentLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentResponseModelImpl implements _PaymentResponseModel {
  const _$PaymentResponseModelImpl(
      {this.code, this.isSuccess, this.paymentLink});

  factory _$PaymentResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final bool? isSuccess;
  @override
  final String? paymentLink;

  @override
  String toString() {
    return 'PaymentResponseModel(code: $code, isSuccess: $isSuccess, paymentLink: $paymentLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentResponseModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.paymentLink, paymentLink) ||
                other.paymentLink == paymentLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, isSuccess, paymentLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentResponseModelImplCopyWith<_$PaymentResponseModelImpl>
      get copyWith =>
          __$$PaymentResponseModelImplCopyWithImpl<_$PaymentResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentResponseModel implements PaymentResponseModel {
  const factory _PaymentResponseModel(
      {final int? code,
      final bool? isSuccess,
      final String? paymentLink}) = _$PaymentResponseModelImpl;

  factory _PaymentResponseModel.fromJson(Map<String, dynamic> json) =
      _$PaymentResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  bool? get isSuccess;
  @override
  String? get paymentLink;
  @override
  @JsonKey(ignore: true)
  _$$PaymentResponseModelImplCopyWith<_$PaymentResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
