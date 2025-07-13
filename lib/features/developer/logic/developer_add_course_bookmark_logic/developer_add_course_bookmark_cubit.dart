import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/developer_add_course_bookmark_models/developer_add_course_bookmark_request_body.dart';
import '../../data/repo/developer_add_course_bookmark_repo.dart';
import 'developer_add_course_bookmark_state.dart';

class DeveloperAddCourseBookmarkCubit
    extends Cubit<DeveloperAddCourseBookmarkState> {
  final DeveloperAddCourseBookmarkRepo _repo;

  DeveloperAddCourseBookmarkCubit(this._repo)
      : super(const DeveloperAddCourseBookmarkState.initial());

  Future<void> addCourseBookmark({
    required String courseId,
    required DeveloperAddCourseBookmarkRequestBody body,
  }) async {
    emit(const DeveloperAddCourseBookmarkState.loading());
    final response =
        await _repo.addCourseBookmark(courseId: courseId, body: body);

    response.when(
      success: (bookmarkResponse) {
        emit(DeveloperAddCourseBookmarkState.success(bookmarkResponse));
      },
      failure: (errorHandler) {
        emit(DeveloperAddCourseBookmarkState.error(errorHandler));
      },
    );
  }
}
