import 'package:carrerk/features/notifications/data/model/get_all/all_notifications_response_model.dart';

import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../../../../../../../core/networking/api_service.dart';

class AllNotificationsRepo {
  final ApiService _apiService;

  AllNotificationsRepo(this._apiService);

  Future<ApiResult<AllNotificationsResponseModel>> getAllNotifications() async {
    try {
      final response = await _apiService.getAllNotifications();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
