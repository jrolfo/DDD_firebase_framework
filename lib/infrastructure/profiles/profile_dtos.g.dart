// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileDto _$_$_ProfileDtoFromJson(Map<String, dynamic> json) {
  return _$_ProfileDto(
    name: json['name'] as String,
    lastName: json['lastName'] as String,
    phoneNumber: json['phoneNumber'] as String,
    gender: json['gender'] as String,
    country: json['country'] as String,
    province: json['province'] as String,
    city: json['city'] as String,
    street: json['street'] as String,
    streetNumber: json['streetNumber'] as int,
    otherAddressData: json['otherAddressData'] as String,
  );
}

Map<String, dynamic> _$_$_ProfileDtoToJson(_$_ProfileDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'gender': instance.gender,
      'country': instance.country,
      'province': instance.province,
      'city': instance.city,
      'street': instance.street,
      'streetNumber': instance.streetNumber,
      'otherAddressData': instance.otherAddressData,
    };
