import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_service.dart';
import '../models/developer_add_job_bookmark_models/developer_add_job_bookmark_request_body.dart';
import '../models/developer_add_job_bookmark_models/developer_add_job_bookmark_response.dart';

class DeveloperAddJobBookmarkRepo {
  final ApiService _apiService;

  DeveloperAddJobBookmarkRepo(this._apiService);

  Future<ApiResult<DeveloperAddJobBookmarkResponse>> addJobBookmark({
    required String jobId,
    required DeveloperAddJobBookmarkRequestBody body,
  }) async {
    try {
      final response = await _apiService.addJobBookmark(jobId, body);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
