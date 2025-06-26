import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_service.dart';
import '../model/chats_all_chats_response_body.dart';

class ChatsAllChatsRepo {
  final ApiService _apiService;

  ChatsAllChatsRepo(this._apiService);

  Future<ApiResult<ChatsAllChatsResponseBody>> getAllChats() async {
    try {
      final response = await _apiService.getAllChats();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
