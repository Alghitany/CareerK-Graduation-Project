import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../models/developer_courses_roadmaps_response_body.dart';

class DeveloperCoursesRoadmapsRepo {
  final ApiService _apiService;

  DeveloperCoursesRoadmapsRepo(this._apiService);

  Future<ApiResult<List<DeveloperCoursesRoadmapsResponseBody>>>
      getDeveloperCoursesRoadmaps() async {
    try {
      final response = await _apiService.getDeveloperCoursesRoadmaps();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
