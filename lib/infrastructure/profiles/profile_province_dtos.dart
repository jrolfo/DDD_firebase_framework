import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:DDD_firebase_framework/domain/profiles/value_objects.dart';

part 'profile_province_dtos.freezed.dart';
part 'profile_province_dtos.g.dart';

@freezed
abstract class ProfileProvinceDto implements _$ProfileProvinceDto {
  const ProfileProvinceDto._();

  const factory ProfileProvinceDto({
    @required String province,
  }) = _ProfileProvinceDto;

  factory ProfileProvinceDto.fromDomain(ProfileProvince profileProvince) {
    return ProfileProvinceDto(
      province: profileProvince.getOrCrash(),
    );
  }

  ProfileProvince toDomain() {
    return ProfileProvince(province);
  }

  //factory from JSON
  factory ProfileProvinceDto.fromJson(Map<String, dynamic> json) {
    final province = json['province'] as String;
    return ProfileProvinceDto(province: province);
  }

  //factory from firestore el copy with es para agregarle el id
  factory ProfileProvinceDto.fromFirestore(DocumentSnapshot doc) {
    return ProfileProvinceDto.fromJson(doc.data);
  }
}
