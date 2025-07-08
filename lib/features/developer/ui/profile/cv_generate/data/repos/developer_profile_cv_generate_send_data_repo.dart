import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../models/send_data_models/developer_profile_cv_generate_send_data_request_body.dart';
import '../models/send_data_models/developer_profile_cv_generate_send_data_response.dart';

class DeveloperProfileCVGenerateSendDataRepo {
  final ApiService _apiService;

  DeveloperProfileCVGenerateSendDataRepo(this._apiService);

  Future<ApiResult<DeveloperProfileCVGenerateSendDataResponse>> sendCVData({
    required String sessionId,
    required DeveloperProfileCVGenerateSendDataRequestBody requestBody,
  }) async {
    try {
      final response =
          await _apiService.sendDeveloperCVData(sessionId, requestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
