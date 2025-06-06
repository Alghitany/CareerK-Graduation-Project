import 'package:freezed_annotation/freezed_annotation.dart';

part 'developer_sign_up_state.freezed.dart';

@freezed
class DeveloperSignupState<T> with _$DeveloperSignupState<T> {
  const factory DeveloperSignupState.initial() = _Initial;

  const factory DeveloperSignupState.developerSignupLoading() = DeveloperSignupLoading;
  const factory DeveloperSignupState.developerSignupSuccess(T data) = DeveloperSignupSuccess<T>;
  const factory DeveloperSignupState.developerSignupError({required String error}) = DeveloperSignupError;
}