import 'package:carrerk/features/customer/ui/applied/data/model/secound_screen_model/application_details_response_body.dart';

import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';

class ApplicationDetailsRepo {
  final ApiService _apiService;

  ApplicationDetailsRepo(this._apiService);

  Future<ApiResult<ApplicationDetailsResponseBody>> getApplicationDetails(
      String applicationId) async {
    try {
      final response = await _apiService.getApplicationDetails(applicationId);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
