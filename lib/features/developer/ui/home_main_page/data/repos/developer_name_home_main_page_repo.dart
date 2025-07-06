import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';

import '../../../../../../../core/networking/api_service.dart';
import '../models/developer_name_home_main_page_models/developer_name_home_main_page_response_body.dart';

class DeveloperNameHomeMainPageRepo {
  final ApiService _service;

  DeveloperNameHomeMainPageRepo(this._service);

  Future<ApiResult<DeveloperNameHomeMainPageResponseBody>>
      getDeveloperNameHomeMainPage() async {
    try {
      final response = await _service.getDeveloperNameHomeMainPage();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
