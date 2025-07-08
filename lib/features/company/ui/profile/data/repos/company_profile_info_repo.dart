import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../models/company_profile_info_models/company_profile_info_response_body.dart';

class CompanyProfileInfoRepo {
  final ApiService _apiService;

  CompanyProfileInfoRepo(this._apiService);

  Future<ApiResult<CompanyProfileInfoResponseBody>> getCompanyProfile() async {
    try {
      final response = await _apiService.getCompanyProfileInfo();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
