import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_service.dart';
import '../models/developer_single_course_bookmark_models/developer_single_course_bookmark_response_model.dart';

class DeveloperSingleCourseBookmarkRepo {
  final ApiService _apiService;

  DeveloperSingleCourseBookmarkRepo(this._apiService);

  Future<ApiResult<DeveloperSingleCourseBookmarkResponseModel>> bookmarkCourse({
    required String courseId,
  }) async {
    try {
      final response = await _apiService.bookmarkCourse(courseId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
