import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/developer_add_job_bookmark_models/developer_add_job_bookmark_request_body.dart';
import '../../data/repo/developer_add_job_bookmark_repo.dart';
import 'developer_add_job_bookmark_state.dart';

class DeveloperAddJobBookmarkCubit extends Cubit<DeveloperAddJobBookmarkState> {
  final DeveloperAddJobBookmarkRepo _repo;

  DeveloperAddJobBookmarkCubit(this._repo)
      : super(const DeveloperAddJobBookmarkState.initial());

  Future<void> addJobBookmark({
    required String jobId,
    required DeveloperAddJobBookmarkRequestBody body,
  }) async {
    emit(const DeveloperAddJobBookmarkState.loading());
    final response = await _repo.addJobBookmark(jobId: jobId, body: body);

    response.when(
      success: (bookmarkResponse) {
        emit(DeveloperAddJobBookmarkState.success(bookmarkResponse));
      },
      failure: (errorHandler) {
        emit(DeveloperAddJobBookmarkState.error(errorHandler));
      },
    );
  }
}
