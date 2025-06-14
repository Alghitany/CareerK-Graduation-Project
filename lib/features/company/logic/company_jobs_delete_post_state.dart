import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_jobs_delete_post_state.freezed.dart';

@freezed
class CompanyJobsDeletePostState<T> with _$CompanyJobsDeletePostState<T> {
  const factory CompanyJobsDeletePostState.initial() = _Initial;

  const factory CompanyJobsDeletePostState.deleteLoading() = DeleteLoading;

  const factory CompanyJobsDeletePostState.deleteSuccess(T data) =
      DeleteSuccess<T>;

  const factory CompanyJobsDeletePostState.deleteError({
    required String error,
  }) = DeleteError;
}
