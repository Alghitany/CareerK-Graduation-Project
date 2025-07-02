import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';

import '../../../../../../../core/networking/api_service.dart';
import '../models/developer_jobs_recently_posted_models/developer_jobs_recently_posted_response_body.dart';

class DeveloperJobsRecentlyPostedRepo {
  final ApiService _service;

  DeveloperJobsRecentlyPostedRepo(this._service);

  Future<ApiResult<List<DeveloperJobsRecentlyPostedResponseBody>>>
      getRecentlyPostedJobs() async {
    try {
      final response = await _service.getDeveloperRecentlyPostedJobs();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
