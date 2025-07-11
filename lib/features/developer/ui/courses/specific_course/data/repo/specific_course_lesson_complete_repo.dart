import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../model/specific_course_lesson_complete_models/specific_course_lesson_complete_request_body.dart';
import '../model/specific_course_lesson_complete_models/specific_course_lesson_complete_response.dart';

class SpecificCourseLessonCompleteRepo {
  final ApiService _apiService;

  SpecificCourseLessonCompleteRepo(this._apiService);

  Future<ApiResult<SpecificCourseLessonCompleteResponse>> completeLesson(
      SpecificCourseLessonCompleteRequestBody requestBody) async {
    try {
      final response = await _apiService.completeLesson(requestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
