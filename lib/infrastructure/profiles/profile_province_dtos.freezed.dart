// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'profile_province_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProfileProvinceDto _$ProfileProvinceDtoFromJson(Map<String, dynamic> json) {
  return _ProfileProvinceDto.fromJson(json);
}

class _$ProfileProvinceDtoTearOff {
  const _$ProfileProvinceDtoTearOff();

  _ProfileProvinceDto call({@required String province}) {
    return _ProfileProvinceDto(
      province: province,
    );
  }
}

// ignore: unused_element
const $ProfileProvinceDto = _$ProfileProvinceDtoTearOff();

mixin _$ProfileProvinceDto {
  String get province;

  Map<String, dynamic> toJson();
  $ProfileProvinceDtoCopyWith<ProfileProvinceDto> get copyWith;
}

abstract class $ProfileProvinceDtoCopyWith<$Res> {
  factory $ProfileProvinceDtoCopyWith(
          ProfileProvinceDto value, $Res Function(ProfileProvinceDto) then) =
      _$ProfileProvinceDtoCopyWithImpl<$Res>;
  $Res call({String province});
}

class _$ProfileProvinceDtoCopyWithImpl<$Res>
    implements $ProfileProvinceDtoCopyWith<$Res> {
  _$ProfileProvinceDtoCopyWithImpl(this._value, this._then);

  final ProfileProvinceDto _value;
  // ignore: unused_field
  final $Res Function(ProfileProvinceDto) _then;

  @override
  $Res call({
    Object province = freezed,
  }) {
    return _then(_value.copyWith(
      province: province == freezed ? _value.province : province as String,
    ));
  }
}

abstract class _$ProfileProvinceDtoCopyWith<$Res>
    implements $ProfileProvinceDtoCopyWith<$Res> {
  factory _$ProfileProvinceDtoCopyWith(
          _ProfileProvinceDto value, $Res Function(_ProfileProvinceDto) then) =
      __$ProfileProvinceDtoCopyWithImpl<$Res>;
  @override
  $Res call({String province});
}

class __$ProfileProvinceDtoCopyWithImpl<$Res>
    extends _$ProfileProvinceDtoCopyWithImpl<$Res>
    implements _$ProfileProvinceDtoCopyWith<$Res> {
  __$ProfileProvinceDtoCopyWithImpl(
      _ProfileProvinceDto _value, $Res Function(_ProfileProvinceDto) _then)
      : super(_value, (v) => _then(v as _ProfileProvinceDto));

  @override
  _ProfileProvinceDto get _value => super._value as _ProfileProvinceDto;

  @override
  $Res call({
    Object province = freezed,
  }) {
    return _then(_ProfileProvinceDto(
      province: province == freezed ? _value.province : province as String,
    ));
  }
}

@JsonSerializable()
class _$_ProfileProvinceDto extends _ProfileProvinceDto {
  const _$_ProfileProvinceDto({@required this.province})
      : assert(province != null),
        super._();

  factory _$_ProfileProvinceDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileProvinceDtoFromJson(json);

  @override
  final String province;

  @override
  String toString() {
    return 'ProfileProvinceDto(province: $province)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileProvinceDto &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(province);

  @override
  _$ProfileProvinceDtoCopyWith<_ProfileProvinceDto> get copyWith =>
      __$ProfileProvinceDtoCopyWithImpl<_ProfileProvinceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileProvinceDtoToJson(this);
  }
}

abstract class _ProfileProvinceDto extends ProfileProvinceDto {
  const _ProfileProvinceDto._() : super._();
  const factory _ProfileProvinceDto({@required String province}) =
      _$_ProfileProvinceDto;

  factory _ProfileProvinceDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileProvinceDto.fromJson;

  @override
  String get province;
  @override
  _$ProfileProvinceDtoCopyWith<_ProfileProvinceDto> get copyWith;
}
