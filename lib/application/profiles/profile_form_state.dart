part of 'profile_form_bloc.dart';

@freezed
abstract class ProfileFormState with _$ProfileFormState {
  const factory ProfileFormState({
    @required Profile profile,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Either<ProfileFailure, KtList<ProfileCountry>> countriesList,
    @required Either<ProfileFailure, KtList<ProfileProvince>> provincesList,
    @required Either<ProfileFailure, KtList<ProfileCity>> citiesList,
    @required Option<Either<ProfileFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ProfileFormState;

  factory ProfileFormState.initial() => ProfileFormState(
        profile: Profile.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        countriesList: right(emptyList()),
        provincesList: right(emptyList()),
        citiesList: right(emptyList()),
        saveFailureOrSuccessOption: none(),
      );
}
