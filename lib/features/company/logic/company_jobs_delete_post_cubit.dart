import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/company_jobs_delete_post_repo.dart';
import 'company_jobs_delete_post_state.dart';

class CompanyJobsDeletePostCubit extends Cubit<CompanyJobsDeletePostState> {
  final CompanyJobsDeletePostRepo _deleteRepo;

  CompanyJobsDeletePostCubit(this._deleteRepo)
      : super(const CompanyJobsDeletePostState.initial());

  Future<void> deleteJobPost(String jobId) async {
    emit(const CompanyJobsDeletePostState.deleteLoading());

    final result = await _deleteRepo.deleteJobPost(jobId: jobId);

    result.when(
      success: (data) {
        emit(CompanyJobsDeletePostState.deleteSuccess(data));
      },
      failure: (error) {
        emit(CompanyJobsDeletePostState.deleteError(
          error: error.apiErrorModel.message ?? 'Delete failed',
        ));
      },
    );
  }
}
