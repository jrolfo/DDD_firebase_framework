import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:DDD_firebase_framework/domain/auth/user.dart';

import 'package:DDD_firebase_framework/domain/auth/auth_failure.dart';
import 'package:DDD_firebase_framework/domain/auth/i_auth_facade.dart';
import 'package:DDD_firebase_framework/domain/auth/value_objects.dart';
import './firebase_user_mapper.dart';

//Clase para autenticar usando firebase La anotacion @LazySingleton registra este codigo con el nombre  IauthFacade... entonces cada vez que lo instanciamos nos devuelve un singleton asi evitamos miles y miles de instancias de facade auth
@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  //Creamos 2 objetos que necesitamos para autenticar ambos vienen del paquete de firebase
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  //constructor
  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );
  //Metodo para obtener un objeto tipo User
  @override
  Future<Option<User>> getSignedInUser() => _firebaseAuth
      .currentUser()
      .then((firebaseUser) => optionOf(firebaseUser?.toDomain()));

  //Overrides de las funciones heredadas de la interfaz
  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    //Obtengo los 2 valores usando getOrCrash
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();

    try {
      //Llamo al metodo
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressString,
        password: passwordString,
      );
      //si no exploto nada retorno void... ponele... right es bueno
      return right(unit);
    } on PlatformException catch (e) {
      //Si hubo alguna excepcion la estudio...
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        //Devuelvo una de las uniones... freezed!
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr.trim(),
        password: passwordStr,
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithgoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.getCredential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((r) => right(unit));
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  //metodo par hacer sign out
  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);
}
