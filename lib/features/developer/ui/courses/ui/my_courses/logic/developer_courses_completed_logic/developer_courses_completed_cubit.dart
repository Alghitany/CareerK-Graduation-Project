import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/developer_courses_completed_repo.dart';
import 'developer_courses_completed_state.dart';

class DeveloperCoursesCompletedCubit
    extends Cubit<DeveloperCoursesCompletedState> {
  final DeveloperCoursesCompletedRepo _repo;

  DeveloperCoursesCompletedCubit(this._repo)
      : super(const DeveloperCoursesCompletedState.initial());

  Future<void> getCompletedCourses() async {
    emit(const DeveloperCoursesCompletedState.loading());

    final response = await _repo.getCompletedCourses();

    response.when(
      success: (courses) {
        emit(DeveloperCoursesCompletedState.success(courses));
      },
      failure: (error) {
        emit(DeveloperCoursesCompletedState.error(
          error: error.apiErrorModel.message ?? "Failed to load",
        ));
      },
    );
  }
}
