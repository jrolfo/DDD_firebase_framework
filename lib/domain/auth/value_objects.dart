/* En este archivo van todos los objectos que holdean valor en el sistema
para cada objecto crear una clase */

import 'package:dartz/dartz.dart';
import 'package:DDD_firebase_framework/domain/core/value_objects.dart';
import 'package:DDD_firebase_framework/domain/core/failures.dart';
import 'package:DDD_firebase_framework/domain/core/value_validators.dart';

//Clase que representa el campo Email extiende de ValueObject (que esta en core)
class EmailAddress extends ValueObject<String> {
  //Esta variable es una union osea...
  //es una variable que puede contener un objeto del tipo ValueFailure o un string
  @override
  final Either<ValueFailure<String>, String> value;

  //Factory que llama al constructor privado
  //(se hace asi para obligar a correr el assert y el validate)
  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }
  //Constructor privado
  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }
  const Password._(this.value);
}

/*Ejemplo de como usar la clase
void f() {
  final emailbad = EmailAddress('pija');

  String emailText =
      emailbad.value.fold((l) => 'failure happened: $l', (r) => r);
}

*/
