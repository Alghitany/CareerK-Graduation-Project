import 'package:carrerk/core/networking/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

import '../../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../../core/networking/api_result.dart';
import '../models/developer_profile_settings_update_uploaded_cv_models/developer_profile_settings_update_uploaded_cv_response_body.dart';

class DeveloperProfileSettingsUpdateUploadedCVRepo {
  final Dio _dio;

  DeveloperProfileSettingsUpdateUploadedCVRepo(this._dio);

  Future<ApiResult<DeveloperProfileSettingsUpdateUploadedCVResponseBody>>
      updateUploadedCV({
    required String cvFilePath,
  }) async {
    try {
      final extension = cvFilePath.split('.').last.toLowerCase();

      MediaType? mimeType;
      switch (extension) {
        case 'pdf':
          mimeType = MediaType('application', 'pdf');
          break;
        case 'doc':
          mimeType = MediaType('application', 'msword');
          break;
        case 'docx':
          mimeType = MediaType(
            'application',
            'vnd.openxmlformats-officedocument.wordprocessingml.document',
          );
          break;
        default:
          mimeType = MediaType('application', 'octet-stream');
      }

      final formData = FormData.fromMap({
        'uploaded_cv': await MultipartFile.fromFile(
          cvFilePath,
          filename: 'cv.$extension',
          contentType: mimeType,
        ),
      });

      final response = await _dio.put(
        "${ApiConstants.apiBaseUrl}${ApiConstants.developerUpdateUploadedCV}",
        data: formData,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );

      final updatedCVResponse =
          DeveloperProfileSettingsUpdateUploadedCVResponseBody.fromJson(
              response.data);

      return ApiResult.success(updatedCVResponse);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
