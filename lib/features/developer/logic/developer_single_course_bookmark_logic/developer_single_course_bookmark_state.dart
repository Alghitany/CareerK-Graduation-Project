import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../../data/models/developer_single_course_bookmark_models/developer_single_course_bookmark_response_model.dart';

part 'developer_single_course_bookmark_state.freezed.dart';

@freezed
class DeveloperSingleCourseBookmarkState
    with _$DeveloperSingleCourseBookmarkState {
  const factory DeveloperSingleCourseBookmarkState.initial() =
      _DeveloperSingleCourseBookmarkInitial;

  const factory DeveloperSingleCourseBookmarkState.loading() =
      DeveloperSingleCourseBookmarkLoading;

  const factory DeveloperSingleCourseBookmarkState.success(
    DeveloperSingleCourseBookmarkResponseModel responseModel,
  ) = DeveloperSingleCourseBookmarkSuccess;

  const factory DeveloperSingleCourseBookmarkState.error(
    ErrorHandler errorHandler,
  ) = DeveloperSingleCourseBookmarkError;
}
