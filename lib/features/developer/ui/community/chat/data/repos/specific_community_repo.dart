import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../models/specific_community_models/specific_community_response_body.dart';

class SpecificCommunityRepo {
  final ApiService _apiService;

  SpecificCommunityRepo(this._apiService);

  Future<ApiResult<SpecificCommunityResponseBody>> getSpecificCommunity(
      String groupId) async {
    try {
      final response = await _apiService.getDeveloperSpecificCommunity(groupId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
