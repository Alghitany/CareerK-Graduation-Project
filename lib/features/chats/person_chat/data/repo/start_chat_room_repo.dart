import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_service.dart';
import '../models/start_chat/start_chat_room_request_body.dart';
import '../models/start_chat/start_chat_room_response.dart';

class StartChatRoomRepo {
  final ApiService _apiService;

  StartChatRoomRepo(this._apiService);

  Future<ApiResult<StartChatRoomResponse>> startChatRoom(
      StartChatRoomRequestBody body,
      ) async {
    try {
      final response = await _apiService.startPrivateChat(body);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
