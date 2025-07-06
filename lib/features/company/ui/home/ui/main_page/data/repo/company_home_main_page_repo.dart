import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../model/company_home_main_page_response_body.dart';

class CompanyHomeMainPageRepo {
  final ApiService _apiService;

  CompanyHomeMainPageRepo(this._apiService);

  Future<ApiResult<CompanyHomeMainPageResponseBody>>
      getCompanyHomeMainPage() async {
    try {
      final response = await _apiService.getCompanyHomeMainPage();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
