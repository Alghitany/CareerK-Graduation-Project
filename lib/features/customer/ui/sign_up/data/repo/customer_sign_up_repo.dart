import 'package:carrerk/core/networking/api_constants.dart';
import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';
import 'package:carrerk/features/customer/ui/sign_up/data/model/customer_signup_request_body.dart';
import 'package:carrerk/features/customer/ui/sign_up/data/model/customer_signup_response.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';


import '../model/customer_signup_request_body.dart';
import '../model/customer_signup_response.dart';

class CustomerSignupRepo {
  final Dio _dio;

  CustomerSignupRepo(this._dio);

  Future<ApiResult<CustomerSignupResponse>> customerSignup({
    required CustomerSignupRequestModel body,
    String? profilePicFilePath,
  }) async {
    try {
      final Map<String, dynamic> formMap = {
        'name': body.name,
        'email': body.email,
        'password': body.password,
        'confirm_password': body.confirmPassword,
      };

      if (profilePicFilePath != null && profilePicFilePath.isNotEmpty) {
        final fileExtension = profilePicFilePath.split('.').last.toLowerCase();

        String mimeType = 'image/jpeg'; // Default
        if (fileExtension == 'png') {
          mimeType = 'image/png';
        } else if (fileExtension == 'jpg' || fileExtension == 'jpeg') {
          mimeType = 'image/jpeg';
        } else if (fileExtension == 'webp') {
          mimeType = 'image/webp';
        }

        formMap['profile_picture'] = await MultipartFile.fromFile(
          profilePicFilePath,
          filename: 'profile.$fileExtension',
          contentType: MediaType.parse(mimeType),
        );
      }

      final formData = FormData.fromMap(formMap);

      final response = await _dio.post(
        '${ApiConstants.apiBaseUrl}${ApiConstants.customerSignup}',
        data: formData,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );

      final customerSignupResponse =
          CustomerSignupResponse.fromJson(response.data);
      return ApiResult.success(customerSignupResponse);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
