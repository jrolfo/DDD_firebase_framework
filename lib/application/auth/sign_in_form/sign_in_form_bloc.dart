//Este es el archivo principal del bloc de sign_in
//se divide en 3 bloc... eventos y estado
//Los imports solo pueden venir aca
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:DDD_firebase_framework/domain/auth/auth_failure.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:DDD_firebase_framework/domain/auth/i_auth_facade.dart';
import 'package:DDD_firebase_framework/domain/auth/value_objects.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
//El part del freeze tambien tiene que venir solo aca
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  //declaramos una variable del tipo interfaz de auth
  final IAuthFacade _authFacade;

  //LLamado al constructor
  SignInFormBloc(this._authFacade);

  //carga el estado inicial
  @override
  SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    //mapeo todos los eventos al estado... osea aplico logica...
    yield* event.map(
      emailChanged: (e) async* {
        //el state.copyWith modifica el estado y le asigna a emailAddress del estado
        //un objeto tipo EmailAddress(con el string que me trae el evento
        //Esto hace que se corran todas las validaciones automaticamente)
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        //llamo a la subfuncion y le paso como parametro cual de los metodos
        //de la interfaz facade va a ejecutar
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.registerWithEmailAndPassword,
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.signInWithEmailAndPassword,
        );
      },
      signInWithGooglePressed: (e) async* {
        //cada yield state.copyWith se usa para modificar el estado del bloc
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        //aca llamo a la funcion para auth con google
        final failureOrSuccess = await _authFacade.signInWithgoogle();
        //vuelvo a modificar el estado saco  la progress bar
        //y seteo el resultado del call a google como mi indicador de error
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess),
        );
      },
    );
  }

  //Esto es medio raro... pero es una funcion que se ejecuta...
  //recibe como parametro un metodo de la interfaz facade esa funcion  luego se
  //va a ejecutar como forwardedCall
  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedCall,
  ) async* {
    //Creo un objeto para representar el resultado del call a la interfaz
    Either<AuthFailure, Unit> failureOrSuccess;
    //valido pass y mail directamente desde el estado
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    //si son validos..
    if (isEmailValid && isPasswordValid) {
      //Modifico el estado para que se vea la progress bar
      //reseteo el estado de la autenticacion
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      //llamo a la funcion que me pasaron como parametro (tiene que ser de la)
      //interfaz facade
      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }
    //Actualizo el estado para apagar la barra de progreso..
    //mostrar un error si es que lo hay
    //y el optionOf me setea en authFailureOrSuccessOption el valor presente en
    //failureOrSuccess
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
