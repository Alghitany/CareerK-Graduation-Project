import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';

import '../../../../../../../../core/networking/api_service.dart';
import '../models/profile_skills_models/developer_profile_main_page_skills_response_body.dart';

class DeveloperProfileMainPageSkillsRepo {
  final ApiService _service;

  DeveloperProfileMainPageSkillsRepo(this._service);

  Future<ApiResult<DeveloperProfileMainPageSkillsResponseBody>>
  getDeveloperProfileMainPageSkills() async {
    try {
      final response = await _service.getDeveloperProfileMainPageSkills();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
