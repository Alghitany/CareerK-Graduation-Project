import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_service.dart';
import '../models/developer_single_job_bookmark_models/developer_single_job_bookmark_response_model.dart';

class DeveloperSingleJobBookmarkRepo {
  final ApiService _apiService;

  DeveloperSingleJobBookmarkRepo(this._apiService);

  Future<ApiResult<DeveloperSingleJobBookmarkResponseModel>> bookmarkJob({
    required String jobId,
  }) async {
    try {
      final response = await _apiService.bookmarkJob(jobId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
