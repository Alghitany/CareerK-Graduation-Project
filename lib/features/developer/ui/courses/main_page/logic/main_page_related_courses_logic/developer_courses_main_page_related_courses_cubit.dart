import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/developer_courses_main_page_related_courses_repo.dart';
import 'developer_courses_main_page_related_courses_state.dart';

class DeveloperCoursesMainPageRelatedCoursesCubit
    extends Cubit<DeveloperCoursesMainPageRelatedCoursesState> {
  final DeveloperCoursesMainPageRelatedCoursesRepo _repo;

  DeveloperCoursesMainPageRelatedCoursesCubit(this._repo)
      : super(const DeveloperCoursesMainPageRelatedCoursesState.initial());

  Future<void> getRelatedCourses() async {
    emit(const DeveloperCoursesMainPageRelatedCoursesState.loading());

    final response = await _repo.getRelatedCourses();

    response.when(
      success: (courses) {
        emit(DeveloperCoursesMainPageRelatedCoursesState.success(courses));
      },
      failure: (error) {
        emit(DeveloperCoursesMainPageRelatedCoursesState.error(
            error: error.apiErrorModel.message ?? "Failed to load"));
      },
    );
  }
}
