import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_service.dart';
import '../models/developer_add_course_bookmark_models/developer_add_course_bookmark_request_body.dart';
import '../models/developer_add_course_bookmark_models/developer_add_course_bookmark_response.dart';

class DeveloperAddCourseBookmarkRepo {
  final ApiService _apiService;

  DeveloperAddCourseBookmarkRepo(this._apiService);

  Future<ApiResult<DeveloperAddCourseBookmarkResponse>> addCourseBookmark({
    required String courseId,
    required DeveloperAddCourseBookmarkRequestBody body,
  }) async {
    try {
      final response = await _apiService.addCourseBookmark(courseId, body);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
