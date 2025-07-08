import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';
import 'package:carrerk/core/networking/api_service.dart';
import 'package:carrerk/features/customer/ui/profile/data/model/get_applicants_model/total_applicants_response.dart';

class TotalApplicantsRepo {
  final ApiService _apiService;

  TotalApplicantsRepo(this._apiService);

  Future<ApiResult<TotalApplicantsResponse>> getTotalApplicants() async {
    try {
      final response = await _apiService.getCustomerApplications();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
