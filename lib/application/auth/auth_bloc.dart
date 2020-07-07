import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:DDD_firebase_framework/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';
//este es el estado de auth de la app

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade);

  @override
  AuthState get initialState => const AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    //mapeo contra todos los eventos posibles... esto se puede hacer porque
    //los eventos son una union de clases (freezed)
    //El yield es como un retun pero sin salir de la funcion
    yield* event.map(
        //Evento para chequear el estado de auth...
        authCheckRequested: (e) async* {
      final userOption = await _authFacade.getSignedInUser();
      yield userOption.fold(
        () => const AuthState.unauthenticated(),
        (_) => const AuthState.authenticated(),
      );
    }, signedOut: (e) async* {
      await _authFacade.signOut();
      yield const AuthState.unauthenticated();
    });
  }
}
