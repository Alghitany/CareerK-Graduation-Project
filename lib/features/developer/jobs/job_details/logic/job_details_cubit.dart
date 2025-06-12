import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/model/job_details_response.dart';
import '../data/repo/job_details_repo.dart';
import 'job_details_state.dart';

class JobDetailsCubit extends Cubit<JobDetailsState> {
  final JobsDetailsRepo _jobsDetailsRepo;

  JobDetailsCubit(this._jobsDetailsRepo) : super(const JobDetailsState.initial());

  JobDetailsResponse? jobDetails;

  void getJobDetails(String jobId) async {
    emit(const JobDetailsState.loading());

    final response = await _jobsDetailsRepo.getJobDetails(jobId);

    response.when(
      success: (data) {
        jobDetails = data;
        emit(JobDetailsState.success(data));
      },
      failure: (error) {
        emit(JobDetailsState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
