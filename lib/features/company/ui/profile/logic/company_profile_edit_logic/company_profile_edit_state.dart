import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_profile_edit_state.freezed.dart';

@freezed
class CompanyProfileEditState<T> with _$CompanyProfileEditState<T> {
  const factory CompanyProfileEditState.initial() = _Initial;

  const factory CompanyProfileEditState.profileEditLoading() =
      ProfileEditLoading;

  const factory CompanyProfileEditState.profileEditSuccess(T data) =
      ProfileEditSuccess<T>;

  const factory CompanyProfileEditState.profileEditError({
    required String error,
  }) = ProfileEditError;
}
