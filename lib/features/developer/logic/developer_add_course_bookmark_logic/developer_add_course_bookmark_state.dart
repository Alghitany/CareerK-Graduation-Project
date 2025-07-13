import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../../data/models/developer_add_course_bookmark_models/developer_add_course_bookmark_response.dart';

part 'developer_add_course_bookmark_state.freezed.dart';

@freezed
class DeveloperAddCourseBookmarkState with _$DeveloperAddCourseBookmarkState {
  const factory DeveloperAddCourseBookmarkState.initial() = _Initial;

  const factory DeveloperAddCourseBookmarkState.loading() =
      DeveloperAddCourseBookmarkLoading;

  const factory DeveloperAddCourseBookmarkState.success(
    DeveloperAddCourseBookmarkResponse response,
  ) = DeveloperAddCourseBookmarkSuccess;

  const factory DeveloperAddCourseBookmarkState.error(
    ErrorHandler errorHandler,
  ) = DeveloperAddCourseBookmarkError;
}
