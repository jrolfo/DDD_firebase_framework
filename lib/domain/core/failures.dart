//Este archivo contiene todos los faiulres posibles

import 'package:freezed_annotation/freezed_annotation.dart';

//Esto es para que freezed te genere el archivo que se llama como el part
part 'failures.freezed.dart';

//Clase que contiene los failures el with esta tomando un mixin
//que te genera freezed
@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  //Un factorty para cada tipo de error, estos son llamados desde value_validators
  //Value validators va a crar los objetos de error importados desde este archivo

  //Auth Failures
  const factory ValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    @required T failedValue,
  }) = ShortPassword<T>;

  //Notes failures
  const factory ValueFailure.exceedingLenght({
    @required T failedValue,
    @required int max,
  }) = ExceedingLenght<T>;

  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.multiline({
    @required T failedValue,
  }) = MultiLine<T>;

  const factory ValueFailure.listTooLong({
    @required T failedValue,
    @required int max,
  }) = ListTooLong<T>;
}
