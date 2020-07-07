import 'package:firebase_auth/firebase_auth.dart';
import 'package:DDD_firebase_framework/domain/auth/user.dart';
import 'package:DDD_firebase_framework/domain/core/value_objects.dart';

//esto es un mapper... una extension... que permite agregarle un metodo a una clase de un paquete importado
//Es como una especie de override de FirebaseUser que permite por polimorfismo devolver un User
extension FirebaseUserDomainX on FirebaseUser {
  User toDomain() {
    return User(id: UniqueId.fromUniqueString(uid));
  }
}
