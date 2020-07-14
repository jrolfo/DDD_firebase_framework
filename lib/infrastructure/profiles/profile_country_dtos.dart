import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:DDD_firebase_framework/domain/profiles/value_objects.dart';

part 'profile_country_dtos.freezed.dart';
part 'profile_country_dtos.g.dart';

@freezed
abstract class ProfileCountryDto implements _$ProfileCountryDto {
  const ProfileCountryDto._();

  const factory ProfileCountryDto({
    @required String country,
  }) = _ProfileCountryDto;

  factory ProfileCountryDto.fromDomain(ProfileCountry profileCountry) {
    return ProfileCountryDto(
      country: profileCountry.getOrCrash(),
    );
  }

  ProfileCountry toDomain() {
    return ProfileCountry(country);
  }

  //factory from JSON
  factory ProfileCountryDto.fromJson(Map<String, dynamic> json) {
    final country = json['country'] as String;
    return ProfileCountryDto(country: country);
  }

  //factory from firestore el copy with es para agregarle el id
  factory ProfileCountryDto.fromFirestore(DocumentSnapshot doc) {
    return ProfileCountryDto.fromJson(doc.data);
  }
}
