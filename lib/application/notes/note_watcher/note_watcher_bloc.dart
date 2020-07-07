import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:DDD_firebase_framework/domain/notes/i_note_repository.dart';
import 'package:DDD_firebase_framework/domain/notes/note.dart';
import 'package:DDD_firebase_framework/domain/notes/note_failure.dart';

part 'note_watcher_event.dart';
part 'note_watcher_state.dart';
part 'note_watcher_bloc.freezed.dart';

//Bloc para manejar la subscripcion a la base de datos
@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  //interfaz al repositorio
  final INoteRepository _noteRepository;
  //constructor por defecto
  NoteWatcherBloc(this._noteRepository);
  //declaro una StramSubscription de tipo either...
  StreamSubscription<Either<NoteFailure, KtList<Note>>> _noteStreamSubscription;

  @override
  NoteWatcherState get initialState => const NoteWatcherState.initial();

  //mapeo los 3 eventos posibles
  @override
  Stream<NoteWatcherState> mapEventToState(
    NoteWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        //seteo estado a load in progress
        yield const NoteWatcherState.loadInProgress();
        //cancelo una subscripcion previa
        await _noteStreamSubscription?.cancel();
        //creo la nueva subscripcion y triggereo el evento fantasma... notesReceived como un callback del listen de watchall
        _noteStreamSubscription = _noteRepository.watchAll().listen(
            (failureOrNotes) =>
                add(NoteWatcherEvent.notesReceived(failureOrNotes)));
      },
      watchUncompletedStarted: (e) async* {
        yield const NoteWatcherState.loadInProgress();
        await _noteStreamSubscription?.cancel();
        _noteStreamSubscription = _noteRepository.watchUncompleted().listen(
            (failureOrNotes) =>
                add(NoteWatcherEvent.notesReceived(failureOrNotes)));
      },
      notesReceived: (e) async* {
        //aca si en el evento fantasma le hago un fold al resultado para saber como anduvo
        yield e.failureOrNotes.fold(
          (f) => NoteWatcherState.loadFailure(f),
          (notes) => NoteWatcherState.loadSuccess(notes),
        );
      },
    );
  }

  //metodo para matar la subscripcion
  @override
  Future<void> close() async {
    await _noteStreamSubscription?.cancel();
    return super.close();
  }
}
