import 'package:carrerk/core/networking/api_constants.dart';
import 'package:carrerk/features/customer/profile/data/model/customer_profile_edit_models/customer_profile_edit_request_body.dart';
import 'package:carrerk/features/customer/profile/data/model/customer_profile_edit_models/customer_profile_edit_response.dart';
import 'package:dio/dio.dart';

import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';

class CustomerProfileEditRepo {
  final Dio _dio;

  CustomerProfileEditRepo(this._dio);

  Future<ApiResult<CustomerProfileEditResponse>> editCustomerProfile({
    required CustomerProfileEditRequestBody body,
  }) async {
    try {
      final formData = await body.toFormData();

      final response = await _dio.patch(
        '${ApiConstants.apiBaseUrl}${ApiConstants.customereditprofile}',
        data: formData,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );

      final parsedResponse =
          CustomerProfileEditResponse.fromJson(response.data);
      return ApiResult.success(parsedResponse);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
