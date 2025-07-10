import 'package:carrerk/features/customer/ui/applied/data/model/reject_applications_model/reject_application_response.dart';

import 'package:carrerk/features/customer/ui/applied/data/model/reject_applications_model/reject_applications_request_model.dart';

import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';

class RejectApplicationRepo {
  final ApiService _apiService;

  RejectApplicationRepo(this._apiService);

  /// Sends a reject request for a given application ID with a status payload.
  Future<ApiResult<RejectApplicationResponseBody>> rejectApplication({
    required String applicationId,
    required String status,
  }) async {
    try {
      final requestBody = RejectApplicationRequestBody(status: status);

      final response = await _apiService.rejectApplication(
        applicationId,
        requestBody,
      );

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
