import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_service.dart';
import '../models/company_jobs_post_request_body.dart';
import '../models/company_jobs_post_response.dart';

class CompanyJobsPostRepo {
  final ApiService _apiService;

  CompanyJobsPostRepo(this._apiService);

  Future<ApiResult<CompanyJobsPostResponse>> postJob(
      CompanyJobsPostRequestBody requestBody) async {
    try {
      final response = await _apiService.companyJobsPost(requestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
