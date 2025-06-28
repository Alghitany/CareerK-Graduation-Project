import 'package:dio/dio.dart';

import '../../../../../../../core/networking/api_constants.dart';
import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_result.dart';
import '../models/send_messages/send_messages_request_body.dart';
import '../models/send_messages/send_messages_response.dart';

class SendMessagesRepo {
  final Dio _dio;

  SendMessagesRepo(this._dio);

  Future<ApiResult<SendMessagesResponse>> sendMessage({
    required String chatRoomId,
    required SendMessageRequestBody body,
  }) async {
    try {
      final formData = await body.toFormData();

      final response = await _dio.post(
        '${ApiConstants.apiBaseUrl}api/private-chats/$chatRoomId',
        data: formData,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );

      final parsedResponse = SendMessagesResponse.fromJson(response.data);
      return ApiResult.success(parsedResponse);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
