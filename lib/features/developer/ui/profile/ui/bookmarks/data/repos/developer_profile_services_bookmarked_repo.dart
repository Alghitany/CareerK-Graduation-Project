import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../models/developer_profile_services_bookmarked_models/developer_profile_services_bookmarked_response_body.dart';

class DeveloperProfileServicesBookmarkedRepo {
  final ApiService _apiService;

  DeveloperProfileServicesBookmarkedRepo(this._apiService);

  Future<ApiResult<List<DeveloperProfileServicesBookmarkedResponseBody>>>
      getBookmarkedServices() async {
    try {
      final response =
          await _apiService.getDeveloperBookmarkedServices("service");
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
