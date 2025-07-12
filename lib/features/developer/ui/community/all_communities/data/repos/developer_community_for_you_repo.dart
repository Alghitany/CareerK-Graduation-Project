import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../models/for_you_models/developer_community_for_you_response_body.dart';

class DeveloperCommunityForYouRepo {
  final ApiService _apiService;

  DeveloperCommunityForYouRepo(this._apiService);

  Future<ApiResult<DeveloperCommunityForYouResponseBody>>
      getCommunitiesForYou() async {
    try {
      final response = await _apiService.getDeveloperCommunityForYou();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
