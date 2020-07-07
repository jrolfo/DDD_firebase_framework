part of 'note_watcher_bloc.dart';

@freezed
abstract class NoteWatcherState with _$NoteWatcherState {
  const factory NoteWatcherState.initial() = _Initial;
  const factory NoteWatcherState.loadInProgress() = LoadInProgress;
  const factory NoteWatcherState.loadSuccess(KtList<Note> notes) = LoadSucces;
  const factory NoteWatcherState.loadFailure(NoteFailure noteFailure) =
      LoadFailure;
}
