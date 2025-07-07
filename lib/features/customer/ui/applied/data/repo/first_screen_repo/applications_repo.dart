import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../../model/first_screen_model/applications_response_body.dart';

class ApplicationsRepo {
  final ApiService _apiService;

  ApplicationsRepo(this._apiService);

  /// Fetches the applications for a given service post ID.
  Future<ApiResult<ApplicationsResponseBody>> getApplications(
      String servicePostId) async {
    try {
      final response =
          await _apiService.getCustomerAppliedScreen(servicePostId);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
