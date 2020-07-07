part of 'screen_one_form_bloc.dart';

@freezed
abstract class ScreenOneFormEvent with _$ScreenOneFormEvent {
  const factory ScreenOneFormEvent.emailChanged(String emailStr) = EmailChanged;
}
