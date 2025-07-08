import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';
import 'package:carrerk/core/networking/api_service.dart';
import 'package:carrerk/features/customer/ui/profile/data/model/get_service_posts_model/customer_profile_get_all_service_post_response_body.dart';

class CustomerProfileGetAllServicePostRepo {
  final ApiService _apiService;

  CustomerProfileGetAllServicePostRepo(this._apiService);

  Future<ApiResult<CustomerProfileGetAllServicePostResponseBody>>
      getAllCustomerServicePosts() async {
    try {
      final response = await _apiService.getCustomerpostservices();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
