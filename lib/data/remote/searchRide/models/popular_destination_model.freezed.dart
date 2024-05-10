// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_destination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PopularDestinationResponse _$PopularDestinationResponseFromJson(
    Map<String, dynamic> json) {
  return _PopularDestinationResponse.fromJson(json);
}

/// @nodoc
mixin _$PopularDestinationResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  List<String>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularDestinationResponseCopyWith<PopularDestinationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularDestinationResponseCopyWith<$Res> {
  factory $PopularDestinationResponseCopyWith(PopularDestinationResponse value,
          $Res Function(PopularDestinationResponse) then) =
      _$PopularDestinationResponseCopyWithImpl<$Res,
          PopularDestinationResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<String>? data});
}

/// @nodoc
class _$PopularDestinationResponseCopyWithImpl<$Res,
        $Val extends PopularDestinationResponse>
    implements $PopularDestinationResponseCopyWith<$Res> {
  _$PopularDestinationResponseCopyWithImpl(this._value, this._then);

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
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopularDestinationResponseImplCopyWith<$Res>
    implements $PopularDestinationResponseCopyWith<$Res> {
  factory _$$PopularDestinationResponseImplCopyWith(
          _$PopularDestinationResponseImpl value,
          $Res Function(_$PopularDestinationResponseImpl) then) =
      __$$PopularDestinationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<String>? data});
}

/// @nodoc
class __$$PopularDestinationResponseImplCopyWithImpl<$Res>
    extends _$PopularDestinationResponseCopyWithImpl<$Res,
        _$PopularDestinationResponseImpl>
    implements _$$PopularDestinationResponseImplCopyWith<$Res> {
  __$$PopularDestinationResponseImplCopyWithImpl(
      _$PopularDestinationResponseImpl _value,
      $Res Function(_$PopularDestinationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PopularDestinationResponseImpl(
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PopularDestinationResponseImpl implements _PopularDestinationResponse {
  const _$PopularDestinationResponseImpl(
      {this.code, this.message, this.isSuccess, final List<String>? data})
      : _data = data;

  factory _$PopularDestinationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PopularDestinationResponseImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  final List<String>? _data;
  @override
  List<String>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PopularDestinationResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularDestinationResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, isSuccess,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularDestinationResponseImplCopyWith<_$PopularDestinationResponseImpl>
      get copyWith => __$$PopularDestinationResponseImplCopyWithImpl<
          _$PopularDestinationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularDestinationResponseImplToJson(
      this,
    );
  }
}

abstract class _PopularDestinationResponse
    implements PopularDestinationResponse {
  const factory _PopularDestinationResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final List<String>? data}) = _$PopularDestinationResponseImpl;

  factory _PopularDestinationResponse.fromJson(Map<String, dynamic> json) =
      _$PopularDestinationResponseImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  List<String>? get data;
  @override
  @JsonKey(ignore: true)
  _$$PopularDestinationResponseImplCopyWith<_$PopularDestinationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
