import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/developer_profile_jobs_bookmarked_repo.dart';
import 'developer_profile_jobs_bookmarked_state.dart';

class DeveloperProfileJobsBookmarkedCubit
    extends Cubit<DeveloperProfileJobsBookmarkedState> {
  final DeveloperProfileJobsBookmarkedRepo _repo;

  DeveloperProfileJobsBookmarkedCubit(this._repo)
      : super(const DeveloperProfileJobsBookmarkedState.initial());

  Future<void> getBookmarkedJobs() async {
    emit(const DeveloperProfileJobsBookmarkedState.loading());

    final response = await _repo.getBookmarkedJobs();

    response.when(
      success: (data) {
        // data is expected to be List<DeveloperProfileJobsBookmarkedResponseBody>
        emit(DeveloperProfileJobsBookmarkedState.success(data));
      },
      failure: (errorHandler) {
        emit(DeveloperProfileJobsBookmarkedState.error(
          error: errorHandler.apiErrorModel.message,
        ));
      },
    );
  }
}
