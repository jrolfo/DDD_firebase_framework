import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:DDD_firebase_framework/domain/notes/note.dart';
import 'package:DDD_firebase_framework/domain/notes/note_failure.dart';

//Interfaz que detalla lo que puede hacer un Note Repository
abstract class INoteRepository {
  // watch notes
  // watch uncompleted notes
  // Note CUD  La R son los watch

  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted();
  Future<Either<NoteFailure, Unit>> create(Note note);
  Future<Either<NoteFailure, Unit>> update(Note note);
  Future<Either<NoteFailure, Unit>> delete(Note note);
}
