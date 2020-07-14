// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'profile_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProfileFormEventTearOff {
  const _$ProfileFormEventTearOff();

  _InitializeCountries initializeCountries() {
    return const _InitializeCountries();
  }

  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

  _LastnameChanged lastNameChanged(String lastNameStr) {
    return _LastnameChanged(
      lastNameStr,
    );
  }

  _PhoneNumberChanged phoneNumberChanged(String phoneNumberStr) {
    return _PhoneNumberChanged(
      phoneNumberStr,
    );
  }

  _GenderSelected genderSelected(String genderStr) {
    return _GenderSelected(
      genderStr,
    );
  }

  _CountrySelected countrySelected(String countryId) {
    return _CountrySelected(
      countryId,
    );
  }

  _ProvinceSelected provinceSelected(String countryId, String provinceId) {
    return _ProvinceSelected(
      countryId,
      provinceId,
    );
  }

  _CitySelected citySelected(String cityStr) {
    return _CitySelected(
      cityStr,
    );
  }

  _StreetChanged streetChanged(String streetStr) {
    return _StreetChanged(
      streetStr,
    );
  }

  _StreetNumberChanged streetNumberChanged(int streetNumber) {
    return _StreetNumberChanged(
      streetNumber,
    );
  }

  _OtherAddressData otherAddressDataChanged(String otherAddressDataStr) {
    return _OtherAddressData(
      otherAddressDataStr,
    );
  }

  _Deleted deleted() {
    return const _Deleted();
  }

  _Saved saved() {
    return const _Saved();
  }

  _CountriesUpdateReceived countriesListUpdated(
      Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries) {
    return _CountriesUpdateReceived(
      failureOrCountries,
    );
  }

  _ProvincesUpdateReceived provincesListUpdated(
      Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces) {
    return _ProvincesUpdateReceived(
      failureOrProvinces,
    );
  }

  _CitiesUpdateReceived citiesListUpdated(
      Either<ProfileFailure, KtList<ProfileCity>> failureOrCities) {
    return _CitiesUpdateReceived(
      failureOrCities,
    );
  }
}

// ignore: unused_element
const $ProfileFormEvent = _$ProfileFormEventTearOff();

mixin _$ProfileFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeCountries(),
    @required Result nameChanged(String nameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result genderSelected(String genderStr),
    @required Result countrySelected(String countryId),
    @required Result provinceSelected(String countryId, String provinceId),
    @required Result citySelected(String cityStr),
    @required Result streetChanged(String streetStr),
    @required Result streetNumberChanged(int streetNumber),
    @required Result otherAddressDataChanged(String otherAddressDataStr),
    @required Result deleted(),
    @required Result saved(),
    @required
        Result countriesListUpdated(
            Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    @required
        Result provincesListUpdated(
            Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    @required
        Result citiesListUpdated(
            Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeCountries(),
    Result nameChanged(String nameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result genderSelected(String genderStr),
    Result countrySelected(String countryId),
    Result provinceSelected(String countryId, String provinceId),
    Result citySelected(String cityStr),
    Result streetChanged(String streetStr),
    Result streetNumberChanged(int streetNumber),
    Result otherAddressDataChanged(String otherAddressDataStr),
    Result deleted(),
    Result saved(),
    Result countriesListUpdated(
        Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    Result provincesListUpdated(
        Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    Result citiesListUpdated(
        Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeCountries(_InitializeCountries value),
    @required Result nameChanged(_NameChanged value),
    @required Result lastNameChanged(_LastnameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result genderSelected(_GenderSelected value),
    @required Result countrySelected(_CountrySelected value),
    @required Result provinceSelected(_ProvinceSelected value),
    @required Result citySelected(_CitySelected value),
    @required Result streetChanged(_StreetChanged value),
    @required Result streetNumberChanged(_StreetNumberChanged value),
    @required Result otherAddressDataChanged(_OtherAddressData value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
    @required Result countriesListUpdated(_CountriesUpdateReceived value),
    @required Result provincesListUpdated(_ProvincesUpdateReceived value),
    @required Result citiesListUpdated(_CitiesUpdateReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeCountries(_InitializeCountries value),
    Result nameChanged(_NameChanged value),
    Result lastNameChanged(_LastnameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result genderSelected(_GenderSelected value),
    Result countrySelected(_CountrySelected value),
    Result provinceSelected(_ProvinceSelected value),
    Result citySelected(_CitySelected value),
    Result streetChanged(_StreetChanged value),
    Result streetNumberChanged(_StreetNumberChanged value),
    Result otherAddressDataChanged(_OtherAddressData value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    Result countriesListUpdated(_CountriesUpdateReceived value),
    Result provincesListUpdated(_ProvincesUpdateReceived value),
    Result citiesListUpdated(_CitiesUpdateReceived value),
    @required Result orElse(),
  });
}

abstract class $ProfileFormEventCopyWith<$Res> {
  factory $ProfileFormEventCopyWith(
          ProfileFormEvent value, $Res Function(ProfileFormEvent) then) =
      _$ProfileFormEventCopyWithImpl<$Res>;
}

class _$ProfileFormEventCopyWithImpl<$Res>
    implements $ProfileFormEventCopyWith<$Res> {
  _$ProfileFormEventCopyWithImpl(this._value, this._then);

  final ProfileFormEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileFormEvent) _then;
}

abstract class _$InitializeCountriesCopyWith<$Res> {
  factory _$InitializeCountriesCopyWith(_InitializeCountries value,
          $Res Function(_InitializeCountries) then) =
      __$InitializeCountriesCopyWithImpl<$Res>;
}

class __$InitializeCountriesCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$InitializeCountriesCopyWith<$Res> {
  __$InitializeCountriesCopyWithImpl(
      _InitializeCountries _value, $Res Function(_InitializeCountries) _then)
      : super(_value, (v) => _then(v as _InitializeCountries));

  @override
  _InitializeCountries get _value => super._value as _InitializeCountries;
}

class _$_InitializeCountries
    with DiagnosticableTreeMixin
    implements _InitializeCountries {
  const _$_InitializeCountries();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.initializeCountries()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ProfileFormEvent.initializeCountries'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitializeCountries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeCountries(),
    @required Result nameChanged(String nameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result genderSelected(String genderStr),
    @required Result countrySelected(String countryId),
    @required Result provinceSelected(String countryId, String provinceId),
    @required Result citySelected(String cityStr),
    @required Result streetChanged(String streetStr),
    @required Result streetNumberChanged(int streetNumber),
    @required Result otherAddressDataChanged(String otherAddressDataStr),
    @required Result deleted(),
    @required Result saved(),
    @required
        Result countriesListUpdated(
            Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    @required
        Result provincesListUpdated(
            Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    @required
        Result citiesListUpdated(
            Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return initializeCountries();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeCountries(),
    Result nameChanged(String nameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result genderSelected(String genderStr),
    Result countrySelected(String countryId),
    Result provinceSelected(String countryId, String provinceId),
    Result citySelected(String cityStr),
    Result streetChanged(String streetStr),
    Result streetNumberChanged(int streetNumber),
    Result otherAddressDataChanged(String otherAddressDataStr),
    Result deleted(),
    Result saved(),
    Result countriesListUpdated(
        Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    Result provincesListUpdated(
        Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    Result citiesListUpdated(
        Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializeCountries != null) {
      return initializeCountries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeCountries(_InitializeCountries value),
    @required Result nameChanged(_NameChanged value),
    @required Result lastNameChanged(_LastnameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result genderSelected(_GenderSelected value),
    @required Result countrySelected(_CountrySelected value),
    @required Result provinceSelected(_ProvinceSelected value),
    @required Result citySelected(_CitySelected value),
    @required Result streetChanged(_StreetChanged value),
    @required Result streetNumberChanged(_StreetNumberChanged value),
    @required Result otherAddressDataChanged(_OtherAddressData value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
    @required Result countriesListUpdated(_CountriesUpdateReceived value),
    @required Result provincesListUpdated(_ProvincesUpdateReceived value),
    @required Result citiesListUpdated(_CitiesUpdateReceived value),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return initializeCountries(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeCountries(_InitializeCountries value),
    Result nameChanged(_NameChanged value),
    Result lastNameChanged(_LastnameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result genderSelected(_GenderSelected value),
    Result countrySelected(_CountrySelected value),
    Result provinceSelected(_ProvinceSelected value),
    Result citySelected(_CitySelected value),
    Result streetChanged(_StreetChanged value),
    Result streetNumberChanged(_StreetNumberChanged value),
    Result otherAddressDataChanged(_OtherAddressData value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    Result countriesListUpdated(_CountriesUpdateReceived value),
    Result provincesListUpdated(_ProvincesUpdateReceived value),
    Result citiesListUpdated(_CitiesUpdateReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializeCountries != null) {
      return initializeCountries(this);
    }
    return orElse();
  }
}

abstract class _InitializeCountries implements ProfileFormEvent {
  const factory _InitializeCountries() = _$_InitializeCountries;
}

abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

class __$NameChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object nameStr = freezed,
  }) {
    return _then(_NameChanged(
      nameStr == freezed ? _value.nameStr : nameStr as String,
    ));
  }
}

class _$_NameChanged with DiagnosticableTreeMixin implements _NameChanged {
  const _$_NameChanged(this.nameStr) : assert(nameStr != null);

  @override
  final String nameStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormEvent.nameChanged'))
      ..add(DiagnosticsProperty('nameStr', nameStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeCountries(),
    @required Result nameChanged(String nameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result genderSelected(String genderStr),
    @required Result countrySelected(String countryId),
    @required Result provinceSelected(String countryId, String provinceId),
    @required Result citySelected(String cityStr),
    @required Result streetChanged(String streetStr),
    @required Result streetNumberChanged(int streetNumber),
    @required Result otherAddressDataChanged(String otherAddressDataStr),
    @required Result deleted(),
    @required Result saved(),
    @required
        Result countriesListUpdated(
            Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    @required
        Result provincesListUpdated(
            Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    @required
        Result citiesListUpdated(
            Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeCountries(),
    Result nameChanged(String nameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result genderSelected(String genderStr),
    Result countrySelected(String countryId),
    Result provinceSelected(String countryId, String provinceId),
    Result citySelected(String cityStr),
    Result streetChanged(String streetStr),
    Result streetNumberChanged(int streetNumber),
    Result otherAddressDataChanged(String otherAddressDataStr),
    Result deleted(),
    Result saved(),
    Result countriesListUpdated(
        Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    Result provincesListUpdated(
        Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    Result citiesListUpdated(
        Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeCountries(_InitializeCountries value),
    @required Result nameChanged(_NameChanged value),
    @required Result lastNameChanged(_LastnameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result genderSelected(_GenderSelected value),
    @required Result countrySelected(_CountrySelected value),
    @required Result provinceSelected(_ProvinceSelected value),
    @required Result citySelected(_CitySelected value),
    @required Result streetChanged(_StreetChanged value),
    @required Result streetNumberChanged(_StreetNumberChanged value),
    @required Result otherAddressDataChanged(_OtherAddressData value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
    @required Result countriesListUpdated(_CountriesUpdateReceived value),
    @required Result provincesListUpdated(_ProvincesUpdateReceived value),
    @required Result citiesListUpdated(_CitiesUpdateReceived value),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeCountries(_InitializeCountries value),
    Result nameChanged(_NameChanged value),
    Result lastNameChanged(_LastnameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result genderSelected(_GenderSelected value),
    Result countrySelected(_CountrySelected value),
    Result provinceSelected(_ProvinceSelected value),
    Result citySelected(_CitySelected value),
    Result streetChanged(_StreetChanged value),
    Result streetNumberChanged(_StreetNumberChanged value),
    Result otherAddressDataChanged(_OtherAddressData value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    Result countriesListUpdated(_CountriesUpdateReceived value),
    Result provincesListUpdated(_ProvincesUpdateReceived value),
    Result citiesListUpdated(_CitiesUpdateReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ProfileFormEvent {
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr;
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

abstract class _$LastnameChangedCopyWith<$Res> {
  factory _$LastnameChangedCopyWith(
          _LastnameChanged value, $Res Function(_LastnameChanged) then) =
      __$LastnameChangedCopyWithImpl<$Res>;
  $Res call({String lastNameStr});
}

class __$LastnameChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$LastnameChangedCopyWith<$Res> {
  __$LastnameChangedCopyWithImpl(
      _LastnameChanged _value, $Res Function(_LastnameChanged) _then)
      : super(_value, (v) => _then(v as _LastnameChanged));

  @override
  _LastnameChanged get _value => super._value as _LastnameChanged;

  @override
  $Res call({
    Object lastNameStr = freezed,
  }) {
    return _then(_LastnameChanged(
      lastNameStr == freezed ? _value.lastNameStr : lastNameStr as String,
    ));
  }
}

class _$_LastnameChanged
    with DiagnosticableTreeMixin
    implements _LastnameChanged {
  const _$_LastnameChanged(this.lastNameStr) : assert(lastNameStr != null);

  @override
  final String lastNameStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.lastNameChanged(lastNameStr: $lastNameStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormEvent.lastNameChanged'))
      ..add(DiagnosticsProperty('lastNameStr', lastNameStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LastnameChanged &&
            (identical(other.lastNameStr, lastNameStr) ||
                const DeepCollectionEquality()
                    .equals(other.lastNameStr, lastNameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lastNameStr);

  @override
  _$LastnameChangedCopyWith<_LastnameChanged> get copyWith =>
      __$LastnameChangedCopyWithImpl<_LastnameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeCountries(),
    @required Result nameChanged(String nameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result genderSelected(String genderStr),
    @required Result countrySelected(String countryId),
    @required Result provinceSelected(String countryId, String provinceId),
    @required Result citySelected(String cityStr),
    @required Result streetChanged(String streetStr),
    @required Result streetNumberChanged(int streetNumber),
    @required Result otherAddressDataChanged(String otherAddressDataStr),
    @required Result deleted(),
    @required Result saved(),
    @required
        Result countriesListUpdated(
            Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    @required
        Result provincesListUpdated(
            Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    @required
        Result citiesListUpdated(
            Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return lastNameChanged(lastNameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeCountries(),
    Result nameChanged(String nameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result genderSelected(String genderStr),
    Result countrySelected(String countryId),
    Result provinceSelected(String countryId, String provinceId),
    Result citySelected(String cityStr),
    Result streetChanged(String streetStr),
    Result streetNumberChanged(int streetNumber),
    Result otherAddressDataChanged(String otherAddressDataStr),
    Result deleted(),
    Result saved(),
    Result countriesListUpdated(
        Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    Result provincesListUpdated(
        Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    Result citiesListUpdated(
        Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(lastNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeCountries(_InitializeCountries value),
    @required Result nameChanged(_NameChanged value),
    @required Result lastNameChanged(_LastnameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result genderSelected(_GenderSelected value),
    @required Result countrySelected(_CountrySelected value),
    @required Result provinceSelected(_ProvinceSelected value),
    @required Result citySelected(_CitySelected value),
    @required Result streetChanged(_StreetChanged value),
    @required Result streetNumberChanged(_StreetNumberChanged value),
    @required Result otherAddressDataChanged(_OtherAddressData value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
    @required Result countriesListUpdated(_CountriesUpdateReceived value),
    @required Result provincesListUpdated(_ProvincesUpdateReceived value),
    @required Result citiesListUpdated(_CitiesUpdateReceived value),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeCountries(_InitializeCountries value),
    Result nameChanged(_NameChanged value),
    Result lastNameChanged(_LastnameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result genderSelected(_GenderSelected value),
    Result countrySelected(_CountrySelected value),
    Result provinceSelected(_ProvinceSelected value),
    Result citySelected(_CitySelected value),
    Result streetChanged(_StreetChanged value),
    Result streetNumberChanged(_StreetNumberChanged value),
    Result otherAddressDataChanged(_OtherAddressData value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    Result countriesListUpdated(_CountriesUpdateReceived value),
    Result provincesListUpdated(_ProvincesUpdateReceived value),
    Result citiesListUpdated(_CitiesUpdateReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastnameChanged implements ProfileFormEvent {
  const factory _LastnameChanged(String lastNameStr) = _$_LastnameChanged;

  String get lastNameStr;
  _$LastnameChangedCopyWith<_LastnameChanged> get copyWith;
}

abstract class _$PhoneNumberChangedCopyWith<$Res> {
  factory _$PhoneNumberChangedCopyWith(
          _PhoneNumberChanged value, $Res Function(_PhoneNumberChanged) then) =
      __$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumberStr});
}

class __$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$PhoneNumberChangedCopyWith<$Res> {
  __$PhoneNumberChangedCopyWithImpl(
      _PhoneNumberChanged _value, $Res Function(_PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as _PhoneNumberChanged));

  @override
  _PhoneNumberChanged get _value => super._value as _PhoneNumberChanged;

  @override
  $Res call({
    Object phoneNumberStr = freezed,
  }) {
    return _then(_PhoneNumberChanged(
      phoneNumberStr == freezed
          ? _value.phoneNumberStr
          : phoneNumberStr as String,
    ));
  }
}

class _$_PhoneNumberChanged
    with DiagnosticableTreeMixin
    implements _PhoneNumberChanged {
  const _$_PhoneNumberChanged(this.phoneNumberStr)
      : assert(phoneNumberStr != null);

  @override
  final String phoneNumberStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.phoneNumberChanged(phoneNumberStr: $phoneNumberStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormEvent.phoneNumberChanged'))
      ..add(DiagnosticsProperty('phoneNumberStr', phoneNumberStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneNumberChanged &&
            (identical(other.phoneNumberStr, phoneNumberStr) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumberStr, phoneNumberStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumberStr);

  @override
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      __$PhoneNumberChangedCopyWithImpl<_PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeCountries(),
    @required Result nameChanged(String nameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result genderSelected(String genderStr),
    @required Result countrySelected(String countryId),
    @required Result provinceSelected(String countryId, String provinceId),
    @required Result citySelected(String cityStr),
    @required Result streetChanged(String streetStr),
    @required Result streetNumberChanged(int streetNumber),
    @required Result otherAddressDataChanged(String otherAddressDataStr),
    @required Result deleted(),
    @required Result saved(),
    @required
        Result countriesListUpdated(
            Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    @required
        Result provincesListUpdated(
            Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    @required
        Result citiesListUpdated(
            Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return phoneNumberChanged(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeCountries(),
    Result nameChanged(String nameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result genderSelected(String genderStr),
    Result countrySelected(String countryId),
    Result provinceSelected(String countryId, String provinceId),
    Result citySelected(String cityStr),
    Result streetChanged(String streetStr),
    Result streetNumberChanged(int streetNumber),
    Result otherAddressDataChanged(String otherAddressDataStr),
    Result deleted(),
    Result saved(),
    Result countriesListUpdated(
        Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    Result provincesListUpdated(
        Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    Result citiesListUpdated(
        Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumberStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeCountries(_InitializeCountries value),
    @required Result nameChanged(_NameChanged value),
    @required Result lastNameChanged(_LastnameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result genderSelected(_GenderSelected value),
    @required Result countrySelected(_CountrySelected value),
    @required Result provinceSelected(_ProvinceSelected value),
    @required Result citySelected(_CitySelected value),
    @required Result streetChanged(_StreetChanged value),
    @required Result streetNumberChanged(_StreetNumberChanged value),
    @required Result otherAddressDataChanged(_OtherAddressData value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
    @required Result countriesListUpdated(_CountriesUpdateReceived value),
    @required Result provincesListUpdated(_ProvincesUpdateReceived value),
    @required Result citiesListUpdated(_CitiesUpdateReceived value),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeCountries(_InitializeCountries value),
    Result nameChanged(_NameChanged value),
    Result lastNameChanged(_LastnameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result genderSelected(_GenderSelected value),
    Result countrySelected(_CountrySelected value),
    Result provinceSelected(_ProvinceSelected value),
    Result citySelected(_CitySelected value),
    Result streetChanged(_StreetChanged value),
    Result streetNumberChanged(_StreetNumberChanged value),
    Result otherAddressDataChanged(_OtherAddressData value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    Result countriesListUpdated(_CountriesUpdateReceived value),
    Result provincesListUpdated(_ProvincesUpdateReceived value),
    Result citiesListUpdated(_CitiesUpdateReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements ProfileFormEvent {
  const factory _PhoneNumberChanged(String phoneNumberStr) =
      _$_PhoneNumberChanged;

  String get phoneNumberStr;
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith;
}

abstract class _$GenderSelectedCopyWith<$Res> {
  factory _$GenderSelectedCopyWith(
          _GenderSelected value, $Res Function(_GenderSelected) then) =
      __$GenderSelectedCopyWithImpl<$Res>;
  $Res call({String genderStr});
}

class __$GenderSelectedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$GenderSelectedCopyWith<$Res> {
  __$GenderSelectedCopyWithImpl(
      _GenderSelected _value, $Res Function(_GenderSelected) _then)
      : super(_value, (v) => _then(v as _GenderSelected));

  @override
  _GenderSelected get _value => super._value as _GenderSelected;

  @override
  $Res call({
    Object genderStr = freezed,
  }) {
    return _then(_GenderSelected(
      genderStr == freezed ? _value.genderStr : genderStr as String,
    ));
  }
}

class _$_GenderSelected
    with DiagnosticableTreeMixin
    implements _GenderSelected {
  const _$_GenderSelected(this.genderStr) : assert(genderStr != null);

  @override
  final String genderStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.genderSelected(genderStr: $genderStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormEvent.genderSelected'))
      ..add(DiagnosticsProperty('genderStr', genderStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenderSelected &&
            (identical(other.genderStr, genderStr) ||
                const DeepCollectionEquality()
                    .equals(other.genderStr, genderStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(genderStr);

  @override
  _$GenderSelectedCopyWith<_GenderSelected> get copyWith =>
      __$GenderSelectedCopyWithImpl<_GenderSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeCountries(),
    @required Result nameChanged(String nameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result genderSelected(String genderStr),
    @required Result countrySelected(String countryId),
    @required Result provinceSelected(String countryId, String provinceId),
    @required Result citySelected(String cityStr),
    @required Result streetChanged(String streetStr),
    @required Result streetNumberChanged(int streetNumber),
    @required Result otherAddressDataChanged(String otherAddressDataStr),
    @required Result deleted(),
    @required Result saved(),
    @required
        Result countriesListUpdated(
            Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    @required
        Result provincesListUpdated(
            Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    @required
        Result citiesListUpdated(
            Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return genderSelected(genderStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeCountries(),
    Result nameChanged(String nameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result genderSelected(String genderStr),
    Result countrySelected(String countryId),
    Result provinceSelected(String countryId, String provinceId),
    Result citySelected(String cityStr),
    Result streetChanged(String streetStr),
    Result streetNumberChanged(int streetNumber),
    Result otherAddressDataChanged(String otherAddressDataStr),
    Result deleted(),
    Result saved(),
    Result countriesListUpdated(
        Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    Result provincesListUpdated(
        Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    Result citiesListUpdated(
        Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genderSelected != null) {
      return genderSelected(genderStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeCountries(_InitializeCountries value),
    @required Result nameChanged(_NameChanged value),
    @required Result lastNameChanged(_LastnameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result genderSelected(_GenderSelected value),
    @required Result countrySelected(_CountrySelected value),
    @required Result provinceSelected(_ProvinceSelected value),
    @required Result citySelected(_CitySelected value),
    @required Result streetChanged(_StreetChanged value),
    @required Result streetNumberChanged(_StreetNumberChanged value),
    @required Result otherAddressDataChanged(_OtherAddressData value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
    @required Result countriesListUpdated(_CountriesUpdateReceived value),
    @required Result provincesListUpdated(_ProvincesUpdateReceived value),
    @required Result citiesListUpdated(_CitiesUpdateReceived value),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return genderSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeCountries(_InitializeCountries value),
    Result nameChanged(_NameChanged value),
    Result lastNameChanged(_LastnameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result genderSelected(_GenderSelected value),
    Result countrySelected(_CountrySelected value),
    Result provinceSelected(_ProvinceSelected value),
    Result citySelected(_CitySelected value),
    Result streetChanged(_StreetChanged value),
    Result streetNumberChanged(_StreetNumberChanged value),
    Result otherAddressDataChanged(_OtherAddressData value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    Result countriesListUpdated(_CountriesUpdateReceived value),
    Result provincesListUpdated(_ProvincesUpdateReceived value),
    Result citiesListUpdated(_CitiesUpdateReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genderSelected != null) {
      return genderSelected(this);
    }
    return orElse();
  }
}

abstract class _GenderSelected implements ProfileFormEvent {
  const factory _GenderSelected(String genderStr) = _$_GenderSelected;

  String get genderStr;
  _$GenderSelectedCopyWith<_GenderSelected> get copyWith;
}

abstract class _$CountrySelectedCopyWith<$Res> {
  factory _$CountrySelectedCopyWith(
          _CountrySelected value, $Res Function(_CountrySelected) then) =
      __$CountrySelectedCopyWithImpl<$Res>;
  $Res call({String countryId});
}

class __$CountrySelectedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$CountrySelectedCopyWith<$Res> {
  __$CountrySelectedCopyWithImpl(
      _CountrySelected _value, $Res Function(_CountrySelected) _then)
      : super(_value, (v) => _then(v as _CountrySelected));

  @override
  _CountrySelected get _value => super._value as _CountrySelected;

  @override
  $Res call({
    Object countryId = freezed,
  }) {
    return _then(_CountrySelected(
      countryId == freezed ? _value.countryId : countryId as String,
    ));
  }
}

class _$_CountrySelected
    with DiagnosticableTreeMixin
    implements _CountrySelected {
  const _$_CountrySelected(this.countryId) : assert(countryId != null);

  @override
  final String countryId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.countrySelected(countryId: $countryId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormEvent.countrySelected'))
      ..add(DiagnosticsProperty('countryId', countryId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountrySelected &&
            (identical(other.countryId, countryId) ||
                const DeepCollectionEquality()
                    .equals(other.countryId, countryId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(countryId);

  @override
  _$CountrySelectedCopyWith<_CountrySelected> get copyWith =>
      __$CountrySelectedCopyWithImpl<_CountrySelected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeCountries(),
    @required Result nameChanged(String nameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result genderSelected(String genderStr),
    @required Result countrySelected(String countryId),
    @required Result provinceSelected(String countryId, String provinceId),
    @required Result citySelected(String cityStr),
    @required Result streetChanged(String streetStr),
    @required Result streetNumberChanged(int streetNumber),
    @required Result otherAddressDataChanged(String otherAddressDataStr),
    @required Result deleted(),
    @required Result saved(),
    @required
        Result countriesListUpdated(
            Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    @required
        Result provincesListUpdated(
            Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    @required
        Result citiesListUpdated(
            Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return countrySelected(countryId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeCountries(),
    Result nameChanged(String nameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result genderSelected(String genderStr),
    Result countrySelected(String countryId),
    Result provinceSelected(String countryId, String provinceId),
    Result citySelected(String cityStr),
    Result streetChanged(String streetStr),
    Result streetNumberChanged(int streetNumber),
    Result otherAddressDataChanged(String otherAddressDataStr),
    Result deleted(),
    Result saved(),
    Result countriesListUpdated(
        Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    Result provincesListUpdated(
        Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    Result citiesListUpdated(
        Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (countrySelected != null) {
      return countrySelected(countryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeCountries(_InitializeCountries value),
    @required Result nameChanged(_NameChanged value),
    @required Result lastNameChanged(_LastnameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result genderSelected(_GenderSelected value),
    @required Result countrySelected(_CountrySelected value),
    @required Result provinceSelected(_ProvinceSelected value),
    @required Result citySelected(_CitySelected value),
    @required Result streetChanged(_StreetChanged value),
    @required Result streetNumberChanged(_StreetNumberChanged value),
    @required Result otherAddressDataChanged(_OtherAddressData value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
    @required Result countriesListUpdated(_CountriesUpdateReceived value),
    @required Result provincesListUpdated(_ProvincesUpdateReceived value),
    @required Result citiesListUpdated(_CitiesUpdateReceived value),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return countrySelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeCountries(_InitializeCountries value),
    Result nameChanged(_NameChanged value),
    Result lastNameChanged(_LastnameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result genderSelected(_GenderSelected value),
    Result countrySelected(_CountrySelected value),
    Result provinceSelected(_ProvinceSelected value),
    Result citySelected(_CitySelected value),
    Result streetChanged(_StreetChanged value),
    Result streetNumberChanged(_StreetNumberChanged value),
    Result otherAddressDataChanged(_OtherAddressData value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    Result countriesListUpdated(_CountriesUpdateReceived value),
    Result provincesListUpdated(_ProvincesUpdateReceived value),
    Result citiesListUpdated(_CitiesUpdateReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (countrySelected != null) {
      return countrySelected(this);
    }
    return orElse();
  }
}

abstract class _CountrySelected implements ProfileFormEvent {
  const factory _CountrySelected(String countryId) = _$_CountrySelected;

  String get countryId;
  _$CountrySelectedCopyWith<_CountrySelected> get copyWith;
}

abstract class _$ProvinceSelectedCopyWith<$Res> {
  factory _$ProvinceSelectedCopyWith(
          _ProvinceSelected value, $Res Function(_ProvinceSelected) then) =
      __$ProvinceSelectedCopyWithImpl<$Res>;
  $Res call({String countryId, String provinceId});
}

class __$ProvinceSelectedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$ProvinceSelectedCopyWith<$Res> {
  __$ProvinceSelectedCopyWithImpl(
      _ProvinceSelected _value, $Res Function(_ProvinceSelected) _then)
      : super(_value, (v) => _then(v as _ProvinceSelected));

  @override
  _ProvinceSelected get _value => super._value as _ProvinceSelected;

  @override
  $Res call({
    Object countryId = freezed,
    Object provinceId = freezed,
  }) {
    return _then(_ProvinceSelected(
      countryId == freezed ? _value.countryId : countryId as String,
      provinceId == freezed ? _value.provinceId : provinceId as String,
    ));
  }
}

class _$_ProvinceSelected
    with DiagnosticableTreeMixin
    implements _ProvinceSelected {
  const _$_ProvinceSelected(this.countryId, this.provinceId)
      : assert(countryId != null),
        assert(provinceId != null);

  @override
  final String countryId;
  @override
  final String provinceId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.provinceSelected(countryId: $countryId, provinceId: $provinceId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormEvent.provinceSelected'))
      ..add(DiagnosticsProperty('countryId', countryId))
      ..add(DiagnosticsProperty('provinceId', provinceId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProvinceSelected &&
            (identical(other.countryId, countryId) ||
                const DeepCollectionEquality()
                    .equals(other.countryId, countryId)) &&
            (identical(other.provinceId, provinceId) ||
                const DeepCollectionEquality()
                    .equals(other.provinceId, provinceId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(countryId) ^
      const DeepCollectionEquality().hash(provinceId);

  @override
  _$ProvinceSelectedCopyWith<_ProvinceSelected> get copyWith =>
      __$ProvinceSelectedCopyWithImpl<_ProvinceSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeCountries(),
    @required Result nameChanged(String nameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result genderSelected(String genderStr),
    @required Result countrySelected(String countryId),
    @required Result provinceSelected(String countryId, String provinceId),
    @required Result citySelected(String cityStr),
    @required Result streetChanged(String streetStr),
    @required Result streetNumberChanged(int streetNumber),
    @required Result otherAddressDataChanged(String otherAddressDataStr),
    @required Result deleted(),
    @required Result saved(),
    @required
        Result countriesListUpdated(
            Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    @required
        Result provincesListUpdated(
            Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    @required
        Result citiesListUpdated(
            Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return provinceSelected(countryId, provinceId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeCountries(),
    Result nameChanged(String nameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result genderSelected(String genderStr),
    Result countrySelected(String countryId),
    Result provinceSelected(String countryId, String provinceId),
    Result citySelected(String cityStr),
    Result streetChanged(String streetStr),
    Result streetNumberChanged(int streetNumber),
    Result otherAddressDataChanged(String otherAddressDataStr),
    Result deleted(),
    Result saved(),
    Result countriesListUpdated(
        Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    Result provincesListUpdated(
        Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    Result citiesListUpdated(
        Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (provinceSelected != null) {
      return provinceSelected(countryId, provinceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeCountries(_InitializeCountries value),
    @required Result nameChanged(_NameChanged value),
    @required Result lastNameChanged(_LastnameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result genderSelected(_GenderSelected value),
    @required Result countrySelected(_CountrySelected value),
    @required Result provinceSelected(_ProvinceSelected value),
    @required Result citySelected(_CitySelected value),
    @required Result streetChanged(_StreetChanged value),
    @required Result streetNumberChanged(_StreetNumberChanged value),
    @required Result otherAddressDataChanged(_OtherAddressData value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
    @required Result countriesListUpdated(_CountriesUpdateReceived value),
    @required Result provincesListUpdated(_ProvincesUpdateReceived value),
    @required Result citiesListUpdated(_CitiesUpdateReceived value),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return provinceSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeCountries(_InitializeCountries value),
    Result nameChanged(_NameChanged value),
    Result lastNameChanged(_LastnameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result genderSelected(_GenderSelected value),
    Result countrySelected(_CountrySelected value),
    Result provinceSelected(_ProvinceSelected value),
    Result citySelected(_CitySelected value),
    Result streetChanged(_StreetChanged value),
    Result streetNumberChanged(_StreetNumberChanged value),
    Result otherAddressDataChanged(_OtherAddressData value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    Result countriesListUpdated(_CountriesUpdateReceived value),
    Result provincesListUpdated(_ProvincesUpdateReceived value),
    Result citiesListUpdated(_CitiesUpdateReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (provinceSelected != null) {
      return provinceSelected(this);
    }
    return orElse();
  }
}

abstract class _ProvinceSelected implements ProfileFormEvent {
  const factory _ProvinceSelected(String countryId, String provinceId) =
      _$_ProvinceSelected;

  String get countryId;
  String get provinceId;
  _$ProvinceSelectedCopyWith<_ProvinceSelected> get copyWith;
}

abstract class _$CitySelectedCopyWith<$Res> {
  factory _$CitySelectedCopyWith(
          _CitySelected value, $Res Function(_CitySelected) then) =
      __$CitySelectedCopyWithImpl<$Res>;
  $Res call({String cityStr});
}

class __$CitySelectedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$CitySelectedCopyWith<$Res> {
  __$CitySelectedCopyWithImpl(
      _CitySelected _value, $Res Function(_CitySelected) _then)
      : super(_value, (v) => _then(v as _CitySelected));

  @override
  _CitySelected get _value => super._value as _CitySelected;

  @override
  $Res call({
    Object cityStr = freezed,
  }) {
    return _then(_CitySelected(
      cityStr == freezed ? _value.cityStr : cityStr as String,
    ));
  }
}

class _$_CitySelected with DiagnosticableTreeMixin implements _CitySelected {
  const _$_CitySelected(this.cityStr) : assert(cityStr != null);

  @override
  final String cityStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.citySelected(cityStr: $cityStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormEvent.citySelected'))
      ..add(DiagnosticsProperty('cityStr', cityStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CitySelected &&
            (identical(other.cityStr, cityStr) ||
                const DeepCollectionEquality().equals(other.cityStr, cityStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cityStr);

  @override
  _$CitySelectedCopyWith<_CitySelected> get copyWith =>
      __$CitySelectedCopyWithImpl<_CitySelected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeCountries(),
    @required Result nameChanged(String nameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result genderSelected(String genderStr),
    @required Result countrySelected(String countryId),
    @required Result provinceSelected(String countryId, String provinceId),
    @required Result citySelected(String cityStr),
    @required Result streetChanged(String streetStr),
    @required Result streetNumberChanged(int streetNumber),
    @required Result otherAddressDataChanged(String otherAddressDataStr),
    @required Result deleted(),
    @required Result saved(),
    @required
        Result countriesListUpdated(
            Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    @required
        Result provincesListUpdated(
            Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    @required
        Result citiesListUpdated(
            Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return citySelected(cityStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeCountries(),
    Result nameChanged(String nameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result genderSelected(String genderStr),
    Result countrySelected(String countryId),
    Result provinceSelected(String countryId, String provinceId),
    Result citySelected(String cityStr),
    Result streetChanged(String streetStr),
    Result streetNumberChanged(int streetNumber),
    Result otherAddressDataChanged(String otherAddressDataStr),
    Result deleted(),
    Result saved(),
    Result countriesListUpdated(
        Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    Result provincesListUpdated(
        Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    Result citiesListUpdated(
        Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (citySelected != null) {
      return citySelected(cityStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeCountries(_InitializeCountries value),
    @required Result nameChanged(_NameChanged value),
    @required Result lastNameChanged(_LastnameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result genderSelected(_GenderSelected value),
    @required Result countrySelected(_CountrySelected value),
    @required Result provinceSelected(_ProvinceSelected value),
    @required Result citySelected(_CitySelected value),
    @required Result streetChanged(_StreetChanged value),
    @required Result streetNumberChanged(_StreetNumberChanged value),
    @required Result otherAddressDataChanged(_OtherAddressData value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
    @required Result countriesListUpdated(_CountriesUpdateReceived value),
    @required Result provincesListUpdated(_ProvincesUpdateReceived value),
    @required Result citiesListUpdated(_CitiesUpdateReceived value),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return citySelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeCountries(_InitializeCountries value),
    Result nameChanged(_NameChanged value),
    Result lastNameChanged(_LastnameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result genderSelected(_GenderSelected value),
    Result countrySelected(_CountrySelected value),
    Result provinceSelected(_ProvinceSelected value),
    Result citySelected(_CitySelected value),
    Result streetChanged(_StreetChanged value),
    Result streetNumberChanged(_StreetNumberChanged value),
    Result otherAddressDataChanged(_OtherAddressData value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    Result countriesListUpdated(_CountriesUpdateReceived value),
    Result provincesListUpdated(_ProvincesUpdateReceived value),
    Result citiesListUpdated(_CitiesUpdateReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (citySelected != null) {
      return citySelected(this);
    }
    return orElse();
  }
}

abstract class _CitySelected implements ProfileFormEvent {
  const factory _CitySelected(String cityStr) = _$_CitySelected;

  String get cityStr;
  _$CitySelectedCopyWith<_CitySelected> get copyWith;
}

abstract class _$StreetChangedCopyWith<$Res> {
  factory _$StreetChangedCopyWith(
          _StreetChanged value, $Res Function(_StreetChanged) then) =
      __$StreetChangedCopyWithImpl<$Res>;
  $Res call({String streetStr});
}

class __$StreetChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$StreetChangedCopyWith<$Res> {
  __$StreetChangedCopyWithImpl(
      _StreetChanged _value, $Res Function(_StreetChanged) _then)
      : super(_value, (v) => _then(v as _StreetChanged));

  @override
  _StreetChanged get _value => super._value as _StreetChanged;

  @override
  $Res call({
    Object streetStr = freezed,
  }) {
    return _then(_StreetChanged(
      streetStr == freezed ? _value.streetStr : streetStr as String,
    ));
  }
}

class _$_StreetChanged with DiagnosticableTreeMixin implements _StreetChanged {
  const _$_StreetChanged(this.streetStr) : assert(streetStr != null);

  @override
  final String streetStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.streetChanged(streetStr: $streetStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormEvent.streetChanged'))
      ..add(DiagnosticsProperty('streetStr', streetStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StreetChanged &&
            (identical(other.streetStr, streetStr) ||
                const DeepCollectionEquality()
                    .equals(other.streetStr, streetStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(streetStr);

  @override
  _$StreetChangedCopyWith<_StreetChanged> get copyWith =>
      __$StreetChangedCopyWithImpl<_StreetChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeCountries(),
    @required Result nameChanged(String nameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result genderSelected(String genderStr),
    @required Result countrySelected(String countryId),
    @required Result provinceSelected(String countryId, String provinceId),
    @required Result citySelected(String cityStr),
    @required Result streetChanged(String streetStr),
    @required Result streetNumberChanged(int streetNumber),
    @required Result otherAddressDataChanged(String otherAddressDataStr),
    @required Result deleted(),
    @required Result saved(),
    @required
        Result countriesListUpdated(
            Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    @required
        Result provincesListUpdated(
            Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    @required
        Result citiesListUpdated(
            Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return streetChanged(streetStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeCountries(),
    Result nameChanged(String nameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result genderSelected(String genderStr),
    Result countrySelected(String countryId),
    Result provinceSelected(String countryId, String provinceId),
    Result citySelected(String cityStr),
    Result streetChanged(String streetStr),
    Result streetNumberChanged(int streetNumber),
    Result otherAddressDataChanged(String otherAddressDataStr),
    Result deleted(),
    Result saved(),
    Result countriesListUpdated(
        Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    Result provincesListUpdated(
        Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    Result citiesListUpdated(
        Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (streetChanged != null) {
      return streetChanged(streetStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeCountries(_InitializeCountries value),
    @required Result nameChanged(_NameChanged value),
    @required Result lastNameChanged(_LastnameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result genderSelected(_GenderSelected value),
    @required Result countrySelected(_CountrySelected value),
    @required Result provinceSelected(_ProvinceSelected value),
    @required Result citySelected(_CitySelected value),
    @required Result streetChanged(_StreetChanged value),
    @required Result streetNumberChanged(_StreetNumberChanged value),
    @required Result otherAddressDataChanged(_OtherAddressData value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
    @required Result countriesListUpdated(_CountriesUpdateReceived value),
    @required Result provincesListUpdated(_ProvincesUpdateReceived value),
    @required Result citiesListUpdated(_CitiesUpdateReceived value),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return streetChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeCountries(_InitializeCountries value),
    Result nameChanged(_NameChanged value),
    Result lastNameChanged(_LastnameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result genderSelected(_GenderSelected value),
    Result countrySelected(_CountrySelected value),
    Result provinceSelected(_ProvinceSelected value),
    Result citySelected(_CitySelected value),
    Result streetChanged(_StreetChanged value),
    Result streetNumberChanged(_StreetNumberChanged value),
    Result otherAddressDataChanged(_OtherAddressData value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    Result countriesListUpdated(_CountriesUpdateReceived value),
    Result provincesListUpdated(_ProvincesUpdateReceived value),
    Result citiesListUpdated(_CitiesUpdateReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (streetChanged != null) {
      return streetChanged(this);
    }
    return orElse();
  }
}

abstract class _StreetChanged implements ProfileFormEvent {
  const factory _StreetChanged(String streetStr) = _$_StreetChanged;

  String get streetStr;
  _$StreetChangedCopyWith<_StreetChanged> get copyWith;
}

abstract class _$StreetNumberChangedCopyWith<$Res> {
  factory _$StreetNumberChangedCopyWith(_StreetNumberChanged value,
          $Res Function(_StreetNumberChanged) then) =
      __$StreetNumberChangedCopyWithImpl<$Res>;
  $Res call({int streetNumber});
}

class __$StreetNumberChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$StreetNumberChangedCopyWith<$Res> {
  __$StreetNumberChangedCopyWithImpl(
      _StreetNumberChanged _value, $Res Function(_StreetNumberChanged) _then)
      : super(_value, (v) => _then(v as _StreetNumberChanged));

  @override
  _StreetNumberChanged get _value => super._value as _StreetNumberChanged;

  @override
  $Res call({
    Object streetNumber = freezed,
  }) {
    return _then(_StreetNumberChanged(
      streetNumber == freezed ? _value.streetNumber : streetNumber as int,
    ));
  }
}

class _$_StreetNumberChanged
    with DiagnosticableTreeMixin
    implements _StreetNumberChanged {
  const _$_StreetNumberChanged(this.streetNumber)
      : assert(streetNumber != null);

  @override
  final int streetNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.streetNumberChanged(streetNumber: $streetNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormEvent.streetNumberChanged'))
      ..add(DiagnosticsProperty('streetNumber', streetNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StreetNumberChanged &&
            (identical(other.streetNumber, streetNumber) ||
                const DeepCollectionEquality()
                    .equals(other.streetNumber, streetNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(streetNumber);

  @override
  _$StreetNumberChangedCopyWith<_StreetNumberChanged> get copyWith =>
      __$StreetNumberChangedCopyWithImpl<_StreetNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeCountries(),
    @required Result nameChanged(String nameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result genderSelected(String genderStr),
    @required Result countrySelected(String countryId),
    @required Result provinceSelected(String countryId, String provinceId),
    @required Result citySelected(String cityStr),
    @required Result streetChanged(String streetStr),
    @required Result streetNumberChanged(int streetNumber),
    @required Result otherAddressDataChanged(String otherAddressDataStr),
    @required Result deleted(),
    @required Result saved(),
    @required
        Result countriesListUpdated(
            Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    @required
        Result provincesListUpdated(
            Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    @required
        Result citiesListUpdated(
            Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return streetNumberChanged(streetNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeCountries(),
    Result nameChanged(String nameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result genderSelected(String genderStr),
    Result countrySelected(String countryId),
    Result provinceSelected(String countryId, String provinceId),
    Result citySelected(String cityStr),
    Result streetChanged(String streetStr),
    Result streetNumberChanged(int streetNumber),
    Result otherAddressDataChanged(String otherAddressDataStr),
    Result deleted(),
    Result saved(),
    Result countriesListUpdated(
        Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    Result provincesListUpdated(
        Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    Result citiesListUpdated(
        Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (streetNumberChanged != null) {
      return streetNumberChanged(streetNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeCountries(_InitializeCountries value),
    @required Result nameChanged(_NameChanged value),
    @required Result lastNameChanged(_LastnameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result genderSelected(_GenderSelected value),
    @required Result countrySelected(_CountrySelected value),
    @required Result provinceSelected(_ProvinceSelected value),
    @required Result citySelected(_CitySelected value),
    @required Result streetChanged(_StreetChanged value),
    @required Result streetNumberChanged(_StreetNumberChanged value),
    @required Result otherAddressDataChanged(_OtherAddressData value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
    @required Result countriesListUpdated(_CountriesUpdateReceived value),
    @required Result provincesListUpdated(_ProvincesUpdateReceived value),
    @required Result citiesListUpdated(_CitiesUpdateReceived value),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return streetNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeCountries(_InitializeCountries value),
    Result nameChanged(_NameChanged value),
    Result lastNameChanged(_LastnameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result genderSelected(_GenderSelected value),
    Result countrySelected(_CountrySelected value),
    Result provinceSelected(_ProvinceSelected value),
    Result citySelected(_CitySelected value),
    Result streetChanged(_StreetChanged value),
    Result streetNumberChanged(_StreetNumberChanged value),
    Result otherAddressDataChanged(_OtherAddressData value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    Result countriesListUpdated(_CountriesUpdateReceived value),
    Result provincesListUpdated(_ProvincesUpdateReceived value),
    Result citiesListUpdated(_CitiesUpdateReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (streetNumberChanged != null) {
      return streetNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _StreetNumberChanged implements ProfileFormEvent {
  const factory _StreetNumberChanged(int streetNumber) = _$_StreetNumberChanged;

  int get streetNumber;
  _$StreetNumberChangedCopyWith<_StreetNumberChanged> get copyWith;
}

abstract class _$OtherAddressDataCopyWith<$Res> {
  factory _$OtherAddressDataCopyWith(
          _OtherAddressData value, $Res Function(_OtherAddressData) then) =
      __$OtherAddressDataCopyWithImpl<$Res>;
  $Res call({String otherAddressDataStr});
}

class __$OtherAddressDataCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$OtherAddressDataCopyWith<$Res> {
  __$OtherAddressDataCopyWithImpl(
      _OtherAddressData _value, $Res Function(_OtherAddressData) _then)
      : super(_value, (v) => _then(v as _OtherAddressData));

  @override
  _OtherAddressData get _value => super._value as _OtherAddressData;

  @override
  $Res call({
    Object otherAddressDataStr = freezed,
  }) {
    return _then(_OtherAddressData(
      otherAddressDataStr == freezed
          ? _value.otherAddressDataStr
          : otherAddressDataStr as String,
    ));
  }
}

class _$_OtherAddressData
    with DiagnosticableTreeMixin
    implements _OtherAddressData {
  const _$_OtherAddressData(this.otherAddressDataStr)
      : assert(otherAddressDataStr != null);

  @override
  final String otherAddressDataStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.otherAddressDataChanged(otherAddressDataStr: $otherAddressDataStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ProfileFormEvent.otherAddressDataChanged'))
      ..add(DiagnosticsProperty('otherAddressDataStr', otherAddressDataStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OtherAddressData &&
            (identical(other.otherAddressDataStr, otherAddressDataStr) ||
                const DeepCollectionEquality()
                    .equals(other.otherAddressDataStr, otherAddressDataStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(otherAddressDataStr);

  @override
  _$OtherAddressDataCopyWith<_OtherAddressData> get copyWith =>
      __$OtherAddressDataCopyWithImpl<_OtherAddressData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeCountries(),
    @required Result nameChanged(String nameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result genderSelected(String genderStr),
    @required Result countrySelected(String countryId),
    @required Result provinceSelected(String countryId, String provinceId),
    @required Result citySelected(String cityStr),
    @required Result streetChanged(String streetStr),
    @required Result streetNumberChanged(int streetNumber),
    @required Result otherAddressDataChanged(String otherAddressDataStr),
    @required Result deleted(),
    @required Result saved(),
    @required
        Result countriesListUpdated(
            Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    @required
        Result provincesListUpdated(
            Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    @required
        Result citiesListUpdated(
            Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return otherAddressDataChanged(otherAddressDataStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeCountries(),
    Result nameChanged(String nameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result genderSelected(String genderStr),
    Result countrySelected(String countryId),
    Result provinceSelected(String countryId, String provinceId),
    Result citySelected(String cityStr),
    Result streetChanged(String streetStr),
    Result streetNumberChanged(int streetNumber),
    Result otherAddressDataChanged(String otherAddressDataStr),
    Result deleted(),
    Result saved(),
    Result countriesListUpdated(
        Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    Result provincesListUpdated(
        Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    Result citiesListUpdated(
        Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (otherAddressDataChanged != null) {
      return otherAddressDataChanged(otherAddressDataStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeCountries(_InitializeCountries value),
    @required Result nameChanged(_NameChanged value),
    @required Result lastNameChanged(_LastnameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result genderSelected(_GenderSelected value),
    @required Result countrySelected(_CountrySelected value),
    @required Result provinceSelected(_ProvinceSelected value),
    @required Result citySelected(_CitySelected value),
    @required Result streetChanged(_StreetChanged value),
    @required Result streetNumberChanged(_StreetNumberChanged value),
    @required Result otherAddressDataChanged(_OtherAddressData value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
    @required Result countriesListUpdated(_CountriesUpdateReceived value),
    @required Result provincesListUpdated(_ProvincesUpdateReceived value),
    @required Result citiesListUpdated(_CitiesUpdateReceived value),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return otherAddressDataChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeCountries(_InitializeCountries value),
    Result nameChanged(_NameChanged value),
    Result lastNameChanged(_LastnameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result genderSelected(_GenderSelected value),
    Result countrySelected(_CountrySelected value),
    Result provinceSelected(_ProvinceSelected value),
    Result citySelected(_CitySelected value),
    Result streetChanged(_StreetChanged value),
    Result streetNumberChanged(_StreetNumberChanged value),
    Result otherAddressDataChanged(_OtherAddressData value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    Result countriesListUpdated(_CountriesUpdateReceived value),
    Result provincesListUpdated(_ProvincesUpdateReceived value),
    Result citiesListUpdated(_CitiesUpdateReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (otherAddressDataChanged != null) {
      return otherAddressDataChanged(this);
    }
    return orElse();
  }
}

abstract class _OtherAddressData implements ProfileFormEvent {
  const factory _OtherAddressData(String otherAddressDataStr) =
      _$_OtherAddressData;

  String get otherAddressDataStr;
  _$OtherAddressDataCopyWith<_OtherAddressData> get copyWith;
}

abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
}

class __$DeletedCopyWithImpl<$Res> extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;
}

class _$_Deleted with DiagnosticableTreeMixin implements _Deleted {
  const _$_Deleted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.deleted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ProfileFormEvent.deleted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Deleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeCountries(),
    @required Result nameChanged(String nameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result genderSelected(String genderStr),
    @required Result countrySelected(String countryId),
    @required Result provinceSelected(String countryId, String provinceId),
    @required Result citySelected(String cityStr),
    @required Result streetChanged(String streetStr),
    @required Result streetNumberChanged(int streetNumber),
    @required Result otherAddressDataChanged(String otherAddressDataStr),
    @required Result deleted(),
    @required Result saved(),
    @required
        Result countriesListUpdated(
            Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    @required
        Result provincesListUpdated(
            Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    @required
        Result citiesListUpdated(
            Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return deleted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeCountries(),
    Result nameChanged(String nameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result genderSelected(String genderStr),
    Result countrySelected(String countryId),
    Result provinceSelected(String countryId, String provinceId),
    Result citySelected(String cityStr),
    Result streetChanged(String streetStr),
    Result streetNumberChanged(int streetNumber),
    Result otherAddressDataChanged(String otherAddressDataStr),
    Result deleted(),
    Result saved(),
    Result countriesListUpdated(
        Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    Result provincesListUpdated(
        Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    Result citiesListUpdated(
        Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeCountries(_InitializeCountries value),
    @required Result nameChanged(_NameChanged value),
    @required Result lastNameChanged(_LastnameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result genderSelected(_GenderSelected value),
    @required Result countrySelected(_CountrySelected value),
    @required Result provinceSelected(_ProvinceSelected value),
    @required Result citySelected(_CitySelected value),
    @required Result streetChanged(_StreetChanged value),
    @required Result streetNumberChanged(_StreetNumberChanged value),
    @required Result otherAddressDataChanged(_OtherAddressData value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
    @required Result countriesListUpdated(_CountriesUpdateReceived value),
    @required Result provincesListUpdated(_ProvincesUpdateReceived value),
    @required Result citiesListUpdated(_CitiesUpdateReceived value),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeCountries(_InitializeCountries value),
    Result nameChanged(_NameChanged value),
    Result lastNameChanged(_LastnameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result genderSelected(_GenderSelected value),
    Result countrySelected(_CountrySelected value),
    Result provinceSelected(_ProvinceSelected value),
    Result citySelected(_CitySelected value),
    Result streetChanged(_StreetChanged value),
    Result streetNumberChanged(_StreetNumberChanged value),
    Result otherAddressDataChanged(_OtherAddressData value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    Result countriesListUpdated(_CountriesUpdateReceived value),
    Result provincesListUpdated(_ProvincesUpdateReceived value),
    Result citiesListUpdated(_CitiesUpdateReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements ProfileFormEvent {
  const factory _Deleted() = _$_Deleted;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

class __$SavedCopyWithImpl<$Res> extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

class _$_Saved with DiagnosticableTreeMixin implements _Saved {
  const _$_Saved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.saved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ProfileFormEvent.saved'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeCountries(),
    @required Result nameChanged(String nameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result genderSelected(String genderStr),
    @required Result countrySelected(String countryId),
    @required Result provinceSelected(String countryId, String provinceId),
    @required Result citySelected(String cityStr),
    @required Result streetChanged(String streetStr),
    @required Result streetNumberChanged(int streetNumber),
    @required Result otherAddressDataChanged(String otherAddressDataStr),
    @required Result deleted(),
    @required Result saved(),
    @required
        Result countriesListUpdated(
            Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    @required
        Result provincesListUpdated(
            Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    @required
        Result citiesListUpdated(
            Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeCountries(),
    Result nameChanged(String nameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result genderSelected(String genderStr),
    Result countrySelected(String countryId),
    Result provinceSelected(String countryId, String provinceId),
    Result citySelected(String cityStr),
    Result streetChanged(String streetStr),
    Result streetNumberChanged(int streetNumber),
    Result otherAddressDataChanged(String otherAddressDataStr),
    Result deleted(),
    Result saved(),
    Result countriesListUpdated(
        Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    Result provincesListUpdated(
        Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    Result citiesListUpdated(
        Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeCountries(_InitializeCountries value),
    @required Result nameChanged(_NameChanged value),
    @required Result lastNameChanged(_LastnameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result genderSelected(_GenderSelected value),
    @required Result countrySelected(_CountrySelected value),
    @required Result provinceSelected(_ProvinceSelected value),
    @required Result citySelected(_CitySelected value),
    @required Result streetChanged(_StreetChanged value),
    @required Result streetNumberChanged(_StreetNumberChanged value),
    @required Result otherAddressDataChanged(_OtherAddressData value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
    @required Result countriesListUpdated(_CountriesUpdateReceived value),
    @required Result provincesListUpdated(_ProvincesUpdateReceived value),
    @required Result citiesListUpdated(_CitiesUpdateReceived value),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeCountries(_InitializeCountries value),
    Result nameChanged(_NameChanged value),
    Result lastNameChanged(_LastnameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result genderSelected(_GenderSelected value),
    Result countrySelected(_CountrySelected value),
    Result provinceSelected(_ProvinceSelected value),
    Result citySelected(_CitySelected value),
    Result streetChanged(_StreetChanged value),
    Result streetNumberChanged(_StreetNumberChanged value),
    Result otherAddressDataChanged(_OtherAddressData value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    Result countriesListUpdated(_CountriesUpdateReceived value),
    Result provincesListUpdated(_ProvincesUpdateReceived value),
    Result citiesListUpdated(_CitiesUpdateReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ProfileFormEvent {
  const factory _Saved() = _$_Saved;
}

abstract class _$CountriesUpdateReceivedCopyWith<$Res> {
  factory _$CountriesUpdateReceivedCopyWith(_CountriesUpdateReceived value,
          $Res Function(_CountriesUpdateReceived) then) =
      __$CountriesUpdateReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries});
}

class __$CountriesUpdateReceivedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$CountriesUpdateReceivedCopyWith<$Res> {
  __$CountriesUpdateReceivedCopyWithImpl(_CountriesUpdateReceived _value,
      $Res Function(_CountriesUpdateReceived) _then)
      : super(_value, (v) => _then(v as _CountriesUpdateReceived));

  @override
  _CountriesUpdateReceived get _value =>
      super._value as _CountriesUpdateReceived;

  @override
  $Res call({
    Object failureOrCountries = freezed,
  }) {
    return _then(_CountriesUpdateReceived(
      failureOrCountries == freezed
          ? _value.failureOrCountries
          : failureOrCountries
              as Either<ProfileFailure, KtList<ProfileCountry>>,
    ));
  }
}

class _$_CountriesUpdateReceived
    with DiagnosticableTreeMixin
    implements _CountriesUpdateReceived {
  const _$_CountriesUpdateReceived(this.failureOrCountries)
      : assert(failureOrCountries != null);

  @override
  final Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.countriesListUpdated(failureOrCountries: $failureOrCountries)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ProfileFormEvent.countriesListUpdated'))
      ..add(DiagnosticsProperty('failureOrCountries', failureOrCountries));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountriesUpdateReceived &&
            (identical(other.failureOrCountries, failureOrCountries) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrCountries, failureOrCountries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrCountries);

  @override
  _$CountriesUpdateReceivedCopyWith<_CountriesUpdateReceived> get copyWith =>
      __$CountriesUpdateReceivedCopyWithImpl<_CountriesUpdateReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeCountries(),
    @required Result nameChanged(String nameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result genderSelected(String genderStr),
    @required Result countrySelected(String countryId),
    @required Result provinceSelected(String countryId, String provinceId),
    @required Result citySelected(String cityStr),
    @required Result streetChanged(String streetStr),
    @required Result streetNumberChanged(int streetNumber),
    @required Result otherAddressDataChanged(String otherAddressDataStr),
    @required Result deleted(),
    @required Result saved(),
    @required
        Result countriesListUpdated(
            Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    @required
        Result provincesListUpdated(
            Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    @required
        Result citiesListUpdated(
            Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return countriesListUpdated(failureOrCountries);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeCountries(),
    Result nameChanged(String nameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result genderSelected(String genderStr),
    Result countrySelected(String countryId),
    Result provinceSelected(String countryId, String provinceId),
    Result citySelected(String cityStr),
    Result streetChanged(String streetStr),
    Result streetNumberChanged(int streetNumber),
    Result otherAddressDataChanged(String otherAddressDataStr),
    Result deleted(),
    Result saved(),
    Result countriesListUpdated(
        Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    Result provincesListUpdated(
        Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    Result citiesListUpdated(
        Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (countriesListUpdated != null) {
      return countriesListUpdated(failureOrCountries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeCountries(_InitializeCountries value),
    @required Result nameChanged(_NameChanged value),
    @required Result lastNameChanged(_LastnameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result genderSelected(_GenderSelected value),
    @required Result countrySelected(_CountrySelected value),
    @required Result provinceSelected(_ProvinceSelected value),
    @required Result citySelected(_CitySelected value),
    @required Result streetChanged(_StreetChanged value),
    @required Result streetNumberChanged(_StreetNumberChanged value),
    @required Result otherAddressDataChanged(_OtherAddressData value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
    @required Result countriesListUpdated(_CountriesUpdateReceived value),
    @required Result provincesListUpdated(_ProvincesUpdateReceived value),
    @required Result citiesListUpdated(_CitiesUpdateReceived value),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return countriesListUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeCountries(_InitializeCountries value),
    Result nameChanged(_NameChanged value),
    Result lastNameChanged(_LastnameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result genderSelected(_GenderSelected value),
    Result countrySelected(_CountrySelected value),
    Result provinceSelected(_ProvinceSelected value),
    Result citySelected(_CitySelected value),
    Result streetChanged(_StreetChanged value),
    Result streetNumberChanged(_StreetNumberChanged value),
    Result otherAddressDataChanged(_OtherAddressData value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    Result countriesListUpdated(_CountriesUpdateReceived value),
    Result provincesListUpdated(_ProvincesUpdateReceived value),
    Result citiesListUpdated(_CitiesUpdateReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (countriesListUpdated != null) {
      return countriesListUpdated(this);
    }
    return orElse();
  }
}

abstract class _CountriesUpdateReceived implements ProfileFormEvent {
  const factory _CountriesUpdateReceived(
          Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries) =
      _$_CountriesUpdateReceived;

  Either<ProfileFailure, KtList<ProfileCountry>> get failureOrCountries;
  _$CountriesUpdateReceivedCopyWith<_CountriesUpdateReceived> get copyWith;
}

abstract class _$ProvincesUpdateReceivedCopyWith<$Res> {
  factory _$ProvincesUpdateReceivedCopyWith(_ProvincesUpdateReceived value,
          $Res Function(_ProvincesUpdateReceived) then) =
      __$ProvincesUpdateReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces});
}

class __$ProvincesUpdateReceivedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$ProvincesUpdateReceivedCopyWith<$Res> {
  __$ProvincesUpdateReceivedCopyWithImpl(_ProvincesUpdateReceived _value,
      $Res Function(_ProvincesUpdateReceived) _then)
      : super(_value, (v) => _then(v as _ProvincesUpdateReceived));

  @override
  _ProvincesUpdateReceived get _value =>
      super._value as _ProvincesUpdateReceived;

  @override
  $Res call({
    Object failureOrProvinces = freezed,
  }) {
    return _then(_ProvincesUpdateReceived(
      failureOrProvinces == freezed
          ? _value.failureOrProvinces
          : failureOrProvinces
              as Either<ProfileFailure, KtList<ProfileProvince>>,
    ));
  }
}

class _$_ProvincesUpdateReceived
    with DiagnosticableTreeMixin
    implements _ProvincesUpdateReceived {
  const _$_ProvincesUpdateReceived(this.failureOrProvinces)
      : assert(failureOrProvinces != null);

  @override
  final Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.provincesListUpdated(failureOrProvinces: $failureOrProvinces)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ProfileFormEvent.provincesListUpdated'))
      ..add(DiagnosticsProperty('failureOrProvinces', failureOrProvinces));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProvincesUpdateReceived &&
            (identical(other.failureOrProvinces, failureOrProvinces) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrProvinces, failureOrProvinces)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrProvinces);

  @override
  _$ProvincesUpdateReceivedCopyWith<_ProvincesUpdateReceived> get copyWith =>
      __$ProvincesUpdateReceivedCopyWithImpl<_ProvincesUpdateReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeCountries(),
    @required Result nameChanged(String nameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result genderSelected(String genderStr),
    @required Result countrySelected(String countryId),
    @required Result provinceSelected(String countryId, String provinceId),
    @required Result citySelected(String cityStr),
    @required Result streetChanged(String streetStr),
    @required Result streetNumberChanged(int streetNumber),
    @required Result otherAddressDataChanged(String otherAddressDataStr),
    @required Result deleted(),
    @required Result saved(),
    @required
        Result countriesListUpdated(
            Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    @required
        Result provincesListUpdated(
            Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    @required
        Result citiesListUpdated(
            Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return provincesListUpdated(failureOrProvinces);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeCountries(),
    Result nameChanged(String nameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result genderSelected(String genderStr),
    Result countrySelected(String countryId),
    Result provinceSelected(String countryId, String provinceId),
    Result citySelected(String cityStr),
    Result streetChanged(String streetStr),
    Result streetNumberChanged(int streetNumber),
    Result otherAddressDataChanged(String otherAddressDataStr),
    Result deleted(),
    Result saved(),
    Result countriesListUpdated(
        Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    Result provincesListUpdated(
        Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    Result citiesListUpdated(
        Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (provincesListUpdated != null) {
      return provincesListUpdated(failureOrProvinces);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeCountries(_InitializeCountries value),
    @required Result nameChanged(_NameChanged value),
    @required Result lastNameChanged(_LastnameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result genderSelected(_GenderSelected value),
    @required Result countrySelected(_CountrySelected value),
    @required Result provinceSelected(_ProvinceSelected value),
    @required Result citySelected(_CitySelected value),
    @required Result streetChanged(_StreetChanged value),
    @required Result streetNumberChanged(_StreetNumberChanged value),
    @required Result otherAddressDataChanged(_OtherAddressData value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
    @required Result countriesListUpdated(_CountriesUpdateReceived value),
    @required Result provincesListUpdated(_ProvincesUpdateReceived value),
    @required Result citiesListUpdated(_CitiesUpdateReceived value),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return provincesListUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeCountries(_InitializeCountries value),
    Result nameChanged(_NameChanged value),
    Result lastNameChanged(_LastnameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result genderSelected(_GenderSelected value),
    Result countrySelected(_CountrySelected value),
    Result provinceSelected(_ProvinceSelected value),
    Result citySelected(_CitySelected value),
    Result streetChanged(_StreetChanged value),
    Result streetNumberChanged(_StreetNumberChanged value),
    Result otherAddressDataChanged(_OtherAddressData value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    Result countriesListUpdated(_CountriesUpdateReceived value),
    Result provincesListUpdated(_ProvincesUpdateReceived value),
    Result citiesListUpdated(_CitiesUpdateReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (provincesListUpdated != null) {
      return provincesListUpdated(this);
    }
    return orElse();
  }
}

abstract class _ProvincesUpdateReceived implements ProfileFormEvent {
  const factory _ProvincesUpdateReceived(
          Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces) =
      _$_ProvincesUpdateReceived;

  Either<ProfileFailure, KtList<ProfileProvince>> get failureOrProvinces;
  _$ProvincesUpdateReceivedCopyWith<_ProvincesUpdateReceived> get copyWith;
}

abstract class _$CitiesUpdateReceivedCopyWith<$Res> {
  factory _$CitiesUpdateReceivedCopyWith(_CitiesUpdateReceived value,
          $Res Function(_CitiesUpdateReceived) then) =
      __$CitiesUpdateReceivedCopyWithImpl<$Res>;
  $Res call({Either<ProfileFailure, KtList<ProfileCity>> failureOrCities});
}

class __$CitiesUpdateReceivedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$CitiesUpdateReceivedCopyWith<$Res> {
  __$CitiesUpdateReceivedCopyWithImpl(
      _CitiesUpdateReceived _value, $Res Function(_CitiesUpdateReceived) _then)
      : super(_value, (v) => _then(v as _CitiesUpdateReceived));

  @override
  _CitiesUpdateReceived get _value => super._value as _CitiesUpdateReceived;

  @override
  $Res call({
    Object failureOrCities = freezed,
  }) {
    return _then(_CitiesUpdateReceived(
      failureOrCities == freezed
          ? _value.failureOrCities
          : failureOrCities as Either<ProfileFailure, KtList<ProfileCity>>,
    ));
  }
}

class _$_CitiesUpdateReceived
    with DiagnosticableTreeMixin
    implements _CitiesUpdateReceived {
  const _$_CitiesUpdateReceived(this.failureOrCities)
      : assert(failureOrCities != null);

  @override
  final Either<ProfileFailure, KtList<ProfileCity>> failureOrCities;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormEvent.citiesListUpdated(failureOrCities: $failureOrCities)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormEvent.citiesListUpdated'))
      ..add(DiagnosticsProperty('failureOrCities', failureOrCities));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CitiesUpdateReceived &&
            (identical(other.failureOrCities, failureOrCities) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrCities, failureOrCities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrCities);

  @override
  _$CitiesUpdateReceivedCopyWith<_CitiesUpdateReceived> get copyWith =>
      __$CitiesUpdateReceivedCopyWithImpl<_CitiesUpdateReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeCountries(),
    @required Result nameChanged(String nameStr),
    @required Result lastNameChanged(String lastNameStr),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result genderSelected(String genderStr),
    @required Result countrySelected(String countryId),
    @required Result provinceSelected(String countryId, String provinceId),
    @required Result citySelected(String cityStr),
    @required Result streetChanged(String streetStr),
    @required Result streetNumberChanged(int streetNumber),
    @required Result otherAddressDataChanged(String otherAddressDataStr),
    @required Result deleted(),
    @required Result saved(),
    @required
        Result countriesListUpdated(
            Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    @required
        Result provincesListUpdated(
            Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    @required
        Result citiesListUpdated(
            Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return citiesListUpdated(failureOrCities);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeCountries(),
    Result nameChanged(String nameStr),
    Result lastNameChanged(String lastNameStr),
    Result phoneNumberChanged(String phoneNumberStr),
    Result genderSelected(String genderStr),
    Result countrySelected(String countryId),
    Result provinceSelected(String countryId, String provinceId),
    Result citySelected(String cityStr),
    Result streetChanged(String streetStr),
    Result streetNumberChanged(int streetNumber),
    Result otherAddressDataChanged(String otherAddressDataStr),
    Result deleted(),
    Result saved(),
    Result countriesListUpdated(
        Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries),
    Result provincesListUpdated(
        Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces),
    Result citiesListUpdated(
        Either<ProfileFailure, KtList<ProfileCity>> failureOrCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (citiesListUpdated != null) {
      return citiesListUpdated(failureOrCities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeCountries(_InitializeCountries value),
    @required Result nameChanged(_NameChanged value),
    @required Result lastNameChanged(_LastnameChanged value),
    @required Result phoneNumberChanged(_PhoneNumberChanged value),
    @required Result genderSelected(_GenderSelected value),
    @required Result countrySelected(_CountrySelected value),
    @required Result provinceSelected(_ProvinceSelected value),
    @required Result citySelected(_CitySelected value),
    @required Result streetChanged(_StreetChanged value),
    @required Result streetNumberChanged(_StreetNumberChanged value),
    @required Result otherAddressDataChanged(_OtherAddressData value),
    @required Result deleted(_Deleted value),
    @required Result saved(_Saved value),
    @required Result countriesListUpdated(_CountriesUpdateReceived value),
    @required Result provincesListUpdated(_ProvincesUpdateReceived value),
    @required Result citiesListUpdated(_CitiesUpdateReceived value),
  }) {
    assert(initializeCountries != null);
    assert(nameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(genderSelected != null);
    assert(countrySelected != null);
    assert(provinceSelected != null);
    assert(citySelected != null);
    assert(streetChanged != null);
    assert(streetNumberChanged != null);
    assert(otherAddressDataChanged != null);
    assert(deleted != null);
    assert(saved != null);
    assert(countriesListUpdated != null);
    assert(provincesListUpdated != null);
    assert(citiesListUpdated != null);
    return citiesListUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeCountries(_InitializeCountries value),
    Result nameChanged(_NameChanged value),
    Result lastNameChanged(_LastnameChanged value),
    Result phoneNumberChanged(_PhoneNumberChanged value),
    Result genderSelected(_GenderSelected value),
    Result countrySelected(_CountrySelected value),
    Result provinceSelected(_ProvinceSelected value),
    Result citySelected(_CitySelected value),
    Result streetChanged(_StreetChanged value),
    Result streetNumberChanged(_StreetNumberChanged value),
    Result otherAddressDataChanged(_OtherAddressData value),
    Result deleted(_Deleted value),
    Result saved(_Saved value),
    Result countriesListUpdated(_CountriesUpdateReceived value),
    Result provincesListUpdated(_ProvincesUpdateReceived value),
    Result citiesListUpdated(_CitiesUpdateReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (citiesListUpdated != null) {
      return citiesListUpdated(this);
    }
    return orElse();
  }
}

abstract class _CitiesUpdateReceived implements ProfileFormEvent {
  const factory _CitiesUpdateReceived(
          Either<ProfileFailure, KtList<ProfileCity>> failureOrCities) =
      _$_CitiesUpdateReceived;

  Either<ProfileFailure, KtList<ProfileCity>> get failureOrCities;
  _$CitiesUpdateReceivedCopyWith<_CitiesUpdateReceived> get copyWith;
}

class _$ProfileFormStateTearOff {
  const _$ProfileFormStateTearOff();

  _ProfileFormState call(
      {@required
          Profile profile,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Either<ProfileFailure, KtList<ProfileCountry>> countriesList,
      @required
          Either<ProfileFailure, KtList<ProfileProvince>> provincesList,
      @required
          Either<ProfileFailure, KtList<ProfileCity>> citiesList,
      @required
          Option<Either<ProfileFailure, Unit>> saveFailureOrSuccessOption}) {
    return _ProfileFormState(
      profile: profile,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      countriesList: countriesList,
      provincesList: provincesList,
      citiesList: citiesList,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $ProfileFormState = _$ProfileFormStateTearOff();

mixin _$ProfileFormState {
  Profile get profile;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Either<ProfileFailure, KtList<ProfileCountry>> get countriesList;
  Either<ProfileFailure, KtList<ProfileProvince>> get provincesList;
  Either<ProfileFailure, KtList<ProfileCity>> get citiesList;
  Option<Either<ProfileFailure, Unit>> get saveFailureOrSuccessOption;

  $ProfileFormStateCopyWith<ProfileFormState> get copyWith;
}

abstract class $ProfileFormStateCopyWith<$Res> {
  factory $ProfileFormStateCopyWith(
          ProfileFormState value, $Res Function(ProfileFormState) then) =
      _$ProfileFormStateCopyWithImpl<$Res>;
  $Res call(
      {Profile profile,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Either<ProfileFailure, KtList<ProfileCountry>> countriesList,
      Either<ProfileFailure, KtList<ProfileProvince>> provincesList,
      Either<ProfileFailure, KtList<ProfileCity>> citiesList,
      Option<Either<ProfileFailure, Unit>> saveFailureOrSuccessOption});

  $ProfileCopyWith<$Res> get profile;
}

class _$ProfileFormStateCopyWithImpl<$Res>
    implements $ProfileFormStateCopyWith<$Res> {
  _$ProfileFormStateCopyWithImpl(this._value, this._then);

  final ProfileFormState _value;
  // ignore: unused_field
  final $Res Function(ProfileFormState) _then;

  @override
  $Res call({
    Object profile = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object countriesList = freezed,
    Object provincesList = freezed,
    Object citiesList = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      profile: profile == freezed ? _value.profile : profile as Profile,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      countriesList: countriesList == freezed
          ? _value.countriesList
          : countriesList as Either<ProfileFailure, KtList<ProfileCountry>>,
      provincesList: provincesList == freezed
          ? _value.provincesList
          : provincesList as Either<ProfileFailure, KtList<ProfileProvince>>,
      citiesList: citiesList == freezed
          ? _value.citiesList
          : citiesList as Either<ProfileFailure, KtList<ProfileCity>>,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ProfileFailure, Unit>>,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    if (_value.profile == null) {
      return null;
    }
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

abstract class _$ProfileFormStateCopyWith<$Res>
    implements $ProfileFormStateCopyWith<$Res> {
  factory _$ProfileFormStateCopyWith(
          _ProfileFormState value, $Res Function(_ProfileFormState) then) =
      __$ProfileFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Profile profile,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Either<ProfileFailure, KtList<ProfileCountry>> countriesList,
      Either<ProfileFailure, KtList<ProfileProvince>> provincesList,
      Either<ProfileFailure, KtList<ProfileCity>> citiesList,
      Option<Either<ProfileFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ProfileCopyWith<$Res> get profile;
}

class __$ProfileFormStateCopyWithImpl<$Res>
    extends _$ProfileFormStateCopyWithImpl<$Res>
    implements _$ProfileFormStateCopyWith<$Res> {
  __$ProfileFormStateCopyWithImpl(
      _ProfileFormState _value, $Res Function(_ProfileFormState) _then)
      : super(_value, (v) => _then(v as _ProfileFormState));

  @override
  _ProfileFormState get _value => super._value as _ProfileFormState;

  @override
  $Res call({
    Object profile = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object countriesList = freezed,
    Object provincesList = freezed,
    Object citiesList = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_ProfileFormState(
      profile: profile == freezed ? _value.profile : profile as Profile,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      countriesList: countriesList == freezed
          ? _value.countriesList
          : countriesList as Either<ProfileFailure, KtList<ProfileCountry>>,
      provincesList: provincesList == freezed
          ? _value.provincesList
          : provincesList as Either<ProfileFailure, KtList<ProfileProvince>>,
      citiesList: citiesList == freezed
          ? _value.citiesList
          : citiesList as Either<ProfileFailure, KtList<ProfileCity>>,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ProfileFailure, Unit>>,
    ));
  }
}

class _$_ProfileFormState
    with DiagnosticableTreeMixin
    implements _ProfileFormState {
  const _$_ProfileFormState(
      {@required this.profile,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.countriesList,
      @required this.provincesList,
      @required this.citiesList,
      @required this.saveFailureOrSuccessOption})
      : assert(profile != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(countriesList != null),
        assert(provincesList != null),
        assert(citiesList != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Profile profile;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Either<ProfileFailure, KtList<ProfileCountry>> countriesList;
  @override
  final Either<ProfileFailure, KtList<ProfileProvince>> provincesList;
  @override
  final Either<ProfileFailure, KtList<ProfileCity>> citiesList;
  @override
  final Option<Either<ProfileFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileFormState(profile: $profile, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, countriesList: $countriesList, provincesList: $provincesList, citiesList: $citiesList, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileFormState'))
      ..add(DiagnosticsProperty('profile', profile))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isEditing', isEditing))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty('countriesList', countriesList))
      ..add(DiagnosticsProperty('provincesList', provincesList))
      ..add(DiagnosticsProperty('citiesList', citiesList))
      ..add(DiagnosticsProperty(
          'saveFailureOrSuccessOption', saveFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileFormState &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.countriesList, countriesList) ||
                const DeepCollectionEquality()
                    .equals(other.countriesList, countriesList)) &&
            (identical(other.provincesList, provincesList) ||
                const DeepCollectionEquality()
                    .equals(other.provincesList, provincesList)) &&
            (identical(other.citiesList, citiesList) ||
                const DeepCollectionEquality()
                    .equals(other.citiesList, citiesList)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(countriesList) ^
      const DeepCollectionEquality().hash(provincesList) ^
      const DeepCollectionEquality().hash(citiesList) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$ProfileFormStateCopyWith<_ProfileFormState> get copyWith =>
      __$ProfileFormStateCopyWithImpl<_ProfileFormState>(this, _$identity);
}

abstract class _ProfileFormState implements ProfileFormState {
  const factory _ProfileFormState(
      {@required
          Profile profile,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Either<ProfileFailure, KtList<ProfileCountry>> countriesList,
      @required
          Either<ProfileFailure, KtList<ProfileProvince>> provincesList,
      @required
          Either<ProfileFailure, KtList<ProfileCity>> citiesList,
      @required
          Option<Either<ProfileFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_ProfileFormState;

  @override
  Profile get profile;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Either<ProfileFailure, KtList<ProfileCountry>> get countriesList;
  @override
  Either<ProfileFailure, KtList<ProfileProvince>> get provincesList;
  @override
  Either<ProfileFailure, KtList<ProfileCity>> get citiesList;
  @override
  Option<Either<ProfileFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$ProfileFormStateCopyWith<_ProfileFormState> get copyWith;
}
