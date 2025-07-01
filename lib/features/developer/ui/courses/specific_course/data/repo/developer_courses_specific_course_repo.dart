import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../models/developer_courses_specific_course_response_body.dart';

class DeveloperCoursesSpecificCourseRepo {
  final ApiService _apiService;

  DeveloperCoursesSpecificCourseRepo(this._apiService);

  Future<ApiResult<DeveloperCoursesSpecificCourseResponseBody>>
      getDeveloperCourseHeader(String courseId) async {
    try {
      final response = await _apiService.getCourseHeader(courseId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
