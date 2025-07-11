import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../models/main_page_roadmaps_models/developer_courses_main_page_roadmaps_response_model.dart';

class DeveloperCoursesMainPageRoadmapsRepo {
  final ApiService _apiService;

  DeveloperCoursesMainPageRoadmapsRepo(this._apiService);

  Future<ApiResult<List<DeveloperCoursesMainPageRoadmapsResponseModel>>>
      getDeveloperCoursesMainPageRoadmaps() async {
    try {
      final response = await _apiService.getDeveloperCoursesMainPageRoadmaps();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
