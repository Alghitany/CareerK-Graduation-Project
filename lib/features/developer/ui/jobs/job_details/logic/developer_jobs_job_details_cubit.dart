import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/repo/developer_jobs_job_details_repo.dart';
import 'developer_jobs_job_details_state.dart';

class DeveloperJobsJobDetailsCubit extends Cubit<DeveloperJobsJobDetailsState> {
  final DeveloperJobsJobDetailsRepo _repo;

  DeveloperJobsJobDetailsCubit(this._repo)
      : super(const DeveloperJobsJobDetailsState.initial());

  Future<void> fetchJobDetails(String jobId) async {
    emit(const DeveloperJobsJobDetailsState.jobDetailsLoading());

    final response = await _repo.getJobDetails(jobId);

    response.when(
      success: (data) => emit(DeveloperJobsJobDetailsState.jobDetailsSuccess(data)),
      failure: (error) => emit(
        DeveloperJobsJobDetailsState.jobDetailsError(
          error: error.apiErrorModel.message ?? 'Failed to load job details',
        ),
      ),
    );
  }
}
