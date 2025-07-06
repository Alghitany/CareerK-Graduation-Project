import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_service.dart';
import '../models/customer_jobs_post_request_body.dart';
import '../models/customer_jobs_post_response.dart';

class CustomerJobsPostRepo {
  final ApiService _apiService;

  CustomerJobsPostRepo(this._apiService);

  Future<ApiResult<CustomerJobsPostResponse>> postJob(
      CustomerJobsPostRequestBody requestBody) async {
    try {
      final response = await _apiService.customerJobsPost(requestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
