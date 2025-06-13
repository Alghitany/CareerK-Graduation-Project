import 'package:carrerk/core/networking/api_constants.dart';
import 'package:dio/dio.dart';
import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../model/developer_jobs_apply_request_body.dart';
import '../model/developer_jobs_apply_response.dart';

class DeveloperJobsApplyRepo {
  final Dio _dio;

  DeveloperJobsApplyRepo(this._dio);

  Future<ApiResult<DeveloperJobsApplyResponse>> applyForJob({
    required String jobId,
    required DeveloperJobsApplyRequestBody body,
  }) async {
    try {
      final formData = await body.toFormData();

      final response = await _dio.post(
        '${ApiConstants.apiBaseUrl}${ApiConstants.developerJobsApply}/$jobId',
        data: formData,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );

      final parsedResponse = DeveloperJobsApplyResponse.fromJson(response.data);
      return ApiResult.success(parsedResponse);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
