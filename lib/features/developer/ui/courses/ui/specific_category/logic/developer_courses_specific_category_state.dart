import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/networking/api_error_handler.dart';
import '../data/models/developer_courses_specific_category_response_body.dart';

part 'developer_courses_specific_category_state.freezed.dart';

@freezed
class DeveloperCoursesSpecificCategoryState
    with _$DeveloperCoursesSpecificCategoryState {
  const factory DeveloperCoursesSpecificCategoryState.initial() = _Initial;

  const factory DeveloperCoursesSpecificCategoryState.loading() =
      DeveloperCoursesSpecificCategoryLoading;

  const factory DeveloperCoursesSpecificCategoryState.success(
    DeveloperCoursesSpecificCategoryResponseBody data,
  ) = DeveloperCoursesSpecificCategorySuccess;

  const factory DeveloperCoursesSpecificCategoryState.error(
    ErrorHandler errorHandler,
  ) = DeveloperCoursesSpecificCategoryError;
}
