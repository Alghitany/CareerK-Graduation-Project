import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../model/company_home_see_resume_response_body.dart';

class CompanyHomeSeeResumeRepo {
  final ApiService _apiService;

  CompanyHomeSeeResumeRepo(this._apiService);

  Future<ApiResult<CompanyHomeSeeResumeResponseBody>> getCompanyHomeSeeResume(
      String developerId) async {
    try {
      final response = await _apiService.getCompanyHomeSeeResume(developerId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
