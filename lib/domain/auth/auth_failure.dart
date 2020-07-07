//Este archivo contiene todos los faiulres posibles del paquete auth

import 'package:freezed_annotation/freezed_annotation.dart';

//Esto es para que freezed te genere el archivo que se llama como el part
part 'auth_failure.freezed.dart';

//Clase que contiene los failures de auth el with esta tomando un mixin
//que te genera freezed
@freezed
abstract class AuthFailure with _$AuthFailure {
  //Un factorty para cada tipo de error, estos son llamados desde otros lados
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}
