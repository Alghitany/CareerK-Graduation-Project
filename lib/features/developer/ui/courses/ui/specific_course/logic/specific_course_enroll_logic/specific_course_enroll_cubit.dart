import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/specific_course_enroll_models/specific_course_enroll_request_body.dart';
import '../../data/repo/specific_course_enroll_repo.dart';
import 'specific_course_enroll_state.dart';

class SpecificCourseEnrollCubit extends Cubit<SpecificCourseEnrollState> {
  final SpecificCourseEnrollRepo _repo;

  SpecificCourseEnrollCubit(this._repo)
      : super(const SpecificCourseEnrollState.initial());

  Future<void> enrollInSpecificCourse(
    SpecificCourseEnrollRequestBody requestBody,
    String courseId,
  ) async {
    emit(const SpecificCourseEnrollState.loading());

    final response = await _repo.enrollInSpecificCourse(requestBody, courseId);

    response.when(
      success: (data) {
        emit(SpecificCourseEnrollState.success(data));
      },
      failure: (error) {
        emit(SpecificCourseEnrollState.error(
            error: error.apiErrorModel.message ?? "Something Went Wrong"));
      },
    );
  }
}
