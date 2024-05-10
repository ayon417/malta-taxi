// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatePaymentRequestModel _$CreatePaymentRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreatePaymentRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreatePaymentRequestModel {
  String? get cardId => throw _privateConstructorUsedError;
  String? get rideId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePaymentRequestModelCopyWith<CreatePaymentRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePaymentRequestModelCopyWith<$Res> {
  factory $CreatePaymentRequestModelCopyWith(CreatePaymentRequestModel value,
          $Res Function(CreatePaymentRequestModel) then) =
      _$CreatePaymentRequestModelCopyWithImpl<$Res, CreatePaymentRequestModel>;
  @useResult
  $Res call({String? cardId, String? rideId});
}

/// @nodoc
class _$CreatePaymentRequestModelCopyWithImpl<$Res,
        $Val extends CreatePaymentRequestModel>
    implements $CreatePaymentRequestModelCopyWith<$Res> {
  _$CreatePaymentRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = freezed,
    Object? rideId = freezed,
  }) {
    return _then(_value.copyWith(
      cardId: freezed == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String?,
      rideId: freezed == rideId
          ? _value.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePaymentRequestModelImplCopyWith<$Res>
    implements $CreatePaymentRequestModelCopyWith<$Res> {
  factory _$$CreatePaymentRequestModelImplCopyWith(
          _$CreatePaymentRequestModelImpl value,
          $Res Function(_$CreatePaymentRequestModelImpl) then) =
      __$$CreatePaymentRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? cardId, String? rideId});
}

/// @nodoc
class __$$CreatePaymentRequestModelImplCopyWithImpl<$Res>
    extends _$CreatePaymentRequestModelCopyWithImpl<$Res,
        _$CreatePaymentRequestModelImpl>
    implements _$$CreatePaymentRequestModelImplCopyWith<$Res> {
  __$$CreatePaymentRequestModelImplCopyWithImpl(
      _$CreatePaymentRequestModelImpl _value,
      $Res Function(_$CreatePaymentRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = freezed,
    Object? rideId = freezed,
  }) {
    return _then(_$CreatePaymentRequestModelImpl(
      cardId: freezed == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String?,
      rideId: freezed == rideId
          ? _value.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePaymentRequestModelImpl implements _CreatePaymentRequestModel {
  const _$CreatePaymentRequestModelImpl({this.cardId, this.rideId});

  factory _$CreatePaymentRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePaymentRequestModelImplFromJson(json);

  @override
  final String? cardId;
  @override
  final String? rideId;

  @override
  String toString() {
    return 'CreatePaymentRequestModel(cardId: $cardId, rideId: $rideId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePaymentRequestModelImpl &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.rideId, rideId) || other.rideId == rideId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cardId, rideId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePaymentRequestModelImplCopyWith<_$CreatePaymentRequestModelImpl>
      get copyWith => __$$CreatePaymentRequestModelImplCopyWithImpl<
          _$CreatePaymentRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePaymentRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CreatePaymentRequestModel implements CreatePaymentRequestModel {
  const factory _CreatePaymentRequestModel(
      {final String? cardId,
      final String? rideId}) = _$CreatePaymentRequestModelImpl;

  factory _CreatePaymentRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreatePaymentRequestModelImpl.fromJson;

  @override
  String? get cardId;
  @override
  String? get rideId;
  @override
  @JsonKey(ignore: true)
  _$$CreatePaymentRequestModelImplCopyWith<_$CreatePaymentRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreatePaymentResponseModel _$CreatePaymentResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CreatePaymentResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CreatePaymentResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePaymentResponseModelCopyWith<CreatePaymentResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePaymentResponseModelCopyWith<$Res> {
  factory $CreatePaymentResponseModelCopyWith(CreatePaymentResponseModel value,
          $Res Function(CreatePaymentResponseModel) then) =
      _$CreatePaymentResponseModelCopyWithImpl<$Res,
          CreatePaymentResponseModel>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreatePaymentResponseModelCopyWithImpl<$Res,
        $Val extends CreatePaymentResponseModel>
    implements $CreatePaymentResponseModelCopyWith<$Res> {
  _$CreatePaymentResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CreatePaymentResponseModelImplCopyWith<$Res>
    implements $CreatePaymentResponseModelCopyWith<$Res> {
  factory _$$CreatePaymentResponseModelImplCopyWith(
          _$CreatePaymentResponseModelImpl value,
          $Res Function(_$CreatePaymentResponseModelImpl) then) =
      __$$CreatePaymentResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreatePaymentResponseModelImplCopyWithImpl<$Res>
    extends _$CreatePaymentResponseModelCopyWithImpl<$Res,
        _$CreatePaymentResponseModelImpl>
    implements _$$CreatePaymentResponseModelImplCopyWith<$Res> {
  __$$CreatePaymentResponseModelImplCopyWithImpl(
      _$CreatePaymentResponseModelImpl _value,
      $Res Function(_$CreatePaymentResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreatePaymentResponseModelImpl(
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
class _$CreatePaymentResponseModelImpl implements _CreatePaymentResponseModel {
  const _$CreatePaymentResponseModelImpl(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$CreatePaymentResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreatePaymentResponseModelImplFromJson(json);

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
    return 'CreatePaymentResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePaymentResponseModelImpl &&
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
  _$$CreatePaymentResponseModelImplCopyWith<_$CreatePaymentResponseModelImpl>
      get copyWith => __$$CreatePaymentResponseModelImplCopyWithImpl<
          _$CreatePaymentResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePaymentResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CreatePaymentResponseModel
    implements CreatePaymentResponseModel {
  const factory _CreatePaymentResponseModel(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$CreatePaymentResponseModelImpl;

  factory _CreatePaymentResponseModel.fromJson(Map<String, dynamic> json) =
      _$CreatePaymentResponseModelImpl.fromJson;

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
  _$$CreatePaymentResponseModelImplCopyWith<_$CreatePaymentResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get transactionId => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({String? transactionId, int? amount, String? paymentMethod});
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
    Object? transactionId = freezed,
    Object? amount = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? transactionId, int? amount, String? paymentMethod});
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
    Object? transactionId = freezed,
    Object? amount = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_$DataImpl(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({this.transactionId, this.amount, this.paymentMethod});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String? transactionId;
  @override
  final int? amount;
  @override
  final String? paymentMethod;

  @override
  String toString() {
    return 'Data(transactionId: $transactionId, amount: $amount, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, transactionId, amount, paymentMethod);

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
      {final String? transactionId,
      final int? amount,
      final String? paymentMethod}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get transactionId;
  @override
  int? get amount;
  @override
  String? get paymentMethod;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
