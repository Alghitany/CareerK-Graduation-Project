import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_service.dart';
import '../model/search_courses_response_body.dart';

class SearchCoursesRepo {
  final ApiService _apiService;

  SearchCoursesRepo(this._apiService);

  Future<ApiResult<List<SearchCoursesResponseBody>>> searchCourses(String query) async {
    try {
      final response = await _apiService.searchCourses(query);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
