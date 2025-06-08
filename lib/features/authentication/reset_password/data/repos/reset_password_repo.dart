import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_service.dart';
import '../models/reset_password_request_body.dart';
import '../models/reset_password_response.dart';

class ResetPasswordRepo {
  final ApiService _apiService;

  ResetPasswordRepo(this._apiService);

  Future<ApiResult<ResetPasswordResponse>> resetPassword(
      ResetPasswordRequestBody resetPasswordRequestBody) async {
    try {
      final response =
      await _apiService.resetPassword(resetPasswordRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
