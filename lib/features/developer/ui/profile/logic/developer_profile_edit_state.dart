import 'package:freezed_annotation/freezed_annotation.dart';

part 'developer_profile_edit_state.freezed.dart';

@freezed
class DeveloperProfileEditState<T> with _$DeveloperProfileEditState<T> {
  const factory DeveloperProfileEditState.initial() = _Initial;

  const factory DeveloperProfileEditState.editProfileLoading() =
      EditProfileLoading;

  const factory DeveloperProfileEditState.editProfileSuccess(T data) =
      EditProfileSuccess<T>;

  const factory DeveloperProfileEditState.editProfileError({
    required String error,
  }) = EditProfileError;
}
