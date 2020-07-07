//Esta es una clase abstracta que se usa basicamente para que los otro value
//objects hereden de ella los 3 override

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:DDD_firebase_framework/domain/core/failures.dart';
import 'package:uuid/uuid.dart';

import 'errors.dart';

@immutable
abstract class ValueObject<T> {
  //constructor simple
  const ValueObject();
  //Variable either con tipos genericos esta solo para que los metodos compilen
  //Luego se hace un override con los tipos correctos en las clases hijas
  Either<ValueFailure<T>, T> get value;

  //Metodo para obtener el valor del campo o explotar
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  bool isValid() => value.isRight();

  //Se agrega el getter failureOrUnit en  la super clase...
  //Basicamente examina el value si hay algo en el lado izquierdo devuelve el valueFailure sino void
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  //Sobrecarga de operador == es para que comparen el valor del objeto y no la
  //direccion de memoria
  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  //al pedo
  @override
  int get hashCode => value.hashCode;
  //override de to string
  @override
  String toString() => 'Value($value)';
}

//Clase que contiene el id del usuario
class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  //Factory que te genera un Id random
  factory UniqueId() {
    return UniqueId._(
      right(Uuid().v1()),
    );
  }
  //factory que te genera un objeto con el id que le paso como parm
  factory UniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return UniqueId._(
      right(uniqueId),
    );
  }
  //constructor privado
  const UniqueId._(this.value);
}
