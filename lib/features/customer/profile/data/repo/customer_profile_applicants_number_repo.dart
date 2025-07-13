import 'package:carrerk/features/customer/profile/data/model/customer_profile_applicants_number_models/customer_profile_applicants_number_response_body.dart';

import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';

class CustomerProfileApplicantsNumberRepo {
  final ApiService _apiService;

  CustomerProfileApplicantsNumberRepo(this._apiService);

  Future<ApiResult<CustomerProfileApplicantsNumberResponseBody>>
      getCustomerApplicantsNumber() async {
    try {
      final response = await _apiService.getProfileApplicationsNumber();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
