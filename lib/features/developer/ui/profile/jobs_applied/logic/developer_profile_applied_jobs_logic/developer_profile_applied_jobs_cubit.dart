import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/developer_profile_applied_jobs_repo.dart';
import 'developer_profile_applied_jobs_state.dart';

class DeveloperProfileAppliedJobsCubit
    extends Cubit<DeveloperProfileAppliedJobsState> {
  final DeveloperProfileAppliedJobsRepo _repo;

  DeveloperProfileAppliedJobsCubit(this._repo)
      : super(const DeveloperProfileAppliedJobsState.initial());

  Future<void> fetchAppliedJobs() async {
    emit(const DeveloperProfileAppliedJobsState.loading());

    final response = await _repo.getAppliedJobs();

    response.when(
      success: (data) => emit(
        DeveloperProfileAppliedJobsState.success(data),
      ),
      failure: (error) => emit(
        DeveloperProfileAppliedJobsState.error(
          error: error.apiErrorModel.message ?? 'Failed to load applied jobs',
        ),
      ),
    );
  }
}
