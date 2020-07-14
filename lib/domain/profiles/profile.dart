import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:DDD_firebase_framework/domain/core/failures.dart';
import 'package:DDD_firebase_framework/domain/core/value_objects.dart';
import 'package:DDD_firebase_framework/domain/profiles/value_objects.dart';

part 'profile.freezed.dart';

@freezed
abstract class Profile implements _$Profile {
  const Profile._();
  const factory Profile({
    @required UniqueId id,
    @required ProfileName name,
    @required ProfileLastName lastName,
    @required ProfilePhoneNumber phoneNumber,
    @required ProfileGender gender,
    @required ProfileCountry country,
    @required ProfileProvince province,
    @required ProfileCity city,
    @required ProfileStreet street,
    @required ProfileStreetNumber streetNumber,
    @required ProfileOtherAddressData otherAddressData,
  }) = _Profile;

  factory Profile.empty() => Profile(
        id: UniqueId(),
        name: ProfileName(''),
        lastName: ProfileLastName(''),
        phoneNumber: ProfilePhoneNumber(''),
        gender: ProfileGender(''),
        city: ProfileCity(''),
        country: ProfileCountry(''),
        otherAddressData: ProfileOtherAddressData(''),
        province: ProfileProvince(''),
        street: ProfileStreet(''),
        streetNumber: ProfileStreetNumber(0),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(lastName.failureOrUnit)
        .andThen(phoneNumber.failureOrUnit)
        .andThen(gender.failureOrUnit)
        .andThen(city.failureOrUnit)
        .andThen(country.failureOrUnit)
        .andThen(otherAddressData.failureOrUnit)
        .andThen(province.failureOrUnit)
        .andThen(street.failureOrUnit)
        .andThen(streetNumber.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
