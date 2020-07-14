// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'profile_city_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProfileCityDto _$ProfileCityDtoFromJson(Map<String, dynamic> json) {
  return _ProfileCityDto.fromJson(json);
}

class _$ProfileCityDtoTearOff {
  const _$ProfileCityDtoTearOff();

  _ProfileCityDto call({@required String city}) {
    return _ProfileCityDto(
      city: city,
    );
  }
}

// ignore: unused_element
const $ProfileCityDto = _$ProfileCityDtoTearOff();

mixin _$ProfileCityDto {
  String get city;

  Map<String, dynamic> toJson();
  $ProfileCityDtoCopyWith<ProfileCityDto> get copyWith;
}

abstract class $ProfileCityDtoCopyWith<$Res> {
  factory $ProfileCityDtoCopyWith(
          ProfileCityDto value, $Res Function(ProfileCityDto) then) =
      _$ProfileCityDtoCopyWithImpl<$Res>;
  $Res call({String city});
}

class _$ProfileCityDtoCopyWithImpl<$Res>
    implements $ProfileCityDtoCopyWith<$Res> {
  _$ProfileCityDtoCopyWithImpl(this._value, this._then);

  final ProfileCityDto _value;
  // ignore: unused_field
  final $Res Function(ProfileCityDto) _then;

  @override
  $Res call({
    Object city = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed ? _value.city : city as String,
    ));
  }
}

abstract class _$ProfileCityDtoCopyWith<$Res>
    implements $ProfileCityDtoCopyWith<$Res> {
  factory _$ProfileCityDtoCopyWith(
          _ProfileCityDto value, $Res Function(_ProfileCityDto) then) =
      __$ProfileCityDtoCopyWithImpl<$Res>;
  @override
  $Res call({String city});
}

class __$ProfileCityDtoCopyWithImpl<$Res>
    extends _$ProfileCityDtoCopyWithImpl<$Res>
    implements _$ProfileCityDtoCopyWith<$Res> {
  __$ProfileCityDtoCopyWithImpl(
      _ProfileCityDto _value, $Res Function(_ProfileCityDto) _then)
      : super(_value, (v) => _then(v as _ProfileCityDto));

  @override
  _ProfileCityDto get _value => super._value as _ProfileCityDto;

  @override
  $Res call({
    Object city = freezed,
  }) {
    return _then(_ProfileCityDto(
      city: city == freezed ? _value.city : city as String,
    ));
  }
}

@JsonSerializable()
class _$_ProfileCityDto extends _ProfileCityDto {
  const _$_ProfileCityDto({@required this.city})
      : assert(city != null),
        super._();

  factory _$_ProfileCityDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileCityDtoFromJson(json);

  @override
  final String city;

  @override
  String toString() {
    return 'ProfileCityDto(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileCityDto &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @override
  _$ProfileCityDtoCopyWith<_ProfileCityDto> get copyWith =>
      __$ProfileCityDtoCopyWithImpl<_ProfileCityDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileCityDtoToJson(this);
  }
}

abstract class _ProfileCityDto extends ProfileCityDto {
  const _ProfileCityDto._() : super._();
  const factory _ProfileCityDto({@required String city}) = _$_ProfileCityDto;

  factory _ProfileCityDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileCityDto.fromJson;

  @override
  String get city;
  @override
  _$ProfileCityDtoCopyWith<_ProfileCityDto> get copyWith;
}
