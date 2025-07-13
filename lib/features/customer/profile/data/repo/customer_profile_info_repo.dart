import 'package:carrerk/features/customer/profile/data/model/customer_profile_info/customer_profile_info_response_body.dart';

import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';

class CustomerProfileInfoRepo {
  final ApiService _apiService;

  CustomerProfileInfoRepo(this._apiService);

  Future<ApiResult<CustomerProfileInfoResponseBody>>
      getCustomerProfile() async {
    try {
      final response = await _apiService.getProfileInfo();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
