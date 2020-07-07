//Aca van los eventos que pueden ocurrir en el form
part of 'sign_in_form_bloc.dart';

//La Anotacion @freezed sirve para generar uniones...
@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  //tengo que declarar un evento por cada evento que tenga el form
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignInFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
}
