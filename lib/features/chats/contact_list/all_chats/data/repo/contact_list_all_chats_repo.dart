import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../../core/networking/api_service.dart';

import '../model/conact_list_all_chats_response_body.dart';

class ContactListAllChatsRepo {
  final ApiService _apiService;

  ContactListAllChatsRepo(this._apiService);

  Future<ApiResult<ContactListAllChatsResponseBody>> getAllChats() async {
    try {
      final response = await _apiService.getContactListAllChats();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
