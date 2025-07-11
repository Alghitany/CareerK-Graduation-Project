import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/specific_course_lesson_complete_models/specific_course_lesson_complete_request_body.dart';
import '../../data/repo/specific_course_lesson_complete_repo.dart';
import 'specific_course_lesson_complete_state.dart';

class SpecificCourseLessonCompleteCubit
    extends Cubit<SpecificCourseLessonCompleteState> {
  final SpecificCourseLessonCompleteRepo _repo;

  SpecificCourseLessonCompleteCubit(this._repo)
      : super(const SpecificCourseLessonCompleteState.initial());

  Future<void> completeLesson(
    SpecificCourseLessonCompleteRequestBody requestBody,
  ) async {
    emit(const SpecificCourseLessonCompleteState.loading());

    final response = await _repo.completeLesson(requestBody);

    response.when(
      success: (data) {
        emit(SpecificCourseLessonCompleteState.success(data));
      },
      failure: (error) {
        emit(SpecificCourseLessonCompleteState.error(
          error: error.apiErrorModel.message ?? "Something Went Wrong",
        ));
      },
    );
  }
}
