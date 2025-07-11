import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_service.dart';
import '../models/chat_bot_request_body.dart';
import '../models/chat_bot_response.dart';

class ChatBotRepo {
  final ApiService _apiService;

  ChatBotRepo(this._apiService);

  Future<ApiResult<ChatBotResponse>> sendMessage(
      ChatBotRequestBody chatBotRequestBody) async {
    try {
      final response = await _apiService.sendMessage(chatBotRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
