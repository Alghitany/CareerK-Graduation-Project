import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/specific_course_overview_repo.dart';
import 'specific_course_overview_state.dart';

class SpecificCourseOverviewCubit extends Cubit<SpecificCourseOverviewState> {
  final SpecificCourseOverviewRepo _repo;

  SpecificCourseOverviewCubit(this._repo)
      : super(const SpecificCourseOverviewState.initial());

  Future<void> getSpecificCourseOverview(String courseId) async {
    emit(const SpecificCourseOverviewState.loading());

    final response = await _repo.getSpecificCourseOverview(courseId);

    response.when(
      success: (data) {
        emit(SpecificCourseOverviewState.success(data));
      },
      failure: (errorHandler) {
        emit(SpecificCourseOverviewState.error(errorHandler));
      },
    );
  }
}
