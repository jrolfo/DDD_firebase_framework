import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_failure.freezed.dart';

//Los failures que pueden tener las notes... uno solo y unexpected.. alto dummy
@freezed
abstract class NoteFailure with _$NoteFailure {
  const factory NoteFailure.unexpected() = _Unexpected;
  const factory NoteFailure.unableToUpdate() = _UnableToUpdate;

  const factory NoteFailure.insufficientPermissions() =
      _InsufficientPermissions;
}
