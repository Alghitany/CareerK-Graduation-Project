import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../model/specific_course_overview_models/specific_course_overview_response_body.dart';

class SpecificCourseOverviewRepo {
  final ApiService _apiService;

  SpecificCourseOverviewRepo(this._apiService);

  Future<ApiResult<SpecificCourseOverviewResponseBody>>
      getSpecificCourseOverview(String courseId) async {
    try {
      final response = await _apiService.getSpecificCourseOverview(courseId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
