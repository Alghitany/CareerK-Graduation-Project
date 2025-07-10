import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../models/generate_models/developer_profile_cv_generate_generated_request_body.dart';
import '../models/generate_models/developer_profile_cv_generate_generated_response.dart';

class DeveloperProfileCVGenerateGeneratedRepo {
  final ApiService _apiService;

  DeveloperProfileCVGenerateGeneratedRepo(this._apiService);

  Future<ApiResult<DeveloperProfileCVGenerateGeneratedResponse>> generateCV({
    required String sessionId,
    required DeveloperProfileCVGenerateGeneratedRequestBody requestBody,
  }) async {
    try {
      final response = await _apiService.generateCV(sessionId, requestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
