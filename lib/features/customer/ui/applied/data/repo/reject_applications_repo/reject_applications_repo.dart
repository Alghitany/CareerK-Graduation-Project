import 'package:carrerk/features/customer/ui/applied/data/model/reject_applications_model/reject_applications_request_model.dart';

import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../../model/reject_applications_model/reject_application_response.dart';

class RejectApplicationsRepo {
  final ApiService _apiService;

  RejectApplicationsRepo(this._apiService);

  Future<ApiResult<RejectApplicationResponse>> rejectApplication({
    required String applicationId,
    required RejectApplicationsRequestModel request,
  }) async {
    try {
      final response = await _apiService.rejectApplication(
        applicationId,
        request.toJson(),
      );

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
