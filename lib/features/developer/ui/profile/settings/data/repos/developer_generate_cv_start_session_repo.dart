import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';

import '../../../../../../../core/networking/api_service.dart';
import '../models/developer_generate_cv_start_session_models/developer_generate_cv_start_session_response.dart';

class DeveloperGenerateCVStartSessionRepo {
  final ApiService _service;

  DeveloperGenerateCVStartSessionRepo(this._service);

  Future<ApiResult<DeveloperGenerateCVStartSessionResponseBody>>
      startSession() async {
    try {
      final response = await _service.startDeveloperGenerateCVSession();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
