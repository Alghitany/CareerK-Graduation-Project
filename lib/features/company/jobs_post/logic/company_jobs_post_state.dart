import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_jobs_post_state.freezed.dart';

@freezed
class CompanyJobsPostState<T> with _$CompanyJobsPostState<T> {
  const factory CompanyJobsPostState.initial() = _Initial;

  const factory CompanyJobsPostState.loading() = Loading;

  const factory CompanyJobsPostState.success(T data) = Success<T>;

  const factory CompanyJobsPostState.error({required String error}) = Error;
}
