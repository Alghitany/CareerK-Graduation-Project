import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';

import '../../../../../../../core/networking/api_service.dart';
import '../models/developer_jobs_job_details_response_body.dart';

class DeveloperJobsJobDetailsRepo {
  final ApiService _service;

  DeveloperJobsJobDetailsRepo(this._service);

  Future<ApiResult<DeveloperJobsJobDetailsResponseBody>> getJobDetails(
      String jobId) async {
    try {
      final response = await _service.getDeveloperJobDetails(jobId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
