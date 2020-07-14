part of 'profile_form_bloc.dart';

@freezed
abstract class ProfileFormEvent with _$ProfileFormEvent {
  const factory ProfileFormEvent.initializeCountries() = _InitializeCountries;
  const factory ProfileFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory ProfileFormEvent.lastNameChanged(String lastNameStr) =
      _LastnameChanged;
  const factory ProfileFormEvent.phoneNumberChanged(String phoneNumberStr) =
      _PhoneNumberChanged;
  const factory ProfileFormEvent.genderSelected(String genderStr) =
      _GenderSelected;
  const factory ProfileFormEvent.countrySelected(String countryId) =
      _CountrySelected;
  const factory ProfileFormEvent.provinceSelected(
      String countryId, String provinceId) = _ProvinceSelected;
  const factory ProfileFormEvent.citySelected(String cityStr) = _CitySelected;
  const factory ProfileFormEvent.streetChanged(String streetStr) =
      _StreetChanged;
  const factory ProfileFormEvent.streetNumberChanged(int streetNumber) =
      _StreetNumberChanged;
  const factory ProfileFormEvent.otherAddressDataChanged(
      String otherAddressDataStr) = _OtherAddressData;
  const factory ProfileFormEvent.deleted() = _Deleted;

  const factory ProfileFormEvent.saved() = _Saved;
  const factory ProfileFormEvent.countriesListUpdated(
          Either<ProfileFailure, KtList<ProfileCountry>> failureOrCountries) =
      _CountriesUpdateReceived;
  const factory ProfileFormEvent.provincesListUpdated(
          Either<ProfileFailure, KtList<ProfileProvince>> failureOrProvinces) =
      _ProvincesUpdateReceived;
  const factory ProfileFormEvent.citiesListUpdated(
          Either<ProfileFailure, KtList<ProfileCity>> failureOrCities) =
      _CitiesUpdateReceived;
}
