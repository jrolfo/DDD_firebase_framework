//En este archivo van todas las validaciones se crea una funcion por cada
//validacion de cualquiera de los objetos

import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:DDD_firebase_framework/domain/core/failures.dart';

//Todas las  validaciones son de tipo either osea una union... del lado izquierdo
//siempre va ValueFailure con generic String y del lado derecho va el tipo del input

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  // Maybe not the most robust way of email validation but it's good enough
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    //Si paso la validacion se devuelve el lado derecho
    return right(input);
  } else {
    //Si no paso la validacion se devuelve un objeto tipo ValueFailure del error
    //especifico
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

/* Para crear un nuevo campo primero tengo que crear los errores que pueda tener
Luego tengo que crear los validadores que lancen esos errores por el left
*/
Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLenght(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (!input.contains('\n')) {
    return right(input);
  } else {
    return left(ValueFailure.multiline(failedValue: input));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLenght<T>(
    KtList<T> input, int maxLength) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(
      failedValue: input,
      max: maxLength,
    ));
  }
}
