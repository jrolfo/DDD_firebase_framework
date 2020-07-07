import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:DDD_firebase_framework/domain/notes/i_note_repository.dart';
import 'package:DDD_firebase_framework/domain/notes/note_failure.dart';
import 'package:DDD_firebase_framework/domain/notes/note.dart';
import 'package:DDD_firebase_framework/infrastructure/core/firestore_helpers.dart';
import 'package:DDD_firebase_framework/infrastructure/notes/note_dtos.dart';
import 'package:rxdart/rxdart.dart';

//Esta anotacion con mayúscula lo que hace es...
//registrar este codigo como INoteRepository entocnes desde el bloc cuando lo inyectamos con final INoteRepository te trae este codigo directamente...  a la clase "inyecyada" le hace falta la anotacion  @injectable
@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  final Firestore _firestore;

  NoteRepository(this._firestore);

  //hay que hacer los metodos async* para que se aun constructor de algo... aca me falta estudio...
  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchAll() async* {
    //Every user will have it's own collection  of notes.
    //users/{user ID}/notes/{note ID}/fields and todo
    final userDoc = await _firestore.userDocument();
    //el yield es como un return pero de Strams el * es yield each... estudiar...
    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots() //No se porue pueven venir varios snapshots...
        //Esto sería un foreach
        .map(
          //el mapeo devuelve un right osea el KtList
          (snapshot) => right<NoteFailure, KtList<Note>>(
            snapshot.documents
                //mapeo los documentos
                //genial conversion usando los data transfer objects
                .map((doc) => NoteDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        //funcion para evaluar los posibles errores esto es tremendo catch de una promesa de JS
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.insufficientPermissions());
      } else {
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted() async* {
    final userDoc = await _firestore.userDocument();

    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.documents
              .map((doc) => NoteDto.fromFirestore(doc).toDomain()),
        )
        .map(
          (notes) => right<NoteFailure, KtList<Note>>(
            notes
                .where((note) =>
                    note.todos.getOrCrash().any((todoItem) => !todoItem.done))
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.insufficientPermissions());
      } else {
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<NoteFailure, Unit>> create(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);
      await userDoc.noteCollection
          .document(noteDto.id)
          .setData(noteDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.insufficientPermissions());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteId = note.id.getOrCrash();
      await userDoc.noteCollection.document(noteId).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const NoteFailure.unableToUpdate());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);
      await userDoc.noteCollection
          .document(noteDto.id)
          .updateData(noteDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const NoteFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const NoteFailure.unableToUpdate());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }
}
