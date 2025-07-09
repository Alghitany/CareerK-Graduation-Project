import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../models/main_page_related_courses/developer_courses_main_page_related_courses_response_body.dart';

class DeveloperCoursesMainPageRelatedCoursesRepo {
  final ApiService _apiService;

  DeveloperCoursesMainPageRelatedCoursesRepo(this._apiService);

  Future<ApiResult<List<DeveloperCoursesMainPageRelatedCoursesResponseBody>>>
      getRelatedCourses() async {
    try {
      final response = await _apiService.getDeveloperRelatedCourses();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
