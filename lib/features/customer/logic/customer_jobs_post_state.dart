import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_jobs_post_state.freezed.dart';

@freezed
class CustomerJobsPostState<T> with _$CustomerJobsPostState<T> {
  const factory CustomerJobsPostState.initial() = _Initial;

  const factory CustomerJobsPostState.loading() = Loading;

  const factory CustomerJobsPostState.success(T data) = Success<T>;

  const factory CustomerJobsPostState.error({required String error}) = Error;
}
