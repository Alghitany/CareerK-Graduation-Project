import 'package:carrerk/features/notifications/data/model/mark_one/mark_notification_read_request_model.dart';
import 'package:carrerk/features/notifications/data/model/mark_one/mark_notification_read_response_model.dart';

import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_service.dart';

class MarkNotificationReadRepo {
  final ApiService _apiService;

  MarkNotificationReadRepo(this._apiService);

  Future<ApiResult<MarkNotificationReadResponseModel>> markNotificationAsRead({
    required String notificationId,
    required MarkNotificationReadRequestModel body,
  }) async {
    try {
      final response =
          await _apiService.markNotificationAsRead(notificationId, body);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
