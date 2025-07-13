import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_profile_edit_state.freezed.dart';

@freezed
class CustomerProfileEditState<T> with _$CustomerProfileEditState<T> {
  const factory CustomerProfileEditState.initial() = _Initial;

  const factory CustomerProfileEditState.profileEditLoading() =
      ProfileEditLoading;

  const factory CustomerProfileEditState.profileEditSuccess(T data) =
      ProfileEditSuccess<T>;

  const factory CustomerProfileEditState.profileEditError({
    required String error,
  }) = ProfileEditError;
}
