import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_service.dart';
import '../model/customer_home_response_body.dart';

class CustomerHomeRepo {
  final ApiService _apiService;

  CustomerHomeRepo(this._apiService);

  Future<ApiResult<CustomerHomeResponseBody>> getCustomerHomeData() async {
    try {
      final response = await _apiService.getCustomerHomeMainPage();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
