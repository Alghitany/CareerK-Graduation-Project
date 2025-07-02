import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/developer_single_job_bookmark_repo.dart';
import 'developer_single_job_bookmark_state.dart';

class DeveloperSingleJobBookmarkCubit
    extends Cubit<DeveloperSingleJobBookmarkState> {
  final DeveloperSingleJobBookmarkRepo _repo;

  DeveloperSingleJobBookmarkCubit(this._repo)
      : super(const DeveloperSingleJobBookmarkState.initial());

  void bookmarkJob(String jobId) async {
    emit(const DeveloperSingleJobBookmarkState.loading());
    final response = await _repo.bookmarkJob(jobId: jobId);

    response.when(
      success: (bookmarkResponse) {
        emit(DeveloperSingleJobBookmarkState.success(bookmarkResponse));
      },
      failure: (errorHandler) {
        emit(DeveloperSingleJobBookmarkState.error(errorHandler));
      },
    );
  }
}
