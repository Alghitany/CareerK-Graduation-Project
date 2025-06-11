import 'package:carrerk/core/networking/api_constants.dart';
import 'package:carrerk/features/company/sign_up/data/models/company_sign_up_request_body.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_error_handler.dart';

import '../models/company_sign_up_response.dart';

class CompanySignupRepo {
  final Dio _dio;

  CompanySignupRepo(this._dio);

  Future<ApiResult<CompanySignupResponse>> companySignup({
    required CompanySignupRequestModel body,
    String? profilePicFilePath,
  }) async {
    try {
      final Map<String, dynamic> formMap = {
        'company_name': body.companyName,
        'email': body.email,
        'password': body.password,
        'confirm_password': body.confirmPassword,
        'brief_description': body.briefDescription,
        'country': body.country,
        'city': body.city,
        'address': body.address,
        'website': body.website,
        'industry': body.industry,
        'contact_name': body.contactName,
        'contact_email': body.contactEmail,
        'phone_number': body.phoneNumber,
        'social_media_links': body.socialMediaLinks,
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
        '${ApiConstants.apiBaseUrl}${ApiConstants.companySignup}',
        data: formData,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );

      final companySignupResponse =
          CompanySignupResponse.fromJson(response.data);
      return ApiResult.success(companySignupResponse);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
