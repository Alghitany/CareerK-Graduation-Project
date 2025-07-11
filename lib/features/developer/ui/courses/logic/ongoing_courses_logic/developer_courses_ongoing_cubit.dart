import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/developer_courses_ongoing_repo.dart';
import 'developer_courses_ongoing_state.dart';

class DeveloperCoursesOngoingCubit extends Cubit<DeveloperCoursesOngoingState> {
  final DeveloperCoursesOngoingRepo _repo;

  DeveloperCoursesOngoingCubit(this._repo)
      : super(const DeveloperCoursesOngoingState.initial());

  Future<void> getOngoingCourses() async {
    emit(const DeveloperCoursesOngoingState.loading());

    final response = await _repo.getOngoingCourses();

    response.when(
      success: (courses) {
        emit(DeveloperCoursesOngoingState.success(courses));
      },
      failure: (error) {
        emit(DeveloperCoursesOngoingState.error(
            error: error.apiErrorModel.message ?? "Failed to load"));
      },
    );
  }
}
