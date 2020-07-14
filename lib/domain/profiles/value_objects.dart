import 'package:dartz/dartz.dart';
import 'package:DDD_firebase_framework/domain/core/failures.dart';
import 'package:DDD_firebase_framework/domain/core/value_validators.dart';
import 'package:DDD_firebase_framework/domain/core/value_objects.dart';

class ProfileName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory ProfileName(String input) {
    assert(input != null);
    return ProfileName._(
      //Flat map lo que hace es ir encadenando las validaciones
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }
  const ProfileName._(this.value);
}

class ProfileLastName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory ProfileLastName(String input) {
    assert(input != null);
    return ProfileLastName._(
      //Flat map lo que hace es ir encadenando las validaciones
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }
  const ProfileLastName._(this.value);
}

class ProfilePhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProfilePhoneNumber(String input) {
    assert(input != null);
    return ProfilePhoneNumber._(
      validatePhoneNumber(input),
    );
  }
  const ProfilePhoneNumber._(this.value);
}

class ProfileGender extends ValueObject<String> {
  static const List<String> predefinedGenders = [
    'Male',
    'Female',
    'Unspecified'
  ];
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProfileGender(String input) {
    assert(input != null);
    return ProfileGender._(
      validateStringNotEmpty(input),
    );
  }

  const ProfileGender._(this.value);
}

class ProfileCountry extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProfileCountry(String input) {
    assert(input != null);
    return ProfileCountry._(
      right(input),
    );
  }

  const ProfileCountry._(this.value);
}

class ProfileProvince extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProfileProvince(String input) {
    assert(input != null);
    return ProfileProvince._(
      right(input),
    );
  }

  const ProfileProvince._(this.value);
}

class ProfileCity extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProfileCity(String input) {
    assert(input != null);
    return ProfileCity._(
      right(input),
    );
  }

  const ProfileCity._(this.value);
}

class ProfileStreet extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory ProfileStreet(String input) {
    assert(input != null);
    return ProfileStreet._(
      //Flat map lo que hace es ir encadenando las validaciones
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }
  const ProfileStreet._(this.value);
}

class ProfileStreetNumber extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  static const maxLength = 100;

  factory ProfileStreetNumber(int input) {
    assert(input != null);

    return ProfileStreetNumber._(
      right(input),
    );
  }
  const ProfileStreetNumber._(this.value);
}

class ProfileOtherAddressData extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 200;

  factory ProfileOtherAddressData(String input) {
    assert(input != null);
    return ProfileOtherAddressData._(
        //Flat map lo que hace es ir encadenando las validaciones
        validateMaxStringLength(input, maxLength));
  }
  const ProfileOtherAddressData._(this.value);
}

class CountryId {
  final ProfileCountry country;
  final String id;

  CountryId(this.country, this.id);
}

class ProvinceId {
  final ProfileProvince province;
  final String id;

  ProvinceId(this.province, this.id);
}

class CityId {
  final ProfileCity city;
  final String id;

  CityId(this.city, this.id);
}
