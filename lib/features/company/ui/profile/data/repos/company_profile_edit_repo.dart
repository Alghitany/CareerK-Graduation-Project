import 'package:carrerk/core/networking/api_constants.dart';
import 'package:dio/dio.dart';

import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../models/company_profile_edit_models/company_profile_edit_request_body.dart';
import '../models/company_profile_edit_models/company_profile_edit_response.dart';

class CompanyProfileEditRepo {
  final Dio _dio;

  CompanyProfileEditRepo(this._dio);

  Future<ApiResult<CompanyProfileEditResponse>> editCompanyProfile({
    required CompanyProfileEditRequestBody body,
  }) async {
    try {
      final formData = await body.toFormData();

      final response = await _dio.patch(
        '${ApiConstants.apiBaseUrl}${ApiConstants.companyProfileEdit}',
        data: formData,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );

      final parsedResponse = CompanyProfileEditResponse.fromJson(response.data);
      return ApiResult.success(parsedResponse);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
