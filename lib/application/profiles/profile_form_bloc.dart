import 'dart:async';

import 'package:DDD_firebase_framework/domain/profiles/i_profile_repository.dart';
import 'package:DDD_firebase_framework/domain/profiles/profile.dart';
import 'package:DDD_firebase_framework/domain/profiles/profile_failure.dart';
import 'package:DDD_firebase_framework/domain/profiles/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

part 'profile_form_event.dart';
part 'profile_form_state.dart';
part 'profile_form_bloc.freezed.dart';

@injectable
class ProfileFormBloc extends Bloc<ProfileFormEvent, ProfileFormState> {
  final IProfileRepository _profileRepository;

  ProfileFormBloc(this._profileRepository);

  StreamSubscription<Either<ProfileFailure, KtList<ProfileCountry>>>
      _profileCountryStreamSubscription;
  StreamSubscription<Either<ProfileFailure, KtList<ProfileProvince>>>
      _profileProvinceStreamSubscription;
  StreamSubscription<Either<ProfileFailure, KtList<ProfileCity>>>
      _profileCityStreamSubscription;

  @override
  ProfileFormState get initialState => ProfileFormState.initial();

  @override
  Stream<ProfileFormState> mapEventToState(
    ProfileFormEvent event,
  ) async* {
    yield* event.map(
      initializeCountries: (e) async* {
        //cancelo las 2 subscripciones
        await _profileCountryStreamSubscription?.cancel();
        await _profileProvinceStreamSubscription?.cancel();
        await _profileCityStreamSubscription?.cancel();

        _profileCountryStreamSubscription = _profileRepository
            .getCountries()
            .listen(
              (failureOrCountries) => add(
                  ProfileFormEvent.countriesListUpdated(failureOrCountries)),
            );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          profile: state.profile.copyWith(name: ProfileName(e.nameStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          profile:
              state.profile.copyWith(lastName: ProfileLastName(e.lastNameStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          profile: state.profile
              .copyWith(phoneNumber: ProfilePhoneNumber(e.phoneNumberStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      genderSelected: (e) async* {
        yield state.copyWith(
          profile: state.profile.copyWith(gender: ProfileGender(e.genderStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      countrySelected: (e) async* {
        //cancelo las 2 subscripciones
        await _profileProvinceStreamSubscription?.cancel();
        await _profileCityStreamSubscription?.cancel();

        yield state.copyWith(
          profile: state.profile.copyWith(
            country: ProfileCountry(e.countryId),
            province: ProfileProvince(''),
            city: ProfileCity(''),
          ),
          saveFailureOrSuccessOption: none(),
        );

        _profileProvinceStreamSubscription = _profileRepository
            .getProvinces(e.countryId)
            .listen(
              (failureOrProvinces) => add(
                  ProfileFormEvent.provincesListUpdated(failureOrProvinces)),
            );

        add(ProfileFormEvent.citiesListUpdated(right(emptyList())));
      },
      provinceSelected: (e) async* {
        //cancelo las 2 subscripciones
        await _profileCityStreamSubscription?.cancel();

        yield state.copyWith(
          profile: state.profile.copyWith(
            province: ProfileProvince(e.provinceId),
            city: ProfileCity(''),
          ),
          saveFailureOrSuccessOption: none(),
        );

        _profileCityStreamSubscription =
            _profileRepository.getCities(e.countryId, e.provinceId).listen(
                  (failureOrCities) =>
                      add(ProfileFormEvent.citiesListUpdated(failureOrCities)),
                );
      },
      citySelected: (e) async* {
        yield state.copyWith(
          profile: state.profile.copyWith(city: ProfileCity(e.cityStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      streetChanged: (e) async* {
        yield state.copyWith(
          profile: state.profile.copyWith(street: ProfileStreet(e.streetStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      streetNumberChanged: (e) async* {
        yield state.copyWith(
          profile: state.profile
              .copyWith(streetNumber: ProfileStreetNumber(e.streetNumber)),
          saveFailureOrSuccessOption: none(),
        );
      },
      otherAddressDataChanged: (e) async* {
        yield state.copyWith(
          profile: state.profile.copyWith(
              otherAddressData: ProfileOtherAddressData(e.otherAddressDataStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<ProfileFailure, Unit> failureOrSuccess;
        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.profile.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _profileRepository.update(state.profile)
              : await _profileRepository.create(state.profile);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      deleted: (e) async* {
        Either<ProfileFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _profileRepository.delete(state.profile);

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      countriesListUpdated: (e) async* {
        yield state.copyWith(
          showErrorMessages: false,
          countriesList: e.failureOrCountries.fold(
            (l) => left(l),
            (r) => right(r),
          ),
        );
        print(e.failureOrCountries);
      },
      provincesListUpdated: (e) async* {
        yield state.copyWith(
            showErrorMessages: true,
            provincesList: e.failureOrProvinces.fold(
              (l) => left(l),
              (r) => right(r),
            ));
        print(e.failureOrProvinces);
      },
      citiesListUpdated: (e) async* {
        yield state.copyWith(
            showErrorMessages: true,
            citiesList: e.failureOrCities.fold(
              (l) => left(l),
              (r) => right(r),
            ));
        print(e.failureOrCities);
      },
    );
  }
}
