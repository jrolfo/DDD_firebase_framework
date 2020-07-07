//Aca viene el estado que puede tener el form...

part of 'sign_in_form_bloc.dart';

//Basicamente declaro todos los objetos que me hacen falta en el form
@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required EmailAddress emailAddress, //El mail
    @required Password password, //El pass
    @required bool isSubmitting, //Indicador para el progress bar
    @required bool showErrorMessages, //Muestro o no el snack bar
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption, //
    //Este es el campo que se usa para saber si hubo error void (todo bien)
    //El tema del Option es porque puede haber algo (some) o nada (none)
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: none(), //inicializo a None porque todavia
        //no paso nada osea el estado no existe
      );
}
