import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../models/developer_courses_specific_category_response_body.dart';

class DeveloperCoursesSpecificCategoryRepo {
  final ApiService _apiService;

  DeveloperCoursesSpecificCategoryRepo(this._apiService);

  Future<ApiResult<List<DeveloperCoursesSpecificCategoryResponseBody>>>
      getDeveloperCoursesSpecificCategory(String trackId) async {
    try {
      final response =
          await _apiService.getDeveloperCoursesSpecificCategory(trackId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
