import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../model/specific_course_enroll_models/specific_course_enroll_request_body.dart';
import '../model/specific_course_enroll_models/specific_course_enroll_response.dart';

class SpecificCourseEnrollRepo {
  final ApiService _apiService;

  SpecificCourseEnrollRepo(this._apiService);

  Future<ApiResult<SpecificCourseEnrollResponse>> enrollInSpecificCourse(
      SpecificCourseEnrollRequestBody requestBody, String courseId) async {
    try {
      final response =
          await _apiService.enrollInSpecificCourse(requestBody, courseId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
