import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_jobs_delete_post_state.freezed.dart';

@freezed
class CustomerJobsDeletePostState<T> with _$CustomerJobsDeletePostState<T> {
  const factory CustomerJobsDeletePostState.initial() = _Initial;

  const factory CustomerJobsDeletePostState.deleteLoading() = DeleteLoading;

  const factory CustomerJobsDeletePostState.deleteSuccess(T data) =
      DeleteSuccess<T>;

  const factory CustomerJobsDeletePostState.deleteError({
    required String error,
  }) = DeleteError;
}
