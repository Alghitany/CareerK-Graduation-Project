import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_service.dart';
import '../models/update_application_status_model/company_update_application_status_request_body.dart';
import '../models/update_application_status_model/company_update_application_status_response.dart';

class CompanyUpdateApplicationStatusRepo {
  final ApiService _apiService;

  CompanyUpdateApplicationStatusRepo(this._apiService);

  Future<ApiResult<CompanyUpdateApplicationStatusResponseBody>>
      updateApplicationStatus(
    String applicationId,
    CompanyUpdateStatusRequestBody requestBody,
  ) async {
    try {
      final response = await _apiService.updateApplicationStatus(
        applicationId,
        requestBody,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
