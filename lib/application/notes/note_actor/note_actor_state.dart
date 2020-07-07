part of 'note_actor_bloc.dart';

@freezed
//estados... inicial lo tienen todos... action in progress es el estado que ocurre mientras se esta ejecutando alguna operacion... delete failure es el estado que ocurre si existe un fallo y este si tiene un valor que es la falla misma y delete success es el estado una vez eliminada la nota todo bien
abstract class NoteActorState with _$NoteActorState {
  const factory NoteActorState.initial() = _Initial;
  const factory NoteActorState.actionInProgress() = _ActionInProgress;
  const factory NoteActorState.deleteFailure(NoteFailure noteFailure) =
      _DeleteFailure;
  const factory NoteActorState.deleteSuccess() = _DeleteSuccess;
}
