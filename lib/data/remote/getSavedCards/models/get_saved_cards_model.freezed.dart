// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_saved_cards_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetSavedCardsModel _$GetSavedCardsModelFromJson(Map<String, dynamic> json) {
  return _GetSavedCardsModel.fromJson(json);
}

/// @nodoc
mixin _$GetSavedCardsModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  List<SavedPaymentMethod>? get savedPaymentMethod =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSavedCardsModelCopyWith<GetSavedCardsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSavedCardsModelCopyWith<$Res> {
  factory $GetSavedCardsModelCopyWith(
          GetSavedCardsModel value, $Res Function(GetSavedCardsModel) then) =
      _$GetSavedCardsModelCopyWithImpl<$Res, GetSavedCardsModel>;
  @useResult
  $Res call(
      {int? code,
      String? message,
      bool? isSuccess,
      List<SavedPaymentMethod>? savedPaymentMethod});
}

/// @nodoc
class _$GetSavedCardsModelCopyWithImpl<$Res, $Val extends GetSavedCardsModel>
    implements $GetSavedCardsModelCopyWith<$Res> {
  _$GetSavedCardsModelCopyWithImpl(this._value, this._then);

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
    Object? savedPaymentMethod = freezed,
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
      savedPaymentMethod: freezed == savedPaymentMethod
          ? _value.savedPaymentMethod
          : savedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as List<SavedPaymentMethod>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSavedCardsModelImplCopyWith<$Res>
    implements $GetSavedCardsModelCopyWith<$Res> {
  factory _$$GetSavedCardsModelImplCopyWith(_$GetSavedCardsModelImpl value,
          $Res Function(_$GetSavedCardsModelImpl) then) =
      __$$GetSavedCardsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? message,
      bool? isSuccess,
      List<SavedPaymentMethod>? savedPaymentMethod});
}

/// @nodoc
class __$$GetSavedCardsModelImplCopyWithImpl<$Res>
    extends _$GetSavedCardsModelCopyWithImpl<$Res, _$GetSavedCardsModelImpl>
    implements _$$GetSavedCardsModelImplCopyWith<$Res> {
  __$$GetSavedCardsModelImplCopyWithImpl(_$GetSavedCardsModelImpl _value,
      $Res Function(_$GetSavedCardsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? savedPaymentMethod = freezed,
  }) {
    return _then(_$GetSavedCardsModelImpl(
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
      savedPaymentMethod: freezed == savedPaymentMethod
          ? _value._savedPaymentMethod
          : savedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as List<SavedPaymentMethod>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetSavedCardsModelImpl implements _GetSavedCardsModel {
  const _$GetSavedCardsModelImpl(
      {this.code,
      this.message,
      this.isSuccess,
      final List<SavedPaymentMethod>? savedPaymentMethod})
      : _savedPaymentMethod = savedPaymentMethod;

  factory _$GetSavedCardsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetSavedCardsModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  final List<SavedPaymentMethod>? _savedPaymentMethod;
  @override
  List<SavedPaymentMethod>? get savedPaymentMethod {
    final value = _savedPaymentMethod;
    if (value == null) return null;
    if (_savedPaymentMethod is EqualUnmodifiableListView)
      return _savedPaymentMethod;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetSavedCardsModel(code: $code, message: $message, isSuccess: $isSuccess, savedPaymentMethod: $savedPaymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSavedCardsModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality()
                .equals(other._savedPaymentMethod, _savedPaymentMethod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, isSuccess,
      const DeepCollectionEquality().hash(_savedPaymentMethod));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSavedCardsModelImplCopyWith<_$GetSavedCardsModelImpl> get copyWith =>
      __$$GetSavedCardsModelImplCopyWithImpl<_$GetSavedCardsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetSavedCardsModelImplToJson(
      this,
    );
  }
}

abstract class _GetSavedCardsModel implements GetSavedCardsModel {
  const factory _GetSavedCardsModel(
          {final int? code,
          final String? message,
          final bool? isSuccess,
          final List<SavedPaymentMethod>? savedPaymentMethod}) =
      _$GetSavedCardsModelImpl;

  factory _GetSavedCardsModel.fromJson(Map<String, dynamic> json) =
      _$GetSavedCardsModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  List<SavedPaymentMethod>? get savedPaymentMethod;
  @override
  @JsonKey(ignore: true)
  _$$GetSavedCardsModelImplCopyWith<_$GetSavedCardsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SavedPaymentMethod _$SavedPaymentMethodFromJson(Map<String, dynamic> json) {
  return _SavedPaymentMethod.fromJson(json);
}

/// @nodoc
mixin _$SavedPaymentMethod {
  String? get id => throw _privateConstructorUsedError;
  String? get object => throw _privateConstructorUsedError;
  BillingDetails? get billingDetails => throw _privateConstructorUsedError;
  Card? get card => throw _privateConstructorUsedError;
  int? get created => throw _privateConstructorUsedError;
  String? get customer => throw _privateConstructorUsedError;
  bool? get livemode => throw _privateConstructorUsedError;
  Metadata? get metadata => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedPaymentMethodCopyWith<SavedPaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedPaymentMethodCopyWith<$Res> {
  factory $SavedPaymentMethodCopyWith(
          SavedPaymentMethod value, $Res Function(SavedPaymentMethod) then) =
      _$SavedPaymentMethodCopyWithImpl<$Res, SavedPaymentMethod>;
  @useResult
  $Res call(
      {String? id,
      String? object,
      BillingDetails? billingDetails,
      Card? card,
      int? created,
      String? customer,
      bool? livemode,
      Metadata? metadata,
      String? type});

  $BillingDetailsCopyWith<$Res>? get billingDetails;
  $CardCopyWith<$Res>? get card;
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$SavedPaymentMethodCopyWithImpl<$Res, $Val extends SavedPaymentMethod>
    implements $SavedPaymentMethodCopyWith<$Res> {
  _$SavedPaymentMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? billingDetails = freezed,
    Object? card = freezed,
    Object? created = freezed,
    Object? customer = freezed,
    Object? livemode = freezed,
    Object? metadata = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      billingDetails: freezed == billingDetails
          ? _value.billingDetails
          : billingDetails // ignore: cast_nullable_to_non_nullable
              as BillingDetails?,
      card: freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as Card?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      livemode: freezed == livemode
          ? _value.livemode
          : livemode // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BillingDetailsCopyWith<$Res>? get billingDetails {
    if (_value.billingDetails == null) {
      return null;
    }

    return $BillingDetailsCopyWith<$Res>(_value.billingDetails!, (value) {
      return _then(_value.copyWith(billingDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CardCopyWith<$Res>? get card {
    if (_value.card == null) {
      return null;
    }

    return $CardCopyWith<$Res>(_value.card!, (value) {
      return _then(_value.copyWith(card: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SavedPaymentMethodImplCopyWith<$Res>
    implements $SavedPaymentMethodCopyWith<$Res> {
  factory _$$SavedPaymentMethodImplCopyWith(_$SavedPaymentMethodImpl value,
          $Res Function(_$SavedPaymentMethodImpl) then) =
      __$$SavedPaymentMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? object,
      BillingDetails? billingDetails,
      Card? card,
      int? created,
      String? customer,
      bool? livemode,
      Metadata? metadata,
      String? type});

  @override
  $BillingDetailsCopyWith<$Res>? get billingDetails;
  @override
  $CardCopyWith<$Res>? get card;
  @override
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$SavedPaymentMethodImplCopyWithImpl<$Res>
    extends _$SavedPaymentMethodCopyWithImpl<$Res, _$SavedPaymentMethodImpl>
    implements _$$SavedPaymentMethodImplCopyWith<$Res> {
  __$$SavedPaymentMethodImplCopyWithImpl(_$SavedPaymentMethodImpl _value,
      $Res Function(_$SavedPaymentMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? billingDetails = freezed,
    Object? card = freezed,
    Object? created = freezed,
    Object? customer = freezed,
    Object? livemode = freezed,
    Object? metadata = freezed,
    Object? type = freezed,
  }) {
    return _then(_$SavedPaymentMethodImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      billingDetails: freezed == billingDetails
          ? _value.billingDetails
          : billingDetails // ignore: cast_nullable_to_non_nullable
              as BillingDetails?,
      card: freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as Card?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      livemode: freezed == livemode
          ? _value.livemode
          : livemode // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedPaymentMethodImpl implements _SavedPaymentMethod {
  const _$SavedPaymentMethodImpl(
      {this.id,
      this.object,
      this.billingDetails,
      this.card,
      this.created,
      this.customer,
      this.livemode,
      this.metadata,
      this.type});

  factory _$SavedPaymentMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedPaymentMethodImplFromJson(json);

  @override
  final String? id;
  @override
  final String? object;
  @override
  final BillingDetails? billingDetails;
  @override
  final Card? card;
  @override
  final int? created;
  @override
  final String? customer;
  @override
  final bool? livemode;
  @override
  final Metadata? metadata;
  @override
  final String? type;

  @override
  String toString() {
    return 'SavedPaymentMethod(id: $id, object: $object, billingDetails: $billingDetails, card: $card, created: $created, customer: $customer, livemode: $livemode, metadata: $metadata, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedPaymentMethodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.billingDetails, billingDetails) ||
                other.billingDetails == billingDetails) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.livemode, livemode) ||
                other.livemode == livemode) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, billingDetails, card,
      created, customer, livemode, metadata, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedPaymentMethodImplCopyWith<_$SavedPaymentMethodImpl> get copyWith =>
      __$$SavedPaymentMethodImplCopyWithImpl<_$SavedPaymentMethodImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedPaymentMethodImplToJson(
      this,
    );
  }
}

abstract class _SavedPaymentMethod implements SavedPaymentMethod {
  const factory _SavedPaymentMethod(
      {final String? id,
      final String? object,
      final BillingDetails? billingDetails,
      final Card? card,
      final int? created,
      final String? customer,
      final bool? livemode,
      final Metadata? metadata,
      final String? type}) = _$SavedPaymentMethodImpl;

  factory _SavedPaymentMethod.fromJson(Map<String, dynamic> json) =
      _$SavedPaymentMethodImpl.fromJson;

  @override
  String? get id;
  @override
  String? get object;
  @override
  BillingDetails? get billingDetails;
  @override
  Card? get card;
  @override
  int? get created;
  @override
  String? get customer;
  @override
  bool? get livemode;
  @override
  Metadata? get metadata;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$SavedPaymentMethodImplCopyWith<_$SavedPaymentMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BillingDetails _$BillingDetailsFromJson(Map<String, dynamic> json) {
  return _BillingDetails.fromJson(json);
}

/// @nodoc
mixin _$BillingDetails {
  Address? get address => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  dynamic get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillingDetailsCopyWith<BillingDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingDetailsCopyWith<$Res> {
  factory $BillingDetailsCopyWith(
          BillingDetails value, $Res Function(BillingDetails) then) =
      _$BillingDetailsCopyWithImpl<$Res, BillingDetails>;
  @useResult
  $Res call({Address? address, String? email, String? name, dynamic phone});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$BillingDetailsCopyWithImpl<$Res, $Val extends BillingDetails>
    implements $BillingDetailsCopyWith<$Res> {
  _$BillingDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BillingDetailsImplCopyWith<$Res>
    implements $BillingDetailsCopyWith<$Res> {
  factory _$$BillingDetailsImplCopyWith(_$BillingDetailsImpl value,
          $Res Function(_$BillingDetailsImpl) then) =
      __$$BillingDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address? address, String? email, String? name, dynamic phone});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$BillingDetailsImplCopyWithImpl<$Res>
    extends _$BillingDetailsCopyWithImpl<$Res, _$BillingDetailsImpl>
    implements _$$BillingDetailsImplCopyWith<$Res> {
  __$$BillingDetailsImplCopyWithImpl(
      _$BillingDetailsImpl _value, $Res Function(_$BillingDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$BillingDetailsImpl(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillingDetailsImpl implements _BillingDetails {
  const _$BillingDetailsImpl({this.address, this.email, this.name, this.phone});

  factory _$BillingDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillingDetailsImplFromJson(json);

  @override
  final Address? address;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final dynamic phone;

  @override
  String toString() {
    return 'BillingDetails(address: $address, email: $email, name: $name, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingDetailsImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, email, name,
      const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingDetailsImplCopyWith<_$BillingDetailsImpl> get copyWith =>
      __$$BillingDetailsImplCopyWithImpl<_$BillingDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingDetailsImplToJson(
      this,
    );
  }
}

abstract class _BillingDetails implements BillingDetails {
  const factory _BillingDetails(
      {final Address? address,
      final String? email,
      final String? name,
      final dynamic phone}) = _$BillingDetailsImpl;

  factory _BillingDetails.fromJson(Map<String, dynamic> json) =
      _$BillingDetailsImpl.fromJson;

  @override
  Address? get address;
  @override
  String? get email;
  @override
  String? get name;
  @override
  dynamic get phone;
  @override
  @JsonKey(ignore: true)
  _$$BillingDetailsImplCopyWith<_$BillingDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  dynamic get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  dynamic get line1 => throw _privateConstructorUsedError;
  dynamic get line2 => throw _privateConstructorUsedError;
  dynamic get postalCode => throw _privateConstructorUsedError;
  dynamic get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {dynamic city,
      String? country,
      dynamic line1,
      dynamic line2,
      dynamic postalCode,
      dynamic state});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? country = freezed,
    Object? line1 = freezed,
    Object? line2 = freezed,
    Object? postalCode = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      line1: freezed == line1
          ? _value.line1
          : line1 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      line2: freezed == line2
          ? _value.line2
          : line2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic city,
      String? country,
      dynamic line1,
      dynamic line2,
      dynamic postalCode,
      dynamic state});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? country = freezed,
    Object? line1 = freezed,
    Object? line2 = freezed,
    Object? postalCode = freezed,
    Object? state = freezed,
  }) {
    return _then(_$AddressImpl(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      line1: freezed == line1
          ? _value.line1
          : line1 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      line2: freezed == line2
          ? _value.line2
          : line2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {this.city,
      this.country,
      this.line1,
      this.line2,
      this.postalCode,
      this.state});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final dynamic city;
  @override
  final String? country;
  @override
  final dynamic line1;
  @override
  final dynamic line2;
  @override
  final dynamic postalCode;
  @override
  final dynamic state;

  @override
  String toString() {
    return 'Address(city: $city, country: $country, line1: $line1, line2: $line2, postalCode: $postalCode, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            const DeepCollectionEquality().equals(other.city, city) &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality().equals(other.line1, line1) &&
            const DeepCollectionEquality().equals(other.line2, line2) &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode) &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(city),
      country,
      const DeepCollectionEquality().hash(line1),
      const DeepCollectionEquality().hash(line2),
      const DeepCollectionEquality().hash(postalCode),
      const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {final dynamic city,
      final String? country,
      final dynamic line1,
      final dynamic line2,
      final dynamic postalCode,
      final dynamic state}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  dynamic get city;
  @override
  String? get country;
  @override
  dynamic get line1;
  @override
  dynamic get line2;
  @override
  dynamic get postalCode;
  @override
  dynamic get state;
  @override
  @JsonKey(ignore: true)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Card _$CardFromJson(Map<String, dynamic> json) {
  return _Card.fromJson(json);
}

/// @nodoc
mixin _$Card {
  String? get brand => throw _privateConstructorUsedError;
  Checks? get checks => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  int? get expMonth => throw _privateConstructorUsedError;
  int? get expYear => throw _privateConstructorUsedError;
  String? get fingerprint => throw _privateConstructorUsedError;
  String? get funding => throw _privateConstructorUsedError;
  dynamic get generatedFrom => throw _privateConstructorUsedError;
  String? get last4 => throw _privateConstructorUsedError;
  Networks? get networks => throw _privateConstructorUsedError;
  ThreeDSecureUsage? get threeDSecureUsage =>
      throw _privateConstructorUsedError;
  dynamic get wallet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res, Card>;
  @useResult
  $Res call(
      {String? brand,
      Checks? checks,
      String? country,
      int? expMonth,
      int? expYear,
      String? fingerprint,
      String? funding,
      dynamic generatedFrom,
      String? last4,
      Networks? networks,
      ThreeDSecureUsage? threeDSecureUsage,
      dynamic wallet});

  $ChecksCopyWith<$Res>? get checks;
  $NetworksCopyWith<$Res>? get networks;
  $ThreeDSecureUsageCopyWith<$Res>? get threeDSecureUsage;
}

/// @nodoc
class _$CardCopyWithImpl<$Res, $Val extends Card>
    implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? checks = freezed,
    Object? country = freezed,
    Object? expMonth = freezed,
    Object? expYear = freezed,
    Object? fingerprint = freezed,
    Object? funding = freezed,
    Object? generatedFrom = freezed,
    Object? last4 = freezed,
    Object? networks = freezed,
    Object? threeDSecureUsage = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_value.copyWith(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      checks: freezed == checks
          ? _value.checks
          : checks // ignore: cast_nullable_to_non_nullable
              as Checks?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      expMonth: freezed == expMonth
          ? _value.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      expYear: freezed == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as int?,
      fingerprint: freezed == fingerprint
          ? _value.fingerprint
          : fingerprint // ignore: cast_nullable_to_non_nullable
              as String?,
      funding: freezed == funding
          ? _value.funding
          : funding // ignore: cast_nullable_to_non_nullable
              as String?,
      generatedFrom: freezed == generatedFrom
          ? _value.generatedFrom
          : generatedFrom // ignore: cast_nullable_to_non_nullable
              as dynamic,
      last4: freezed == last4
          ? _value.last4
          : last4 // ignore: cast_nullable_to_non_nullable
              as String?,
      networks: freezed == networks
          ? _value.networks
          : networks // ignore: cast_nullable_to_non_nullable
              as Networks?,
      threeDSecureUsage: freezed == threeDSecureUsage
          ? _value.threeDSecureUsage
          : threeDSecureUsage // ignore: cast_nullable_to_non_nullable
              as ThreeDSecureUsage?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChecksCopyWith<$Res>? get checks {
    if (_value.checks == null) {
      return null;
    }

    return $ChecksCopyWith<$Res>(_value.checks!, (value) {
      return _then(_value.copyWith(checks: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworksCopyWith<$Res>? get networks {
    if (_value.networks == null) {
      return null;
    }

    return $NetworksCopyWith<$Res>(_value.networks!, (value) {
      return _then(_value.copyWith(networks: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ThreeDSecureUsageCopyWith<$Res>? get threeDSecureUsage {
    if (_value.threeDSecureUsage == null) {
      return null;
    }

    return $ThreeDSecureUsageCopyWith<$Res>(_value.threeDSecureUsage!, (value) {
      return _then(_value.copyWith(threeDSecureUsage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardImplCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$$CardImplCopyWith(
          _$CardImpl value, $Res Function(_$CardImpl) then) =
      __$$CardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? brand,
      Checks? checks,
      String? country,
      int? expMonth,
      int? expYear,
      String? fingerprint,
      String? funding,
      dynamic generatedFrom,
      String? last4,
      Networks? networks,
      ThreeDSecureUsage? threeDSecureUsage,
      dynamic wallet});

  @override
  $ChecksCopyWith<$Res>? get checks;
  @override
  $NetworksCopyWith<$Res>? get networks;
  @override
  $ThreeDSecureUsageCopyWith<$Res>? get threeDSecureUsage;
}

/// @nodoc
class __$$CardImplCopyWithImpl<$Res>
    extends _$CardCopyWithImpl<$Res, _$CardImpl>
    implements _$$CardImplCopyWith<$Res> {
  __$$CardImplCopyWithImpl(_$CardImpl _value, $Res Function(_$CardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? checks = freezed,
    Object? country = freezed,
    Object? expMonth = freezed,
    Object? expYear = freezed,
    Object? fingerprint = freezed,
    Object? funding = freezed,
    Object? generatedFrom = freezed,
    Object? last4 = freezed,
    Object? networks = freezed,
    Object? threeDSecureUsage = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_$CardImpl(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      checks: freezed == checks
          ? _value.checks
          : checks // ignore: cast_nullable_to_non_nullable
              as Checks?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      expMonth: freezed == expMonth
          ? _value.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      expYear: freezed == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as int?,
      fingerprint: freezed == fingerprint
          ? _value.fingerprint
          : fingerprint // ignore: cast_nullable_to_non_nullable
              as String?,
      funding: freezed == funding
          ? _value.funding
          : funding // ignore: cast_nullable_to_non_nullable
              as String?,
      generatedFrom: freezed == generatedFrom
          ? _value.generatedFrom
          : generatedFrom // ignore: cast_nullable_to_non_nullable
              as dynamic,
      last4: freezed == last4
          ? _value.last4
          : last4 // ignore: cast_nullable_to_non_nullable
              as String?,
      networks: freezed == networks
          ? _value.networks
          : networks // ignore: cast_nullable_to_non_nullable
              as Networks?,
      threeDSecureUsage: freezed == threeDSecureUsage
          ? _value.threeDSecureUsage
          : threeDSecureUsage // ignore: cast_nullable_to_non_nullable
              as ThreeDSecureUsage?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardImpl implements _Card {
  const _$CardImpl(
      {this.brand,
      this.checks,
      this.country,
      this.expMonth,
      this.expYear,
      this.fingerprint,
      this.funding,
      this.generatedFrom,
      this.last4,
      this.networks,
      this.threeDSecureUsage,
      this.wallet});

  factory _$CardImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardImplFromJson(json);

  @override
  final String? brand;
  @override
  final Checks? checks;
  @override
  final String? country;
  @override
  final int? expMonth;
  @override
  final int? expYear;
  @override
  final String? fingerprint;
  @override
  final String? funding;
  @override
  final dynamic generatedFrom;
  @override
  final String? last4;
  @override
  final Networks? networks;
  @override
  final ThreeDSecureUsage? threeDSecureUsage;
  @override
  final dynamic wallet;

  @override
  String toString() {
    return 'Card(brand: $brand, checks: $checks, country: $country, expMonth: $expMonth, expYear: $expYear, fingerprint: $fingerprint, funding: $funding, generatedFrom: $generatedFrom, last4: $last4, networks: $networks, threeDSecureUsage: $threeDSecureUsage, wallet: $wallet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardImpl &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.checks, checks) || other.checks == checks) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.expMonth, expMonth) ||
                other.expMonth == expMonth) &&
            (identical(other.expYear, expYear) || other.expYear == expYear) &&
            (identical(other.fingerprint, fingerprint) ||
                other.fingerprint == fingerprint) &&
            (identical(other.funding, funding) || other.funding == funding) &&
            const DeepCollectionEquality()
                .equals(other.generatedFrom, generatedFrom) &&
            (identical(other.last4, last4) || other.last4 == last4) &&
            (identical(other.networks, networks) ||
                other.networks == networks) &&
            (identical(other.threeDSecureUsage, threeDSecureUsage) ||
                other.threeDSecureUsage == threeDSecureUsage) &&
            const DeepCollectionEquality().equals(other.wallet, wallet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      brand,
      checks,
      country,
      expMonth,
      expYear,
      fingerprint,
      funding,
      const DeepCollectionEquality().hash(generatedFrom),
      last4,
      networks,
      threeDSecureUsage,
      const DeepCollectionEquality().hash(wallet));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardImplCopyWith<_$CardImpl> get copyWith =>
      __$$CardImplCopyWithImpl<_$CardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardImplToJson(
      this,
    );
  }
}

abstract class _Card implements Card {
  const factory _Card(
      {final String? brand,
      final Checks? checks,
      final String? country,
      final int? expMonth,
      final int? expYear,
      final String? fingerprint,
      final String? funding,
      final dynamic generatedFrom,
      final String? last4,
      final Networks? networks,
      final ThreeDSecureUsage? threeDSecureUsage,
      final dynamic wallet}) = _$CardImpl;

  factory _Card.fromJson(Map<String, dynamic> json) = _$CardImpl.fromJson;

  @override
  String? get brand;
  @override
  Checks? get checks;
  @override
  String? get country;
  @override
  int? get expMonth;
  @override
  int? get expYear;
  @override
  String? get fingerprint;
  @override
  String? get funding;
  @override
  dynamic get generatedFrom;
  @override
  String? get last4;
  @override
  Networks? get networks;
  @override
  ThreeDSecureUsage? get threeDSecureUsage;
  @override
  dynamic get wallet;
  @override
  @JsonKey(ignore: true)
  _$$CardImplCopyWith<_$CardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Checks _$ChecksFromJson(Map<String, dynamic> json) {
  return _Checks.fromJson(json);
}

/// @nodoc
mixin _$Checks {
  dynamic get addressLine1Check => throw _privateConstructorUsedError;
  dynamic get addressPostalCodeCheck => throw _privateConstructorUsedError;
  String? get cvcCheck => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChecksCopyWith<Checks> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecksCopyWith<$Res> {
  factory $ChecksCopyWith(Checks value, $Res Function(Checks) then) =
      _$ChecksCopyWithImpl<$Res, Checks>;
  @useResult
  $Res call(
      {dynamic addressLine1Check,
      dynamic addressPostalCodeCheck,
      String? cvcCheck});
}

/// @nodoc
class _$ChecksCopyWithImpl<$Res, $Val extends Checks>
    implements $ChecksCopyWith<$Res> {
  _$ChecksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressLine1Check = freezed,
    Object? addressPostalCodeCheck = freezed,
    Object? cvcCheck = freezed,
  }) {
    return _then(_value.copyWith(
      addressLine1Check: freezed == addressLine1Check
          ? _value.addressLine1Check
          : addressLine1Check // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressPostalCodeCheck: freezed == addressPostalCodeCheck
          ? _value.addressPostalCodeCheck
          : addressPostalCodeCheck // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cvcCheck: freezed == cvcCheck
          ? _value.cvcCheck
          : cvcCheck // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChecksImplCopyWith<$Res> implements $ChecksCopyWith<$Res> {
  factory _$$ChecksImplCopyWith(
          _$ChecksImpl value, $Res Function(_$ChecksImpl) then) =
      __$$ChecksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic addressLine1Check,
      dynamic addressPostalCodeCheck,
      String? cvcCheck});
}

/// @nodoc
class __$$ChecksImplCopyWithImpl<$Res>
    extends _$ChecksCopyWithImpl<$Res, _$ChecksImpl>
    implements _$$ChecksImplCopyWith<$Res> {
  __$$ChecksImplCopyWithImpl(
      _$ChecksImpl _value, $Res Function(_$ChecksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressLine1Check = freezed,
    Object? addressPostalCodeCheck = freezed,
    Object? cvcCheck = freezed,
  }) {
    return _then(_$ChecksImpl(
      addressLine1Check: freezed == addressLine1Check
          ? _value.addressLine1Check
          : addressLine1Check // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressPostalCodeCheck: freezed == addressPostalCodeCheck
          ? _value.addressPostalCodeCheck
          : addressPostalCodeCheck // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cvcCheck: freezed == cvcCheck
          ? _value.cvcCheck
          : cvcCheck // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChecksImpl implements _Checks {
  const _$ChecksImpl(
      {this.addressLine1Check, this.addressPostalCodeCheck, this.cvcCheck});

  factory _$ChecksImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChecksImplFromJson(json);

  @override
  final dynamic addressLine1Check;
  @override
  final dynamic addressPostalCodeCheck;
  @override
  final String? cvcCheck;

  @override
  String toString() {
    return 'Checks(addressLine1Check: $addressLine1Check, addressPostalCodeCheck: $addressPostalCodeCheck, cvcCheck: $cvcCheck)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChecksImpl &&
            const DeepCollectionEquality()
                .equals(other.addressLine1Check, addressLine1Check) &&
            const DeepCollectionEquality()
                .equals(other.addressPostalCodeCheck, addressPostalCodeCheck) &&
            (identical(other.cvcCheck, cvcCheck) ||
                other.cvcCheck == cvcCheck));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(addressLine1Check),
      const DeepCollectionEquality().hash(addressPostalCodeCheck),
      cvcCheck);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChecksImplCopyWith<_$ChecksImpl> get copyWith =>
      __$$ChecksImplCopyWithImpl<_$ChecksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChecksImplToJson(
      this,
    );
  }
}

abstract class _Checks implements Checks {
  const factory _Checks(
      {final dynamic addressLine1Check,
      final dynamic addressPostalCodeCheck,
      final String? cvcCheck}) = _$ChecksImpl;

  factory _Checks.fromJson(Map<String, dynamic> json) = _$ChecksImpl.fromJson;

  @override
  dynamic get addressLine1Check;
  @override
  dynamic get addressPostalCodeCheck;
  @override
  String? get cvcCheck;
  @override
  @JsonKey(ignore: true)
  _$$ChecksImplCopyWith<_$ChecksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Networks _$NetworksFromJson(Map<String, dynamic> json) {
  return _Networks.fromJson(json);
}

/// @nodoc
mixin _$Networks {
  List<String>? get available => throw _privateConstructorUsedError;
  dynamic get preferred => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NetworksCopyWith<Networks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworksCopyWith<$Res> {
  factory $NetworksCopyWith(Networks value, $Res Function(Networks) then) =
      _$NetworksCopyWithImpl<$Res, Networks>;
  @useResult
  $Res call({List<String>? available, dynamic preferred});
}

/// @nodoc
class _$NetworksCopyWithImpl<$Res, $Val extends Networks>
    implements $NetworksCopyWith<$Res> {
  _$NetworksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? preferred = freezed,
  }) {
    return _then(_value.copyWith(
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      preferred: freezed == preferred
          ? _value.preferred
          : preferred // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworksImplCopyWith<$Res>
    implements $NetworksCopyWith<$Res> {
  factory _$$NetworksImplCopyWith(
          _$NetworksImpl value, $Res Function(_$NetworksImpl) then) =
      __$$NetworksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? available, dynamic preferred});
}

/// @nodoc
class __$$NetworksImplCopyWithImpl<$Res>
    extends _$NetworksCopyWithImpl<$Res, _$NetworksImpl>
    implements _$$NetworksImplCopyWith<$Res> {
  __$$NetworksImplCopyWithImpl(
      _$NetworksImpl _value, $Res Function(_$NetworksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? preferred = freezed,
  }) {
    return _then(_$NetworksImpl(
      available: freezed == available
          ? _value._available
          : available // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      preferred: freezed == preferred
          ? _value.preferred
          : preferred // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworksImpl implements _Networks {
  const _$NetworksImpl({final List<String>? available, this.preferred})
      : _available = available;

  factory _$NetworksImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworksImplFromJson(json);

  final List<String>? _available;
  @override
  List<String>? get available {
    final value = _available;
    if (value == null) return null;
    if (_available is EqualUnmodifiableListView) return _available;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic preferred;

  @override
  String toString() {
    return 'Networks(available: $available, preferred: $preferred)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworksImpl &&
            const DeepCollectionEquality()
                .equals(other._available, _available) &&
            const DeepCollectionEquality().equals(other.preferred, preferred));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_available),
      const DeepCollectionEquality().hash(preferred));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworksImplCopyWith<_$NetworksImpl> get copyWith =>
      __$$NetworksImplCopyWithImpl<_$NetworksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworksImplToJson(
      this,
    );
  }
}

abstract class _Networks implements Networks {
  const factory _Networks(
      {final List<String>? available,
      final dynamic preferred}) = _$NetworksImpl;

  factory _Networks.fromJson(Map<String, dynamic> json) =
      _$NetworksImpl.fromJson;

  @override
  List<String>? get available;
  @override
  dynamic get preferred;
  @override
  @JsonKey(ignore: true)
  _$$NetworksImplCopyWith<_$NetworksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThreeDSecureUsage _$ThreeDSecureUsageFromJson(Map<String, dynamic> json) {
  return _ThreeDSecureUsage.fromJson(json);
}

/// @nodoc
mixin _$ThreeDSecureUsage {
  bool? get supported => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThreeDSecureUsageCopyWith<ThreeDSecureUsage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreeDSecureUsageCopyWith<$Res> {
  factory $ThreeDSecureUsageCopyWith(
          ThreeDSecureUsage value, $Res Function(ThreeDSecureUsage) then) =
      _$ThreeDSecureUsageCopyWithImpl<$Res, ThreeDSecureUsage>;
  @useResult
  $Res call({bool? supported});
}

/// @nodoc
class _$ThreeDSecureUsageCopyWithImpl<$Res, $Val extends ThreeDSecureUsage>
    implements $ThreeDSecureUsageCopyWith<$Res> {
  _$ThreeDSecureUsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supported = freezed,
  }) {
    return _then(_value.copyWith(
      supported: freezed == supported
          ? _value.supported
          : supported // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThreeDSecureUsageImplCopyWith<$Res>
    implements $ThreeDSecureUsageCopyWith<$Res> {
  factory _$$ThreeDSecureUsageImplCopyWith(_$ThreeDSecureUsageImpl value,
          $Res Function(_$ThreeDSecureUsageImpl) then) =
      __$$ThreeDSecureUsageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? supported});
}

/// @nodoc
class __$$ThreeDSecureUsageImplCopyWithImpl<$Res>
    extends _$ThreeDSecureUsageCopyWithImpl<$Res, _$ThreeDSecureUsageImpl>
    implements _$$ThreeDSecureUsageImplCopyWith<$Res> {
  __$$ThreeDSecureUsageImplCopyWithImpl(_$ThreeDSecureUsageImpl _value,
      $Res Function(_$ThreeDSecureUsageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supported = freezed,
  }) {
    return _then(_$ThreeDSecureUsageImpl(
      supported: freezed == supported
          ? _value.supported
          : supported // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThreeDSecureUsageImpl implements _ThreeDSecureUsage {
  const _$ThreeDSecureUsageImpl({this.supported});

  factory _$ThreeDSecureUsageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThreeDSecureUsageImplFromJson(json);

  @override
  final bool? supported;

  @override
  String toString() {
    return 'ThreeDSecureUsage(supported: $supported)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThreeDSecureUsageImpl &&
            (identical(other.supported, supported) ||
                other.supported == supported));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, supported);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThreeDSecureUsageImplCopyWith<_$ThreeDSecureUsageImpl> get copyWith =>
      __$$ThreeDSecureUsageImplCopyWithImpl<_$ThreeDSecureUsageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThreeDSecureUsageImplToJson(
      this,
    );
  }
}

abstract class _ThreeDSecureUsage implements ThreeDSecureUsage {
  const factory _ThreeDSecureUsage({final bool? supported}) =
      _$ThreeDSecureUsageImpl;

  factory _ThreeDSecureUsage.fromJson(Map<String, dynamic> json) =
      _$ThreeDSecureUsageImpl.fromJson;

  @override
  bool? get supported;
  @override
  @JsonKey(ignore: true)
  _$$ThreeDSecureUsageImplCopyWith<_$ThreeDSecureUsageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Metadata _$MetadataFromJson(Map<String, dynamic> json) {
  return _Metadata.fromJson(json);
}

/// @nodoc
mixin _$Metadata {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res, Metadata>;
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res, $Val extends Metadata>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MetadataImplCopyWith<$Res> {
  factory _$$MetadataImplCopyWith(
          _$MetadataImpl value, $Res Function(_$MetadataImpl) then) =
      __$$MetadataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MetadataImplCopyWithImpl<$Res>
    extends _$MetadataCopyWithImpl<$Res, _$MetadataImpl>
    implements _$$MetadataImplCopyWith<$Res> {
  __$$MetadataImplCopyWithImpl(
      _$MetadataImpl _value, $Res Function(_$MetadataImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$MetadataImpl implements _Metadata {
  const _$MetadataImpl();

  factory _$MetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataImplFromJson(json);

  @override
  String toString() {
    return 'Metadata()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MetadataImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataImplToJson(
      this,
    );
  }
}

abstract class _Metadata implements Metadata {
  const factory _Metadata() = _$MetadataImpl;

  factory _Metadata.fromJson(Map<String, dynamic> json) =
      _$MetadataImpl.fromJson;
}
