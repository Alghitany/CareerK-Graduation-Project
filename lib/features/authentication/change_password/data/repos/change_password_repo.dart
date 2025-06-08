import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_service.dart';
import '../models/change_password_request_body.dart';
import '../models/change_password_response.dart';

class ChangePasswordRepo {
  final ApiService _apiService;

  ChangePasswordRepo(this._apiService);

  Future<ApiResult<ChangePasswordResponse>> changePassword(
      ChangePasswordRequestBody changePasswordRequestBody) async {
    try {
      final response =
          await _apiService.changePassword(changePasswordRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
