import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../model/company_home_see_details_response_body.dart';

class CompanyHomeSeeDetailsRepo {
  final ApiService _apiService;

  CompanyHomeSeeDetailsRepo(this._apiService);

  Future<ApiResult<CompanyHomeSeeDetailsResponseBody>> getCompanyHomeSeeDetails(
      String applicationId) async {
    try {
      final response =
          await _apiService.getCompanyHomeSeeDetails(applicationId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
