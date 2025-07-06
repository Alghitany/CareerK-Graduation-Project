import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';

import '../../../../../../../core/networking/api_service.dart';
import '../models/developer_tags_home_main_page_models/developer_tags_home_main_page_response_body.dart';

class DeveloperTagsHomeMainPageRepo {
  final ApiService _service;

  DeveloperTagsHomeMainPageRepo(this._service);

  Future<ApiResult<List<DeveloperTagsHomeMainPageResponseBody>>>
      getDeveloperTracks() async {
    try {
      final response = await _service.getDeveloperTracks();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
