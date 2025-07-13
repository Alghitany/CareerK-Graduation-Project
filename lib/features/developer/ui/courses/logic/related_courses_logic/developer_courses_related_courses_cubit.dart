import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/developer_courses_related_courses_repo.dart';
import 'developer_courses_related_courses_state.dart';

class DeveloperCoursesRelatedCoursesCubit
    extends Cubit<DeveloperCoursesRelatedCoursesState> {
  final DeveloperCoursesRelatedCoursesRepo _repo;

  DeveloperCoursesRelatedCoursesCubit(this._repo)
      : super(const DeveloperCoursesRelatedCoursesState.initial());

  Future<void> getRelatedCourses() async {
    emit(const DeveloperCoursesRelatedCoursesState.loading());

    final response = await _repo.getRelatedCourses();

    response.when(
      success: (courses) {
        emit(DeveloperCoursesRelatedCoursesState.success(courses));
      },
      failure: (error) {
        emit(DeveloperCoursesRelatedCoursesState.error(
            error: error.apiErrorModel.message ?? "Failed to load"));
      },
    );
  }
}
