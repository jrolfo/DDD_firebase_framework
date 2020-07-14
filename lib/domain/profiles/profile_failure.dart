import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_failure.freezed.dart';

//Los failures que pueden tener las notes...
@freezed
abstract class ProfileFailure with _$ProfileFailure {
  const factory ProfileFailure.unexpected() = _Unexpected;
  const factory ProfileFailure.unableToUpdate() = _UnableToUpdate;
  const factory ProfileFailure.requiresRecentLogin() = _RequiresRecentLogin;
  const factory ProfileFailure.insufficientPermissions() =
      _InsufficientPermissions;
  const factory ProfileFailure.profileNotFound() = _ProfileNotFound;
}
