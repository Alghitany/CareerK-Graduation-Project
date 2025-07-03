import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_service.dart';
import '../models/get_chat_messages/get_chat_messages_response_body.dart';

class GetChatMessagesRepo {
  final ApiService _apiService;

  GetChatMessagesRepo(this._apiService);

  Future<ApiResult<GetChatMessagesResponseBody>> getChatMessages(
      String chatRoomId) async {
    try {
      final response = await _apiService.getChatMessages(chatRoomId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
