import 'package:carrerk/features/customer/profile/data/model/customer_profile_all_service_posts/customer_profile_all_service_posts_response_body.dart';

import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';

class CustomerProfileAllServicePostsRepo {
  final ApiService _apiService;

  CustomerProfileAllServicePostsRepo(this._apiService);

  Future<ApiResult<CustomerProfileAllServicePostsResponseBody>>
      getCustomerAllServicePosts() async {
    try {
      final response = await _apiService.getProfileAllServicePosts();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
