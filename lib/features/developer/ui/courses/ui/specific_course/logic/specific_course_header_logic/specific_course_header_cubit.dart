import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/specific_course_header_repo.dart';
import 'specific_course_header_state.dart';

class SpecificCourseHeaderCubit extends Cubit<SpecificCourseHeaderState> {
  final SpecificCourseHeaderRepo _repo;

  SpecificCourseHeaderCubit(this._repo)
      : super(const SpecificCourseHeaderState.initial());

  Future<void> getSpecificCourseHeader(String courseId) async {
    emit(const SpecificCourseHeaderState.loading());

    final response = await _repo.getSpecificCourseHeader(courseId);

    response.when(
      success: (data) {
        emit(SpecificCourseHeaderState.success(data));
      },
      failure: (errorHandler) {
        emit(SpecificCourseHeaderState.error(errorHandler));
      },
    );
  }
}
