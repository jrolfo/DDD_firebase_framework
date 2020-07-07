import 'package:dartz/dartz.dart';
import 'package:DDD_firebase_framework/domain/core/failures.dart';
import 'package:DDD_firebase_framework/domain/core/value_objects.dart';
import 'package:DDD_firebase_framework/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item.freezed.dart';

//Implementa en vez de usar with con el mixing porque le estamos agregando cosas a la clase
@freezed
abstract class TodoItem implements _$TodoItem {
  const TodoItem._();

  const factory TodoItem({
    @required UniqueId id,
    @required TodoName name,
    @required bool done,
  }) = _TodoItem;

  factory TodoItem.empty() => TodoItem(
        id: UniqueId(),
        name: TodoName(''),
        done: false,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold((l) => some(l), (_) => none());
  }
}
