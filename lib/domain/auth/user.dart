import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:DDD_firebase_framework/domain/core/value_objects.dart';

part 'user.freezed.dart';

//Entity user... por ahora lo unico que tiene es el UniqueId
@freezed
abstract class User with _$User {
  const factory User({
    @required UniqueId id,
  }) = _User;
}
