import 'package:carrerk/core/networking/api_result.dart';

import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../models/developer_profile_settings_delete_cv/developer_profile_settings_delete_cv_request_body.dart';
import '../models/developer_profile_settings_delete_cv/developer_profile_settings_delete_cv_response.dart';

class DeveloperProfileSettingsDeleteCVRepo {
  final ApiService _apiService;

  DeveloperProfileSettingsDeleteCVRepo(this._apiService);

  Future<ApiResult<DeveloperProfileSettingsDeleteCVResponseBody>> deleteMyCV(
    DeveloperProfileSettingsDeleteCVRequestBody body,
  ) async {
    try {
      final response = await _apiService.deleteMyCV(body);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
