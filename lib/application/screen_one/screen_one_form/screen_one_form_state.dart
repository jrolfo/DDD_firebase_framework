part of 'screen_one_form_bloc.dart';

@freezed
abstract class ScreenOneFormState with _$ScreenOneFormState {
  const factory ScreenOneFormState({
    @required String emailAddress, //El mail
  }) = _ScreenOneFormState;

  factory ScreenOneFormState.initial() => ScreenOneFormState(
        emailAddress: '',
      );
}
