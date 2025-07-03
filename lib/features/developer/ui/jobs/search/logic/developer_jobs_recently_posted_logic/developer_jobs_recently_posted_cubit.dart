import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/developer_jobs_recently_posted_repo.dart';
import 'developer_jobs_recently_posted_state.dart';

class DeveloperJobsRecentlyPostedCubit
    extends Cubit<DeveloperJobsRecentlyPostedState> {
  final DeveloperJobsRecentlyPostedRepo _repo;

  DeveloperJobsRecentlyPostedCubit(this._repo)
      : super(const DeveloperJobsRecentlyPostedState.initial());

  Future<void> fetchRecentlyPostedJobs() async {
    emit(const DeveloperJobsRecentlyPostedState.recentlyPostedLoading());

    final response = await _repo.getRecentlyPostedJobs();

    response.when(
      success: (data) => emit(
        DeveloperJobsRecentlyPostedState.recentlyPostedSuccess(data),
      ),
      failure: (error) => emit(
        DeveloperJobsRecentlyPostedState.recentlyPostedError(
          error: error.apiErrorModel.message ??
              'Failed to load recently posted jobs',
        ),
      ),
    );
  }
}
