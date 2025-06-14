import 'package:dio/dio.dart';

import '../../../../../../core/networking/api_constants.dart';
import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../model/company_jobs_delete_post_response.dart';

class CompanyJobsDeletePostRepo {
  final Dio _dio;

  CompanyJobsDeletePostRepo(this._dio);

  Future<ApiResult<CompanyJobsDeletePostResponse>> deleteJobPost({
    required String jobId,
  }) async {
    try {
      final response = await _dio.delete(
        '${ApiConstants.apiBaseUrl}${ApiConstants.companyJobsDeletePost}/$jobId',
      );

      final result = CompanyJobsDeletePostResponse.fromJson(response.data);
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
