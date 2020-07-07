import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:DDD_firebase_framework/domain/core/failures.dart';
import 'package:DDD_firebase_framework/domain/core/value_objects.dart';
import 'package:DDD_firebase_framework/domain/notes/value_objects.dart';
import 'package:DDD_firebase_framework/domain/notes/todo_item.dart';

part 'note.freezed.dart';

//Note entity... contiene todos los valores del objeto note
//Como le voy a agregar el get failureOption tengo que implementar en vez de usar el
//with y agregar el const Note._();
@freezed
abstract class Note implements _$Note {
  //constructor privado
  const Note._();
  //factory que se usa para el freeze
  const factory Note({
    @required UniqueId id,
    @required NoteBody body,
    @required NoteColor color,
    @required List3<TodoItem> todos,
  }) = _Note;

  //Factory para crear una note vacia
  factory Note.empty() => Note(
        id: UniqueId(),
        body: NoteBody(''),
        color: NoteColor(NoteColor.predefinedColors[0]),
        todos: List3(emptyList()),
      );

  //Es lo mismo que esto:::: IMPORTANTE!!!!
/*
  factory Note.empty() {
    return Note(
      id: UniqueId(),
      body: NoteBody(''),
      color: NoteColor(NoteColor.predefinedColors[0]),
      todos: List3(emptyList()),
    );
  }
*/

// campo que te devuelve una opcion de ValueFailure<Dynamic> no se bien el tema de dynamic...
//o none osea quee sta todo bien
  Option<ValueFailure<dynamic>> get failureOption {
    //va llamando campo por campo a los failureOrUnit de cada uno que devuelven un valuefailure o Unit(void)
    //Los va encadenando con andThen...
    return body.failureOrUnit
        .andThen(todos.failureOrUnit)
        .andThen(
          //aca empieza el bardo...
          //toma el value con el getOrCrash... seria parecido a hacerle un fold y tomar solo el lado derecho
          todos
              .getOrCrash()
              // Getting the failureOption from the TodoItem ENTITY - NOT a failureOrUnit from a VALUE OBJECT
              .map((todoItem) => todoItem.failureOption)
              .filter((o) => o.isSome())
              // If we can't get the 0th element, the list is empty. In such a case, it's valid.
              .getOrElse(0, (_) => none())
              .fold(() => right(unit), (f) => left(f)),
        )
        .fold((f) => some(f), (_) => none());
  }
}
