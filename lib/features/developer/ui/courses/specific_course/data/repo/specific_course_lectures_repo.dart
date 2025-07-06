import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../model/specific_course_lectures_models/specific_course_lectures_response_body.dart';

class SpecificCourseLecturesRepo {
  final ApiService _apiService;

  SpecificCourseLecturesRepo(this._apiService);

  Future<ApiResult<List<SpecificCourseLecturesResponseBody>>>
      getSpecificCourseLectures(String courseId) async {
    try {
      final response = await _apiService.getSpecificCourseLectures(courseId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
