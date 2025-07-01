import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/developer_courses_specific_course_repo.dart';
import 'developer_courses_specific_course_state.dart';

class DeveloperCoursesSpecificCourseCubit
    extends Cubit<DeveloperCoursesSpecificCourseState> {
  final DeveloperCoursesSpecificCourseRepo _repo;

  DeveloperCoursesSpecificCourseCubit(this._repo)
      : super(const DeveloperCoursesSpecificCourseState.initial());

  void getDeveloperCourseHeader(String courseId) async {
    emit(const DeveloperCoursesSpecificCourseState.loading());
    final response = await _repo.getDeveloperCourseHeader(courseId);

    response.when(
      success: (course) {
        emit(DeveloperCoursesSpecificCourseState.success(course));
      },
      failure: (errorHandler) {
        emit(DeveloperCoursesSpecificCourseState.error(errorHandler));
      },
    );
  }
}
