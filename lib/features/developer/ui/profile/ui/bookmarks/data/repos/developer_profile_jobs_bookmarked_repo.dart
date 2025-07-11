import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../models/developer_profile_jobs_bookmarked_models/developer_profile_jobs_bookmarked_response_body.dart';

class DeveloperProfileJobsBookmarkedRepo {
  final ApiService _apiService;

  DeveloperProfileJobsBookmarkedRepo(this._apiService);

  Future<ApiResult<List<DeveloperProfileJobsBookmarkedResponseBody>>>
      getBookmarkedJobs() async {
    try {
      final response = await _apiService.getDeveloperJobBookmarks('job');
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
