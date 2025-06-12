import 'package:carrerk/core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_service.dart';
import '../model/job_details_response.dart';

class JobsDetailsRepo {
  final ApiService _apiService;

  JobsDetailsRepo(this._apiService);

  Future<ApiResult<JobDetailsResponse>> getJobDetails(String jobId) async {
    try {
      final response = await _apiService.getSingleJobPost(jobId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
