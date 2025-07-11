import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_service.dart';
import '../models/related_courses/developer_courses_related_courses_response_body.dart';

class DeveloperCoursesRelatedCoursesRepo {
  final ApiService _apiService;

  DeveloperCoursesRelatedCoursesRepo(this._apiService);

  Future<ApiResult<List<DeveloperCoursesRelatedCoursesResponseBody>>>
      getRelatedCourses() async {
    try {
      final response = await _apiService.getDeveloperRelatedCourses();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
