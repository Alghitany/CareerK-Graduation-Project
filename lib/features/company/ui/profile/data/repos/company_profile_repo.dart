import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../models/company_profile_models/company_profile_response_body.dart';

class CompanyProfileRepo {
  final ApiService _apiService;

  CompanyProfileRepo(this._apiService);

  Future<ApiResult<CompanyProfileResponseBody>> getCompanyProfile() async {
    try {
      final response = await _apiService.getCompanyProfile();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
