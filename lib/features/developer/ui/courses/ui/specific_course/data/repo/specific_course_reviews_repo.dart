import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../model/specific_course_reviews_models/specific_course_reviews_response_body.dart';

class SpecificCourseReviewsRepo {
  final ApiService _apiService;

  SpecificCourseReviewsRepo(this._apiService);

  Future<ApiResult<SpecificCourseReviewsResponseBody>> getSpecificCourseReviews(
      String courseId) async {
    try {
      final response = await _apiService.getSpecificCourseReviews(courseId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
