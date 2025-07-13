import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/specific_course_reviews_repo.dart';
import 'specific_course_reviews_state.dart';

class SpecificCourseReviewsCubit extends Cubit<SpecificCourseReviewsState> {
  final SpecificCourseReviewsRepo _repo;

  SpecificCourseReviewsCubit(this._repo)
      : super(const SpecificCourseReviewsState.initial());

  Future<void> getSpecificCourseReviews(String courseId) async {
    emit(const SpecificCourseReviewsState.loading());

    final response = await _repo.getSpecificCourseReviews(courseId);

    response.when(
      success: (data) {
        emit(SpecificCourseReviewsState.success(data));
      },
      failure: (errorHandler) {
        emit(SpecificCourseReviewsState.error(errorHandler));
      },
    );
  }
}
