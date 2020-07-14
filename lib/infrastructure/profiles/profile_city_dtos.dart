import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:DDD_firebase_framework/domain/profiles/value_objects.dart';

part 'profile_city_dtos.freezed.dart';
part 'profile_city_dtos.g.dart';

@freezed
abstract class ProfileCityDto implements _$ProfileCityDto {
  const ProfileCityDto._();

  const factory ProfileCityDto({
    @required String city,
  }) = _ProfileCityDto;

  factory ProfileCityDto.fromDomain(ProfileCity profileCity) {
    return ProfileCityDto(
      city: profileCity.getOrCrash(),
    );
  }

  ProfileCity toDomain() {
    return ProfileCity(city);
  }

  //factory from JSON
  factory ProfileCityDto.fromJson(Map<String, dynamic> json) {
    final city = json['city'] as String;
    return ProfileCityDto(city: city);
  }

  //factory from firestore el copy with es para agregarle el id
  factory ProfileCityDto.fromFirestore(DocumentSnapshot doc) {
    return ProfileCityDto.fromJson(doc.data);
  }
}
