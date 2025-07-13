import 'package:carrerk/features/customer/profile/data/model/customer_jobs_delete_post/customer_jobs_delete_post_response.dart';

import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';

class CustomerJobsDeletePostRepo {
  final ApiService _apiService;

  CustomerJobsDeletePostRepo(this._apiService);

  Future<ApiResult<CustomerJobsDeletePostResponse>> deleteJobPost({
    required String jobId,
  }) async {
    try {
      final response = await _apiService.deleteCustomerJobPost(jobId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
