import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../data/model/specific_course_reviews_models/specific_course_reviews_response_body.dart';

part 'specific_course_reviews_state.freezed.dart';

@freezed
class SpecificCourseReviewsState with _$SpecificCourseReviewsState {
  const factory SpecificCourseReviewsState.initial() = _Initial;

  const factory SpecificCourseReviewsState.loading() =
      SpecificCourseReviewsLoading;

  const factory SpecificCourseReviewsState.success(
    SpecificCourseReviewsResponseBody data,
  ) = SpecificCourseReviewsSuccess;

  const factory SpecificCourseReviewsState.error(
    ErrorHandler errorHandler,
  ) = SpecificCourseReviewsError;
}
