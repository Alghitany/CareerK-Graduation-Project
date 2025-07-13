import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../models/community_tags_models/community_tags_response_body.dart';

class DeveloperCommunityTagsRepo {
  final ApiService _apiService;

  DeveloperCommunityTagsRepo(this._apiService);

  Future<ApiResult<CommunityTagsResponseBody>> getCommunityTags() async {
    try {
      final response = await _apiService.getDeveloperCommunityTags();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
