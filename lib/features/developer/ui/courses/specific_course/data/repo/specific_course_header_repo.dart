import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../model/specific_course_header_models/specific_course_header_response_body.dart';

class SpecificCourseHeaderRepo {
  final ApiService _apiService;

  SpecificCourseHeaderRepo(this._apiService);

  Future<ApiResult<SpecificCourseHeaderResponseBody>> getSpecificCourseHeader(
      String courseId) async {
    try {
      final response = await _apiService.getSpecificCourseHeader(courseId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
