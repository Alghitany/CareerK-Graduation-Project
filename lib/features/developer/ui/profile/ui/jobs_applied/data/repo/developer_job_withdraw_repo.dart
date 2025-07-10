import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../models/job_withdraw/developer_job_withdraw_response_body.dart';

class DeveloperJobWithdrawRepo {
  final ApiService _service;

  DeveloperJobWithdrawRepo(this._service);

  Future<ApiResult<DeveloperJobWithdrawResponseBody>> withdrawJobApplication(
      String applicationId) async {
    try {
      final response = await _service.deleteJobApplication(applicationId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
