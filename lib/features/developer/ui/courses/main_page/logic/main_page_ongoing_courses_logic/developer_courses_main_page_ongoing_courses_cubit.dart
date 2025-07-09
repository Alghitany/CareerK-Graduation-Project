import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/developer_courses_main_page_ongoing_courses_repo.dart';
import 'developer_courses_main_page_ongoing_courses_state.dart';

class DeveloperCoursesMainPageOngoingCoursesCubit
    extends Cubit<DeveloperCoursesMainPageOngoingCoursesState> {
  final DeveloperCoursesMainPageOngoingCoursesRepo _repo;

  DeveloperCoursesMainPageOngoingCoursesCubit(this._repo)
      : super(const DeveloperCoursesMainPageOngoingCoursesState.initial());

  Future<void> getOngoingCourses() async {
    emit(const DeveloperCoursesMainPageOngoingCoursesState.loading());

    final response = await _repo.getOngoingCourses();

    response.when(
      success: (courses) {
        emit(DeveloperCoursesMainPageOngoingCoursesState.success(courses));
      },
      failure: (error) {
        emit(DeveloperCoursesMainPageOngoingCoursesState.error(
            error: error.apiErrorModel.message ?? "Failed to load"));
      },
    );
  }
}
