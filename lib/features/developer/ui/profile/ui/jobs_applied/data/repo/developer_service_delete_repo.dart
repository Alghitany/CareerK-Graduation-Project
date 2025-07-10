import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../models/service_delete/developer_service_delete_response_body.dart';

class DeveloperServiceDeleteRepo {
  final ApiService _service;

  DeveloperServiceDeleteRepo(this._service);

  Future<ApiResult<DeveloperProfileAppliedServicesResponseBody>>
      deleteServiceApplication(String applicationId) async {
    try {
      final response = await _service.deleteServiceApplication(applicationId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
