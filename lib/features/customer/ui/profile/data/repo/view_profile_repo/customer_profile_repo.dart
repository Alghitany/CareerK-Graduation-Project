import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';
import 'package:carrerk/core/networking/api_service.dart';
import 'package:carrerk/features/customer/ui/profile/data/model/view_profile_model/customer_profile_response_body.dart';

class CustomerProfileRepo {
  final ApiService _apiService;

  CustomerProfileRepo(this._apiService);

  Future<ApiResult<CustomerProfileResponseBody>>
      getCustomerProfileData() async {
    try {
      final response = await _apiService.getCustomerViewProfie();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
