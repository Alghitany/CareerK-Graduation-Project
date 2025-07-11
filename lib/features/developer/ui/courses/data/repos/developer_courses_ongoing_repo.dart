import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_service.dart';
import '../models/ongoing_courses/developer_courses_ongoing_response_body.dart';

class DeveloperCoursesOngoingRepo {
  final ApiService _apiService;

  DeveloperCoursesOngoingRepo(this._apiService);

  Future<ApiResult<List<DeveloperCoursesOngoingResponseBody>>>
      getOngoingCourses() async {
    try {
      final response = await _apiService.getDeveloperOngoingCourses();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
