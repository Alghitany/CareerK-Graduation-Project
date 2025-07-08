import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../model/company_jobs_delete_post_response.dart';

class CompanyJobsDeletePostRepo {
  final ApiService _apiService;

  CompanyJobsDeletePostRepo(this._apiService);

  Future<ApiResult<CompanyJobsDeletePostResponse>> deleteJobPost({
    required String jobId,
  }) async {
    try {
      final response = await _apiService.deleteCompanyJobPost(jobId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
