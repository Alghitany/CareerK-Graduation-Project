import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/developer_single_course_bookmark_repo.dart';
import 'developer_single_course_bookmark_state.dart';

class DeveloperSingleCourseBookmarkCubit
    extends Cubit<DeveloperSingleCourseBookmarkState> {
  final DeveloperSingleCourseBookmarkRepo _repo;

  DeveloperSingleCourseBookmarkCubit(this._repo)
      : super(const DeveloperSingleCourseBookmarkState.initial());

  void bookmarkCourse(String courseId) async {
    emit(const DeveloperSingleCourseBookmarkState.loading());
    final response = await _repo.bookmarkCourse(courseId: courseId);

    response.when(
      success: (bookmarkResponse) {
        emit(DeveloperSingleCourseBookmarkState.success(bookmarkResponse));
      },
      failure: (errorHandler) {
        emit(DeveloperSingleCourseBookmarkState.error(errorHandler));
      },
    );
  }
}
