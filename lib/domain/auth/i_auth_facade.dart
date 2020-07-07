//clase abstracta que simula ser una interfaz...
//tiene 3 metodos (ver el tema del Future...)
//Representa las acciones que se pueden hacer desde el modulo Aut...

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:DDD_firebase_framework/domain/auth/auth_failure.dart';
import 'package:DDD_firebase_framework/domain/auth/value_objects.dart';
import 'package:DDD_firebase_framework/domain/auth/user.dart';

abstract class IAuthFacade {
  //cada una de las 3 funciones retornan un Either<error del modulo auth... o
  //Unit que seria como un void
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithgoogle();
  //2 metodos nuevos en la interfaz para obtener el usuario logueado y sign out
  Future<Option<User>> getSignedInUser();
  Future<void> signOut();
}
