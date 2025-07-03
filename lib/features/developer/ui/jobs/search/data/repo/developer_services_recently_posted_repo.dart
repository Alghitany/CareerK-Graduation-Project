import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';

import '../../../../../../../core/networking/api_service.dart';
import '../models/developer_services_recently_posted_models/developer_services_recently_posted_response_body.dart';

class DeveloperServicesRecentlyPostedRepo {
  final ApiService _service;

  DeveloperServicesRecentlyPostedRepo(this._service);

  Future<ApiResult<List<DeveloperServicesRecentlyPostedResponseBody>>>
      getRecentlyPostedServices() async {
    try {
      final response = await _service.getDeveloperRecentlyPostedServices();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
