import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../models/developer_profile_courses_bookmarked_models/developer_profile_courses_bookmarked_response_body.dart';

class DeveloperProfileCoursesBookmarkedRepo {
  final ApiService _apiService;

  DeveloperProfileCoursesBookmarkedRepo(this._apiService);

  Future<ApiResult<List<DeveloperProfileCoursesBookmarkedResponseBody>>>
      getBookmarkedCourses() async {
    try {
      final response = await _apiService.getDeveloperProfileBookmarkedCourses();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
