import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../models/by_interest_models/developer_community_by_interest_response_body.dart';

class DeveloperCommunityByInterestRepo {
  final ApiService _apiService;

  DeveloperCommunityByInterestRepo(this._apiService);

  Future<ApiResult<DeveloperCommunityByInterestResponseBody>>
      getCommunitiesByInterest(String tag) async {
    try {
      final response = await _apiService.getDeveloperCommunitiesByInterest(tag);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
