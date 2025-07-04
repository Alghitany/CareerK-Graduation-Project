import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';

import '../../../../../../../core/networking/api_service.dart';
import '../models/developer_courses_home_main_page_models/developer_courses_home_main_page_response_body.dart';

class DeveloperCoursesHomeMainPageRepo {
  final ApiService _service;

  DeveloperCoursesHomeMainPageRepo(this._service);

  Future<ApiResult<List<DeveloperCoursesHomeMainPageResponseBody>>>
      getDeveloperCoursesHomeMainPage(String developerId) async {
    try {
      final response = await _service.getDeveloperCourses(developerId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
