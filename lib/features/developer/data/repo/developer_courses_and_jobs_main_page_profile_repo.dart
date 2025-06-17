import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_service.dart';
import '../model/developer_courses_and_jobs_main_page_profile_response_model.dart';

class DeveloperCoursesAndJobsMainPageProfileRepo {
  final ApiService _apiService;

  DeveloperCoursesAndJobsMainPageProfileRepo(this._apiService);

  Future<ApiResult<DeveloperCoursesAndJobsMainPageProfileResponseModel>> getDeveloperCoursesMainPageProfile() async {
    try {
      final response = await _apiService.getDeveloperCoursesMainPageProfile();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
