import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/specific_course_lectures_repo.dart';
import 'specific_course_lectures_state.dart';

class SpecificCourseLecturesCubit extends Cubit<SpecificCourseLecturesState> {
  final SpecificCourseLecturesRepo _repo;

  SpecificCourseLecturesCubit(this._repo)
      : super(const SpecificCourseLecturesState.initial());

  Future<void> getSpecificCourseLectures(String courseId) async {
    emit(const SpecificCourseLecturesState.loading());

    final response = await _repo.getSpecificCourseLectures(courseId);

    response.when(
      success: (data) {
        emit(SpecificCourseLecturesState.success(data));
      },
      failure: (errorHandler) {
        emit(SpecificCourseLecturesState.error(errorHandler));
      },
    );
  }
}
