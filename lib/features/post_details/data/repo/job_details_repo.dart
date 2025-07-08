import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';

import '../../../../../../../core/networking/api_service.dart';
import '../models/post_details_models/job_details_response_body.dart';

class JobDetailsRepo {
  final ApiService _service;

  JobDetailsRepo(this._service);

  Future<ApiResult<JobDetailsResponseBody>> getJobDetails(String jobId) async {
    try {
      final response = await _service.jobDetails(jobId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
