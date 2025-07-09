import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../models/main_page_ongoing_courses/developer_courses_main_page_ongoing_courses_response_body.dart';

class DeveloperCoursesMainPageOngoingCoursesRepo {
  final ApiService _apiService;

  DeveloperCoursesMainPageOngoingCoursesRepo(this._apiService);

  Future<ApiResult<List<DeveloperCoursesMainPageOngoingCoursesResponseBody>>>
      getOngoingCourses() async {
    try {
      final response = await _apiService.getDeveloperOngoingCourses();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
