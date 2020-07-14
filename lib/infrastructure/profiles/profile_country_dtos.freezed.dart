// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'profile_country_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProfileCountryDto _$ProfileCountryDtoFromJson(Map<String, dynamic> json) {
  return _ProfileCountryDto.fromJson(json);
}

class _$ProfileCountryDtoTearOff {
  const _$ProfileCountryDtoTearOff();

  _ProfileCountryDto call({@required String country}) {
    return _ProfileCountryDto(
      country: country,
    );
  }
}

// ignore: unused_element
const $ProfileCountryDto = _$ProfileCountryDtoTearOff();

mixin _$ProfileCountryDto {
  String get country;

  Map<String, dynamic> toJson();
  $ProfileCountryDtoCopyWith<ProfileCountryDto> get copyWith;
}

abstract class $ProfileCountryDtoCopyWith<$Res> {
  factory $ProfileCountryDtoCopyWith(
          ProfileCountryDto value, $Res Function(ProfileCountryDto) then) =
      _$ProfileCountryDtoCopyWithImpl<$Res>;
  $Res call({String country});
}

class _$ProfileCountryDtoCopyWithImpl<$Res>
    implements $ProfileCountryDtoCopyWith<$Res> {
  _$ProfileCountryDtoCopyWithImpl(this._value, this._then);

  final ProfileCountryDto _value;
  // ignore: unused_field
  final $Res Function(ProfileCountryDto) _then;

  @override
  $Res call({
    Object country = freezed,
  }) {
    return _then(_value.copyWith(
      country: country == freezed ? _value.country : country as String,
    ));
  }
}

abstract class _$ProfileCountryDtoCopyWith<$Res>
    implements $ProfileCountryDtoCopyWith<$Res> {
  factory _$ProfileCountryDtoCopyWith(
          _ProfileCountryDto value, $Res Function(_ProfileCountryDto) then) =
      __$ProfileCountryDtoCopyWithImpl<$Res>;
  @override
  $Res call({String country});
}

class __$ProfileCountryDtoCopyWithImpl<$Res>
    extends _$ProfileCountryDtoCopyWithImpl<$Res>
    implements _$ProfileCountryDtoCopyWith<$Res> {
  __$ProfileCountryDtoCopyWithImpl(
      _ProfileCountryDto _value, $Res Function(_ProfileCountryDto) _then)
      : super(_value, (v) => _then(v as _ProfileCountryDto));

  @override
  _ProfileCountryDto get _value => super._value as _ProfileCountryDto;

  @override
  $Res call({
    Object country = freezed,
  }) {
    return _then(_ProfileCountryDto(
      country: country == freezed ? _value.country : country as String,
    ));
  }
}

@JsonSerializable()
class _$_ProfileCountryDto extends _ProfileCountryDto {
  const _$_ProfileCountryDto({@required this.country})
      : assert(country != null),
        super._();

  factory _$_ProfileCountryDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileCountryDtoFromJson(json);

  @override
  final String country;

  @override
  String toString() {
    return 'ProfileCountryDto(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileCountryDto &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(country);

  @override
  _$ProfileCountryDtoCopyWith<_ProfileCountryDto> get copyWith =>
      __$ProfileCountryDtoCopyWithImpl<_ProfileCountryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileCountryDtoToJson(this);
  }
}

abstract class _ProfileCountryDto extends ProfileCountryDto {
  const _ProfileCountryDto._() : super._();
  const factory _ProfileCountryDto({@required String country}) =
      _$_ProfileCountryDto;

  factory _ProfileCountryDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileCountryDto.fromJson;

  @override
  String get country;
  @override
  _$ProfileCountryDtoCopyWith<_ProfileCountryDto> get copyWith;
}
