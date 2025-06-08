import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_service.dart';
import '../model/verify_code_request_body.dart';
import '../model/verify_code_response.dart';

class VerifyCodeRepo {
  final ApiService _apiService;

  VerifyCodeRepo(this._apiService);

  Future<ApiResult<VerifyCodeResponse>> verifyCode(
      VerifyCodeRequestBody verifyCodeRequestBody) async {
    try {
      final response = await _apiService.verifyCode(verifyCodeRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
