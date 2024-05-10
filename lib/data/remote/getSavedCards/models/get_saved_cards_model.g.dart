// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_saved_cards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetSavedCardsModelImpl _$$GetSavedCardsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetSavedCardsModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      savedPaymentMethod: (json['savedPaymentMethod'] as List<dynamic>?)
          ?.map((e) => SavedPaymentMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetSavedCardsModelImplToJson(
        _$GetSavedCardsModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'savedPaymentMethod': instance.savedPaymentMethod,
    };

_$SavedPaymentMethodImpl _$$SavedPaymentMethodImplFromJson(
        Map<String, dynamic> json) =>
    _$SavedPaymentMethodImpl(
      id: json['id'] as String?,
      object: json['object'] as String?,
      billingDetails: json['billingDetails'] == null
          ? null
          : BillingDetails.fromJson(
              json['billingDetails'] as Map<String, dynamic>),
      card: json['card'] == null
          ? null
          : Card.fromJson(json['card'] as Map<String, dynamic>),
      created: json['created'] as int?,
      customer: json['customer'] as String?,
      livemode: json['livemode'] as bool?,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$SavedPaymentMethodImplToJson(
        _$SavedPaymentMethodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'billingDetails': instance.billingDetails,
      'card': instance.card,
      'created': instance.created,
      'customer': instance.customer,
      'livemode': instance.livemode,
      'metadata': instance.metadata,
      'type': instance.type,
    };

_$BillingDetailsImpl _$$BillingDetailsImplFromJson(Map<String, dynamic> json) =>
    _$BillingDetailsImpl(
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      email: json['email'] as String?,
      name: json['name'] as String?,
      phone: json['phone'],
    );

Map<String, dynamic> _$$BillingDetailsImplToJson(
        _$BillingDetailsImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      city: json['city'],
      country: json['country'] as String?,
      line1: json['line1'],
      line2: json['line2'],
      postalCode: json['postalCode'],
      state: json['state'],
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
      'country': instance.country,
      'line1': instance.line1,
      'line2': instance.line2,
      'postalCode': instance.postalCode,
      'state': instance.state,
    };

_$CardImpl _$$CardImplFromJson(Map<String, dynamic> json) => _$CardImpl(
      brand: json['brand'] as String?,
      checks: json['checks'] == null
          ? null
          : Checks.fromJson(json['checks'] as Map<String, dynamic>),
      country: json['country'] as String?,
      expMonth: json['expMonth'] as int?,
      expYear: json['expYear'] as int?,
      fingerprint: json['fingerprint'] as String?,
      funding: json['funding'] as String?,
      generatedFrom: json['generatedFrom'],
      last4: json['last4'] as String?,
      networks: json['networks'] == null
          ? null
          : Networks.fromJson(json['networks'] as Map<String, dynamic>),
      threeDSecureUsage: json['threeDSecureUsage'] == null
          ? null
          : ThreeDSecureUsage.fromJson(
              json['threeDSecureUsage'] as Map<String, dynamic>),
      wallet: json['wallet'],
    );

Map<String, dynamic> _$$CardImplToJson(_$CardImpl instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'checks': instance.checks,
      'country': instance.country,
      'expMonth': instance.expMonth,
      'expYear': instance.expYear,
      'fingerprint': instance.fingerprint,
      'funding': instance.funding,
      'generatedFrom': instance.generatedFrom,
      'last4': instance.last4,
      'networks': instance.networks,
      'threeDSecureUsage': instance.threeDSecureUsage,
      'wallet': instance.wallet,
    };

_$ChecksImpl _$$ChecksImplFromJson(Map<String, dynamic> json) => _$ChecksImpl(
      addressLine1Check: json['addressLine1Check'],
      addressPostalCodeCheck: json['addressPostalCodeCheck'],
      cvcCheck: json['cvcCheck'] as String?,
    );

Map<String, dynamic> _$$ChecksImplToJson(_$ChecksImpl instance) =>
    <String, dynamic>{
      'addressLine1Check': instance.addressLine1Check,
      'addressPostalCodeCheck': instance.addressPostalCodeCheck,
      'cvcCheck': instance.cvcCheck,
    };

_$NetworksImpl _$$NetworksImplFromJson(Map<String, dynamic> json) =>
    _$NetworksImpl(
      available: (json['available'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      preferred: json['preferred'],
    );

Map<String, dynamic> _$$NetworksImplToJson(_$NetworksImpl instance) =>
    <String, dynamic>{
      'available': instance.available,
      'preferred': instance.preferred,
    };

_$ThreeDSecureUsageImpl _$$ThreeDSecureUsageImplFromJson(
        Map<String, dynamic> json) =>
    _$ThreeDSecureUsageImpl(
      supported: json['supported'] as bool?,
    );

Map<String, dynamic> _$$ThreeDSecureUsageImplToJson(
        _$ThreeDSecureUsageImpl instance) =>
    <String, dynamic>{
      'supported': instance.supported,
    };

_$MetadataImpl _$$MetadataImplFromJson(Map<String, dynamic> json) =>
    _$MetadataImpl();

Map<String, dynamic> _$$MetadataImplToJson(_$MetadataImpl instance) =>
    <String, dynamic>{};
