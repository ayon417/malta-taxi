import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_saved_cards_model.freezed.dart';
part 'get_saved_cards_model.g.dart';

GetSavedCardsModel getSavedCardsModelFromJson(String str) => GetSavedCardsModel.fromJson(json.decode(str));
String getSavedCardsModelToJson(GetSavedCardsModel data) => json.encode(data.toJson());

@freezed
class GetSavedCardsModel with _$GetSavedCardsModel {
    const factory GetSavedCardsModel({
        int? code,
        String? message,
        bool? isSuccess,
        List<SavedPaymentMethod>? savedPaymentMethod,
    }) = _GetSavedCardsModel;

    factory GetSavedCardsModel.fromJson(Map<String, dynamic> json) => _$GetSavedCardsModelFromJson(json);
}

@freezed
class SavedPaymentMethod with _$SavedPaymentMethod {
    const factory SavedPaymentMethod({
        String? id,
        String? object,
        BillingDetails? billingDetails,
        Card? card,
        int? created,
        String? customer,
        bool? livemode,
        Metadata? metadata,
        String? type,
    }) = _SavedPaymentMethod;

    factory SavedPaymentMethod.fromJson(Map<String, dynamic> json) => _$SavedPaymentMethodFromJson(json);
}

@freezed
class BillingDetails with _$BillingDetails {
    const factory BillingDetails({
        Address? address,
        String? email,
        String? name,
        dynamic phone,
    }) = _BillingDetails;

    factory BillingDetails.fromJson(Map<String, dynamic> json) => _$BillingDetailsFromJson(json);
}

@freezed
class Address with _$Address {
    const factory Address({
        dynamic city,
        String? country,
        dynamic line1,
        dynamic line2,
        dynamic postalCode,
        dynamic state,
    }) = _Address;

    factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

@freezed
class Card with _$Card {
    const factory Card({
        String? brand,
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
        dynamic wallet,
    }) = _Card;

    factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}

@freezed
class Checks with _$Checks {
    const factory Checks({
        dynamic addressLine1Check,
        dynamic addressPostalCodeCheck,
        String? cvcCheck,
    }) = _Checks;

    factory Checks.fromJson(Map<String, dynamic> json) => _$ChecksFromJson(json);
}

@freezed
class Networks with _$Networks {
    const factory Networks({
        List<String>? available,
        dynamic preferred,
    }) = _Networks;

    factory Networks.fromJson(Map<String, dynamic> json) => _$NetworksFromJson(json);
}

@freezed
class ThreeDSecureUsage with _$ThreeDSecureUsage {
    const factory ThreeDSecureUsage({
        bool? supported,
    }) = _ThreeDSecureUsage;

    factory ThreeDSecureUsage.fromJson(Map<String, dynamic> json) => _$ThreeDSecureUsageFromJson(json);
}

@freezed
class Metadata with _$Metadata {
    const factory Metadata() = _Metadata;

    factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);
}