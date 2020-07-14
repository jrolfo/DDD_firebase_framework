import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:DDD_firebase_framework/domain/core/value_objects.dart';
import 'package:DDD_firebase_framework/domain/profiles/profile.dart';
import 'package:DDD_firebase_framework/domain/profiles/value_objects.dart';

part 'profile_dtos.freezed.dart';

part 'profile_dtos.g.dart';

@freezed
abstract class ProfileDto implements _$ProfileDto {
  const ProfileDto._();

  const factory ProfileDto({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required String lastName,
    @required String phoneNumber,
    @required String gender,
    @required String country,
    @required String province,
    @required String city,
    @required String street,
    @required int streetNumber,
    @required String otherAddressData,
  }) = _ProfileDto;
  //Constructor para recibir un objeto desde el domninio, agarra el objeto del dominio y te lo transforma en uno que contiene todos tipos primitivos
  factory ProfileDto.fromDomain(Profile profile) {
    return ProfileDto(
      id: profile.id.getOrCrash(),
      name: profile.name.getOrCrash(),
      lastName: profile.lastName.getOrCrash(),
      phoneNumber: profile.phoneNumber.getOrCrash(),
      gender: profile.gender.getOrCrash(),
      country: profile.country.getOrCrash(),
      province: profile.province.getOrCrash(),
      city: profile.city.getOrCrash(),
      street: profile.street.getOrCrash(),
      streetNumber: profile.streetNumber.getOrCrash(),
      otherAddressData: profile.otherAddressData.getOrCrash(),
    );
  }
  //Metodo toDomain agarra los campos del objeto y los transforma en algo que el domain entiende
  Profile toDomain() {
    return Profile(
      id: UniqueId.fromUniqueString(id),
      name: ProfileName(name),
      lastName: ProfileLastName(lastName),
      phoneNumber: ProfilePhoneNumber(phoneNumber),
      gender: ProfileGender(gender),
      country: ProfileCountry(country),
      province: ProfileProvince(province),
      city: ProfileCity(city),
      street: ProfileStreet(street),
      streetNumber: ProfileStreetNumber(streetNumber),
      otherAddressData: ProfileOtherAddressData(otherAddressData),
    );
  }

  //factory from JSON
  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);

  //factory from firestore el copy with es para agregarle el id
  factory ProfileDto.fromFirestore(DocumentSnapshot doc) {
    return ProfileDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}
