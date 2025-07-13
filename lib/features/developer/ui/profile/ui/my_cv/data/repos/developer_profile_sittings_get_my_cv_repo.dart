import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../models/developer_profile_settings_get_my_cv_models/developer_profile_settings_get_my_cv_response_body.dart';

class DeveloperProfileSettingsGetMyCVRepo {
  final ApiService _apiService;

  DeveloperProfileSettingsGetMyCVRepo(this._apiService);

  Future<ApiResult<DeveloperProfileSettingsGetMyCVResponseBody>>
      getMyCV() async {
    try {
      final response = await _apiService.getDeveloperMyCV();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
