import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../models/company_profile_applicants_number_models/company_profile_applicants_number_response_body.dart';

class CompanyProfileApplicantsNumberRepo {
  final ApiService _apiService;

  CompanyProfileApplicantsNumberRepo(this._apiService);

  Future<ApiResult<CompanyProfileApplicantsNumberResponseBody>>
      companyProfileGetApplicantsNumber() async {
    try {
      final response = await _apiService.companyProfileGetApplicantsNumber();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
