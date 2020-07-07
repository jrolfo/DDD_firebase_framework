import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:DDD_firebase_framework/domain/core/value_objects.dart';
import 'package:DDD_firebase_framework/domain/notes/note.dart';
import 'package:DDD_firebase_framework/domain/notes/todo_item.dart';
import 'package:DDD_firebase_framework/domain/notes/value_objects.dart';
import 'package:kt_dart/kt.dart';

part 'note_dtos.freezed.dart';

part 'note_dtos.g.dart';

@freezed
abstract class NoteDto implements _$NoteDto {
  const NoteDto._();

  const factory NoteDto({
    @JsonKey(ignore: true) String id,
    @required String body,
    @required int color,
    @required List<TodoItemDto> todos,
    //Esta gronchada de annotation es porque el serializer de JSOn no puede hacer nada con un campo tipo Field Value
    @required @ServerTimeStampConverter() FieldValue serverTimeStamp,
  }) = _NoteDto;
  //Constructor para recibir un objeto desde el domniio, agarra el objeto del dominio y te lo transforma en uno que contiene todos tipos primitivos
  factory NoteDto.fromDomain(Note note) {
    return NoteDto(
      id: note.id.getOrCrash(),
      body: note.body.getOrCrash(),
      color: note.color.getOrCrash().value,
      //Aca tenemos una conversion anidada... el map agarra todos los elementos de la lsita y luego les corre la conversion para TodoItemDto.
      todos: note.todos
          .getOrCrash()
          .map(
            (todoItem) => TodoItemDto.fromDomain(todoItem),
          )
          .asList(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }
  //Metodo toDomain agarra los campos del objeto y los transforma en algo que el domain entiende
  Note toDomain() {
    return Note(
      id: UniqueId.fromUniqueString(id),
      body: NoteBody(body),
      color: NoteColor(Color(color)),
      todos: List3(todos.map((dto) => dto.toDomain()).toImmutableList()),
    );
  }

  //factory from JSON
  factory NoteDto.fromJson(Map<String, dynamic> json) =>
      _$NoteDtoFromJson(json);
  //factory from firestore el copy with es para agregarle el id
  factory NoteDto.fromFirestore(DocumentSnapshot doc) {
    return NoteDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

//gronchada para poder serializar el fieldValue
class ServerTimeStampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimeStampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

//Clase que representa el data transfer object para un Todo Item
@freezed
abstract class TodoItemDto implements _$TodoItemDto {
  //constructor necesario para freeze ya que no uso mixin (pq agrego un metodo que no es factory)
  const TodoItemDto._();
  //factory fijate que son todas variables primitivas
  const factory TodoItemDto({
    @required String id,
    @required String name,
    @required bool done,
  }) = _TodoItemDto;

  //Otro factory que usa el factory... el getOrCrash() me devuelve el valor primitivo.
  factory TodoItemDto.fromDomain(TodoItem todoItem) {
    return TodoItemDto(
      id: todoItem.id.getOrCrash(),
      name: todoItem.name.getOrCrash(),
      done: todoItem.done,
    );
  }

  // Este metodo lo que hace es tomar un JSON y transformarlo al objeto que el domain espera
  TodoItem toDomain() {
    return TodoItem(
      id: UniqueId.fromUniqueString(id),
      name: TodoName(name),
      done: done,
    );
  }

  factory TodoItemDto.fromJson(Map<String, dynamic> json) =>
      _$TodoItemDtoFromJson(json);
}
