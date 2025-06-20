import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_error_handler.dart';
import '../data/model/search_courses_response_body.dart';

part 'search_courses_state.freezed.dart';

@freezed
class SearchCoursesState with _$SearchCoursesState {
  const factory SearchCoursesState.initial() = _Initial;

  const factory SearchCoursesState.loading() = SearchCoursesLoading;

  const factory SearchCoursesState.success(
    List<SearchCoursesResponseBody> courses,
  ) = SearchCoursesSuccess;

  const factory SearchCoursesState.error(
    ErrorHandler errorHandler,
  ) = SearchCoursesError;
}
