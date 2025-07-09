import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/company_profile_all_jobs_posts_models/company_profile_all_job_posts_response_body.dart';

part 'company_profile_all_job_posts_state.freezed.dart';

@freezed
class CompanyProfileAllJobPostsState with _$CompanyProfileAllJobPostsState {
  const factory CompanyProfileAllJobPostsState.initial() =
      _CompanyProfileAllJobPostsInitial;

  const factory CompanyProfileAllJobPostsState.loading() =
      CompanyProfileAllJobPostsLoading;

  const factory CompanyProfileAllJobPostsState.success(
    CompanyProfileAllJobPostsResponseBody response,
  ) = CompanyProfileAllJobPostsSuccess;

  const factory CompanyProfileAllJobPostsState.error({
    required String error,
  }) = CompanyProfileAllJobPostsError;
}
