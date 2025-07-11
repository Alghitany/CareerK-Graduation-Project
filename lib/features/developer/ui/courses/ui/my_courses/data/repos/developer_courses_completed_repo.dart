import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../models/developer_courses_completed_response_body.dart';

class DeveloperCoursesCompletedRepo {
  final ApiService _apiService;

  DeveloperCoursesCompletedRepo(this._apiService);

  Future<ApiResult<List<DeveloperCoursesCompletedResponseBody>>>
      getCompletedCourses() async {
    try {
      final response =
          await _apiService.getDeveloperCompletedCourses('completed');
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
