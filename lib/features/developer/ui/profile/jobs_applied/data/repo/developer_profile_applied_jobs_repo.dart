import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';

import '../../../../../../../core/networking/api_service.dart';
import '../models/developer_profile_applied_jobs_response_body.dart';

class DeveloperProfileAppliedJobsRepo {
  final ApiService _service;

  DeveloperProfileAppliedJobsRepo(this._service);

  Future<ApiResult<DeveloperProfileAppliedJobsResponseBody>>
      getAppliedJobs() async {
    try {
      final response = await _service.getDeveloperProfileAppliedJobs();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
