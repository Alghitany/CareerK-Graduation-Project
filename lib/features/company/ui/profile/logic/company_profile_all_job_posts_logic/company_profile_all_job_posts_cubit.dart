import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/company_profile_all_job_posts_repo.dart';
import 'company_profile_all_job_posts_state.dart';

class CompanyProfileAllJobPostsCubit
    extends Cubit<CompanyProfileAllJobPostsState> {
  final CompanyProfileAllJobPostsRepo _repo;

  CompanyProfileAllJobPostsCubit(this._repo)
      : super(const CompanyProfileAllJobPostsState.initial());

  void getCompanyAllJobPosts() async {
    emit(const CompanyProfileAllJobPostsState.loading());

    final response = await _repo.getCompanyAllJobPosts();

    response.when(
      success: (jobPosts) {
        emit(CompanyProfileAllJobPostsState.success(jobPosts));
      },
      failure: (error) {
        emit(CompanyProfileAllJobPostsState.error(
            error: error.apiErrorModel.message ?? 'Failed to load data'));
      },
    );
  }
}
