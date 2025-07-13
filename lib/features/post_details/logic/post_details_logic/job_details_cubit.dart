import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/job_details_repo.dart';
import 'job_details_state.dart';

class JobDetailsCubit extends Cubit<JobDetailsState> {
  final JobDetailsRepo _repo;

  JobDetailsCubit(this._repo) : super(const JobDetailsState.initial());

  Future<void> fetchJobDetails(String jobId) async {
    emit(const JobDetailsState.jobDetailsLoading());

    final response = await _repo.getJobDetails(jobId);

    response.when(
      success: (data) => emit(JobDetailsState.jobDetailsSuccess(data)),
      failure: (error) => emit(
        JobDetailsState.jobDetailsError(
          error: error.apiErrorModel.message ?? 'Failed to load job details',
        ),
      ),
    );
  }
}
