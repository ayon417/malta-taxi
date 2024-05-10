// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentDetailsRequestModel _$PaymentDetailsRequestModelFromJson(
    Map<String, dynamic> json) {
  return _PaymentDetailsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentDetailsRequestModel {
  String? get rideId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDetailsRequestModelCopyWith<PaymentDetailsRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDetailsRequestModelCopyWith<$Res> {
  factory $PaymentDetailsRequestModelCopyWith(PaymentDetailsRequestModel value,
          $Res Function(PaymentDetailsRequestModel) then) =
      _$PaymentDetailsRequestModelCopyWithImpl<$Res,
          PaymentDetailsRequestModel>;
  @useResult
  $Res call({String? rideId});
}

/// @nodoc
class _$PaymentDetailsRequestModelCopyWithImpl<$Res,
        $Val extends PaymentDetailsRequestModel>
    implements $PaymentDetailsRequestModelCopyWith<$Res> {
  _$PaymentDetailsRequestModelCopyWithImpl(this._value, this._then);

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
abstract class _$$PaymentDetailsRequestModelImplCopyWith<$Res>
    implements $PaymentDetailsRequestModelCopyWith<$Res> {
  factory _$$PaymentDetailsRequestModelImplCopyWith(
          _$PaymentDetailsRequestModelImpl value,
          $Res Function(_$PaymentDetailsRequestModelImpl) then) =
      __$$PaymentDetailsRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? rideId});
}

/// @nodoc
class __$$PaymentDetailsRequestModelImplCopyWithImpl<$Res>
    extends _$PaymentDetailsRequestModelCopyWithImpl<$Res,
        _$PaymentDetailsRequestModelImpl>
    implements _$$PaymentDetailsRequestModelImplCopyWith<$Res> {
  __$$PaymentDetailsRequestModelImplCopyWithImpl(
      _$PaymentDetailsRequestModelImpl _value,
      $Res Function(_$PaymentDetailsRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideId = freezed,
  }) {
    return _then(_$PaymentDetailsRequestModelImpl(
      rideId: freezed == rideId
          ? _value.rideId
          : rideId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentDetailsRequestModelImpl implements _PaymentDetailsRequestModel {
  const _$PaymentDetailsRequestModelImpl({this.rideId});

  factory _$PaymentDetailsRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PaymentDetailsRequestModelImplFromJson(json);

  @override
  final String? rideId;

  @override
  String toString() {
    return 'PaymentDetailsRequestModel(rideId: $rideId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDetailsRequestModelImpl &&
            (identical(other.rideId, rideId) || other.rideId == rideId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rideId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentDetailsRequestModelImplCopyWith<_$PaymentDetailsRequestModelImpl>
      get copyWith => __$$PaymentDetailsRequestModelImplCopyWithImpl<
          _$PaymentDetailsRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentDetailsRequestModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentDetailsRequestModel
    implements PaymentDetailsRequestModel {
  const factory _PaymentDetailsRequestModel({final String? rideId}) =
      _$PaymentDetailsRequestModelImpl;

  factory _PaymentDetailsRequestModel.fromJson(Map<String, dynamic> json) =
      _$PaymentDetailsRequestModelImpl.fromJson;

  @override
  String? get rideId;
  @override
  @JsonKey(ignore: true)
  _$$PaymentDetailsRequestModelImplCopyWith<_$PaymentDetailsRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentDetailsResponseModel _$PaymentDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PaymentDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentDetailsResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDetailsResponseModelCopyWith<PaymentDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDetailsResponseModelCopyWith<$Res> {
  factory $PaymentDetailsResponseModelCopyWith(
          PaymentDetailsResponseModel value,
          $Res Function(PaymentDetailsResponseModel) then) =
      _$PaymentDetailsResponseModelCopyWithImpl<$Res,
          PaymentDetailsResponseModel>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PaymentDetailsResponseModelCopyWithImpl<$Res,
        $Val extends PaymentDetailsResponseModel>
    implements $PaymentDetailsResponseModelCopyWith<$Res> {
  _$PaymentDetailsResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$PaymentDetailsResponseModelImplCopyWith<$Res>
    implements $PaymentDetailsResponseModelCopyWith<$Res> {
  factory _$$PaymentDetailsResponseModelImplCopyWith(
          _$PaymentDetailsResponseModelImpl value,
          $Res Function(_$PaymentDetailsResponseModelImpl) then) =
      __$$PaymentDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PaymentDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$PaymentDetailsResponseModelCopyWithImpl<$Res,
        _$PaymentDetailsResponseModelImpl>
    implements _$$PaymentDetailsResponseModelImplCopyWith<$Res> {
  __$$PaymentDetailsResponseModelImplCopyWithImpl(
      _$PaymentDetailsResponseModelImpl _value,
      $Res Function(_$PaymentDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PaymentDetailsResponseModelImpl(
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
class _$PaymentDetailsResponseModelImpl
    implements _PaymentDetailsResponseModel {
  const _$PaymentDetailsResponseModelImpl(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$PaymentDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PaymentDetailsResponseModelImplFromJson(json);

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
    return 'PaymentDetailsResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDetailsResponseModelImpl &&
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
  _$$PaymentDetailsResponseModelImplCopyWith<_$PaymentDetailsResponseModelImpl>
      get copyWith => __$$PaymentDetailsResponseModelImplCopyWithImpl<
          _$PaymentDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentDetailsResponseModel
    implements PaymentDetailsResponseModel {
  const factory _PaymentDetailsResponseModel(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$PaymentDetailsResponseModelImpl;

  factory _PaymentDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$PaymentDetailsResponseModelImpl.fromJson;

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
  _$$PaymentDetailsResponseModelImplCopyWith<_$PaymentDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get id => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  int? get baseFair => throw _privateConstructorUsedError;
  String? get tax => throw _privateConstructorUsedError;
  int? get surcharge => throw _privateConstructorUsedError;
  String? get waitingTime => throw _privateConstructorUsedError;
  int? get totalPrice => throw _privateConstructorUsedError;
  String? get distance => throw _privateConstructorUsedError;
  bool? get isPayment => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;
  int? get cancellationAmount => throw _privateConstructorUsedError;

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
      String? duration,
      int? baseFair,
      String? tax,
      int? surcharge,
      String? waitingTime,
      int? totalPrice,
      String? distance,
      bool? isPayment,
      String? paymentMethod,
      int? cancellationAmount});
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
    Object? duration = freezed,
    Object? baseFair = freezed,
    Object? tax = freezed,
    Object? surcharge = freezed,
    Object? waitingTime = freezed,
    Object? totalPrice = freezed,
    Object? distance = freezed,
    Object? isPayment = freezed,
    Object? paymentMethod = freezed,
    Object? cancellationAmount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      baseFair: freezed == baseFair
          ? _value.baseFair
          : baseFair // ignore: cast_nullable_to_non_nullable
              as int?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      surcharge: freezed == surcharge
          ? _value.surcharge
          : surcharge // ignore: cast_nullable_to_non_nullable
              as int?,
      waitingTime: freezed == waitingTime
          ? _value.waitingTime
          : waitingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      isPayment: freezed == isPayment
          ? _value.isPayment
          : isPayment // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationAmount: freezed == cancellationAmount
          ? _value.cancellationAmount
          : cancellationAmount // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call(
      {String? id,
      String? duration,
      int? baseFair,
      String? tax,
      int? surcharge,
      String? waitingTime,
      int? totalPrice,
      String? distance,
      bool? isPayment,
      String? paymentMethod,
      int? cancellationAmount});
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
    Object? duration = freezed,
    Object? baseFair = freezed,
    Object? tax = freezed,
    Object? surcharge = freezed,
    Object? waitingTime = freezed,
    Object? totalPrice = freezed,
    Object? distance = freezed,
    Object? isPayment = freezed,
    Object? paymentMethod = freezed,
    Object? cancellationAmount = freezed,
  }) {
    return _then(_$DataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      baseFair: freezed == baseFair
          ? _value.baseFair
          : baseFair // ignore: cast_nullable_to_non_nullable
              as int?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      surcharge: freezed == surcharge
          ? _value.surcharge
          : surcharge // ignore: cast_nullable_to_non_nullable
              as int?,
      waitingTime: freezed == waitingTime
          ? _value.waitingTime
          : waitingTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String?,
      isPayment: freezed == isPayment
          ? _value.isPayment
          : isPayment // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
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
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.id,
      this.duration,
      this.baseFair,
      this.tax,
      this.surcharge,
      this.waitingTime,
      this.totalPrice,
      this.distance,
      this.isPayment,
      this.paymentMethod,
      this.cancellationAmount});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? duration;
  @override
  final int? baseFair;
  @override
  final String? tax;
  @override
  final int? surcharge;
  @override
  final String? waitingTime;
  @override
  final int? totalPrice;
  @override
  final String? distance;
  @override
  final bool? isPayment;
  @override
  final String? paymentMethod;
  @override
  final int? cancellationAmount;

  @override
  String toString() {
    return 'Data(id: $id, duration: $duration, baseFair: $baseFair, tax: $tax, surcharge: $surcharge, waitingTime: $waitingTime, totalPrice: $totalPrice, distance: $distance, isPayment: $isPayment, paymentMethod: $paymentMethod, cancellationAmount: $cancellationAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.baseFair, baseFair) ||
                other.baseFair == baseFair) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.surcharge, surcharge) ||
                other.surcharge == surcharge) &&
            (identical(other.waitingTime, waitingTime) ||
                other.waitingTime == waitingTime) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.isPayment, isPayment) ||
                other.isPayment == isPayment) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.cancellationAmount, cancellationAmount) ||
                other.cancellationAmount == cancellationAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      duration,
      baseFair,
      tax,
      surcharge,
      waitingTime,
      totalPrice,
      distance,
      isPayment,
      paymentMethod,
      cancellationAmount);

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
      final String? duration,
      final int? baseFair,
      final String? tax,
      final int? surcharge,
      final String? waitingTime,
      final int? totalPrice,
      final String? distance,
      final bool? isPayment,
      final String? paymentMethod,
      final int? cancellationAmount}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get duration;
  @override
  int? get baseFair;
  @override
  String? get tax;
  @override
  int? get surcharge;
  @override
  String? get waitingTime;
  @override
  int? get totalPrice;
  @override
  String? get distance;
  @override
  bool? get isPayment;
  @override
  String? get paymentMethod;
  @override
  int? get cancellationAmount;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
