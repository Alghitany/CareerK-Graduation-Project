import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';

import '../../../../../../../core/networking/api_service.dart';
import '../model/developer_jobs_service_details_response_body.dart';

class DeveloperJobsServiceDetailsRepo {
  final ApiService _service;

  DeveloperJobsServiceDetailsRepo(this._service);

  Future<ApiResult<DeveloperJobsServiceDetailsResponseBody>> getServiceDetails(
      String serviceId) async {
    try {
      final response = await _service.getDeveloperServiceDetails(serviceId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
