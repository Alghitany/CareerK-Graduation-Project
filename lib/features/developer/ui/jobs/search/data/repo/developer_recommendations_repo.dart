import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';

import '../../../../../../../core/networking/api_service.dart';
import '../models/developer_recommendtions_models/developer_recommendations_response_body.dart';

class DeveloperRecommendationsRepo {
  final ApiService _service;

  DeveloperRecommendationsRepo(this._service);

  Future<ApiResult<DeveloperRecommendationsResponseBody>>
      getDeveloperRecommendations() async {
    try {
      final response = await _service.getDeveloperRecommendations();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
