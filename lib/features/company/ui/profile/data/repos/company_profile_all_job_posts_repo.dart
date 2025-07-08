import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../models/company_profile_all_jobs_posts_models/company_profile_all_job_posts_response_body.dart';

class CompanyProfileAllJobPostsRepo {
  final ApiService _apiService;

  CompanyProfileAllJobPostsRepo(this._apiService);

  Future<ApiResult<CompanyProfileAllJobPostsResponseBody>>
      getCompanyAllJobPosts() async {
    try {
      final response = await _apiService.getCompanyProfileAllJobPosts();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
