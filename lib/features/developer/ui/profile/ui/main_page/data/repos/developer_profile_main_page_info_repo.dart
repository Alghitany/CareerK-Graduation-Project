import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';
import '../../../../../../../../core/networking/api_service.dart';
import '../models/profile_info_models/developer_profile_main_page_info_response_body.dart';

class DeveloperProfileMainPageInfoRepo {
  final ApiService _service;

  DeveloperProfileMainPageInfoRepo(this._service);

  Future<ApiResult<DeveloperProfileMainPageInfoResponseBody>>
      getDeveloperProfileMainPageInfo() async {
    try {
      final response = await _service.getDeveloperProfileMainPageInfo();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
