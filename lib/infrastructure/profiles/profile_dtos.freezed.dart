// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'profile_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) {
  return _ProfileDto.fromJson(json);
}

class _$ProfileDtoTearOff {
  const _$ProfileDtoTearOff();

  _ProfileDto call(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required String lastName,
      @required String phoneNumber,
      @required String gender,
      @required String country,
      @required String province,
      @required String city,
      @required String street,
      @required int streetNumber,
      @required String otherAddressData}) {
    return _ProfileDto(
      id: id,
      name: name,
      lastName: lastName,
      phoneNumber: phoneNumber,
      gender: gender,
      country: country,
      province: province,
      city: city,
      street: street,
      streetNumber: streetNumber,
      otherAddressData: otherAddressData,
    );
  }
}

// ignore: unused_element
const $ProfileDto = _$ProfileDtoTearOff();

mixin _$ProfileDto {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  String get lastName;
  String get phoneNumber;
  String get gender;
  String get country;
  String get province;
  String get city;
  String get street;
  int get streetNumber;
  String get otherAddressData;

  Map<String, dynamic> toJson();
  $ProfileDtoCopyWith<ProfileDto> get copyWith;
}

abstract class $ProfileDtoCopyWith<$Res> {
  factory $ProfileDtoCopyWith(
          ProfileDto value, $Res Function(ProfileDto) then) =
      _$ProfileDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String lastName,
      String phoneNumber,
      String gender,
      String country,
      String province,
      String city,
      String street,
      int streetNumber,
      String otherAddressData});
}

class _$ProfileDtoCopyWithImpl<$Res> implements $ProfileDtoCopyWith<$Res> {
  _$ProfileDtoCopyWithImpl(this._value, this._then);

  final ProfileDto _value;
  // ignore: unused_field
  final $Res Function(ProfileDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object lastName = freezed,
    Object phoneNumber = freezed,
    Object gender = freezed,
    Object country = freezed,
    Object province = freezed,
    Object city = freezed,
    Object street = freezed,
    Object streetNumber = freezed,
    Object otherAddressData = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      gender: gender == freezed ? _value.gender : gender as String,
      country: country == freezed ? _value.country : country as String,
      province: province == freezed ? _value.province : province as String,
      city: city == freezed ? _value.city : city as String,
      street: street == freezed ? _value.street : street as String,
      streetNumber:
          streetNumber == freezed ? _value.streetNumber : streetNumber as int,
      otherAddressData: otherAddressData == freezed
          ? _value.otherAddressData
          : otherAddressData as String,
    ));
  }
}

abstract class _$ProfileDtoCopyWith<$Res> implements $ProfileDtoCopyWith<$Res> {
  factory _$ProfileDtoCopyWith(
          _ProfileDto value, $Res Function(_ProfileDto) then) =
      __$ProfileDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String lastName,
      String phoneNumber,
      String gender,
      String country,
      String province,
      String city,
      String street,
      int streetNumber,
      String otherAddressData});
}

class __$ProfileDtoCopyWithImpl<$Res> extends _$ProfileDtoCopyWithImpl<$Res>
    implements _$ProfileDtoCopyWith<$Res> {
  __$ProfileDtoCopyWithImpl(
      _ProfileDto _value, $Res Function(_ProfileDto) _then)
      : super(_value, (v) => _then(v as _ProfileDto));

  @override
  _ProfileDto get _value => super._value as _ProfileDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object lastName = freezed,
    Object phoneNumber = freezed,
    Object gender = freezed,
    Object country = freezed,
    Object province = freezed,
    Object city = freezed,
    Object street = freezed,
    Object streetNumber = freezed,
    Object otherAddressData = freezed,
  }) {
    return _then(_ProfileDto(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      gender: gender == freezed ? _value.gender : gender as String,
      country: country == freezed ? _value.country : country as String,
      province: province == freezed ? _value.province : province as String,
      city: city == freezed ? _value.city : city as String,
      street: street == freezed ? _value.street : street as String,
      streetNumber:
          streetNumber == freezed ? _value.streetNumber : streetNumber as int,
      otherAddressData: otherAddressData == freezed
          ? _value.otherAddressData
          : otherAddressData as String,
    ));
  }
}

@JsonSerializable()
class _$_ProfileDto extends _ProfileDto {
  const _$_ProfileDto(
      {@JsonKey(ignore: true) this.id,
      @required this.name,
      @required this.lastName,
      @required this.phoneNumber,
      @required this.gender,
      @required this.country,
      @required this.province,
      @required this.city,
      @required this.street,
      @required this.streetNumber,
      @required this.otherAddressData})
      : assert(name != null),
        assert(lastName != null),
        assert(phoneNumber != null),
        assert(gender != null),
        assert(country != null),
        assert(province != null),
        assert(city != null),
        assert(street != null),
        assert(streetNumber != null),
        assert(otherAddressData != null),
        super._();

  factory _$_ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final String lastName;
  @override
  final String phoneNumber;
  @override
  final String gender;
  @override
  final String country;
  @override
  final String province;
  @override
  final String city;
  @override
  final String street;
  @override
  final int streetNumber;
  @override
  final String otherAddressData;

  @override
  String toString() {
    return 'ProfileDto(id: $id, name: $name, lastName: $lastName, phoneNumber: $phoneNumber, gender: $gender, country: $country, province: $province, city: $city, street: $street, streetNumber: $streetNumber, otherAddressData: $otherAddressData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.streetNumber, streetNumber) ||
                const DeepCollectionEquality()
                    .equals(other.streetNumber, streetNumber)) &&
            (identical(other.otherAddressData, otherAddressData) ||
                const DeepCollectionEquality()
                    .equals(other.otherAddressData, otherAddressData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(streetNumber) ^
      const DeepCollectionEquality().hash(otherAddressData);

  @override
  _$ProfileDtoCopyWith<_ProfileDto> get copyWith =>
      __$ProfileDtoCopyWithImpl<_ProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileDtoToJson(this);
  }
}

abstract class _ProfileDto extends ProfileDto {
  const _ProfileDto._() : super._();
  const factory _ProfileDto(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required String lastName,
      @required String phoneNumber,
      @required String gender,
      @required String country,
      @required String province,
      @required String city,
      @required String street,
      @required int streetNumber,
      @required String otherAddressData}) = _$_ProfileDto;

  factory _ProfileDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  String get lastName;
  @override
  String get phoneNumber;
  @override
  String get gender;
  @override
  String get country;
  @override
  String get province;
  @override
  String get city;
  @override
  String get street;
  @override
  int get streetNumber;
  @override
  String get otherAddressData;
  @override
  _$ProfileDtoCopyWith<_ProfileDto> get copyWith;
}
