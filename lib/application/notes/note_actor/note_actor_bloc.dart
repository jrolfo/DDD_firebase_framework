import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:DDD_firebase_framework/domain/notes/i_note_repository.dart';
import 'package:DDD_firebase_framework/domain/notes/note.dart';
import 'package:DDD_firebase_framework/domain/notes/note_failure.dart';

part 'note_actor_event.dart';
part 'note_actor_state.dart';
part 'note_actor_bloc.freezed.dart';

//bloc para controlar lo que pasa con las notas que es basicamente pocos estados y un solo evento por eso no hago mapping del evento en el yield
@injectable
class NoteActorBloc extends Bloc<NoteActorEvent, NoteActorState> {
  final INoteRepository _noteRepository;

  NoteActorBloc(this._noteRepository);

  @override
  NoteActorState get initialState => const NoteActorState.initial();

  @override
  Stream<NoteActorState> mapEventToState(
    NoteActorEvent event,
  ) async* {
    //apenas recibo un evento seteo el estado en action in progress
    yield const NoteActorState.actionInProgress();
    //llamo a eliminar del repositorio
    final possibleFailure = await _noteRepository.delete(event.note);
    //luego del await examino el possibleFailure con un fold si viene algo por la izquierda hubo un error sino seteo el estado en success
    yield possibleFailure.fold(
      (l) => NoteActorState.deleteFailure(l),
      (_) => const NoteActorState.deleteSuccess(),
    );
  }
}
