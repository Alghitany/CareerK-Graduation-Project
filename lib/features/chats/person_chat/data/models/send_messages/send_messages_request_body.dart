import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

class SendMessageRequestBody {
  final String message;
  final File? chatFile;

  SendMessageRequestBody({
    required this.message,
    this.chatFile,
  });

  Future<FormData> toFormData() async {
    final Map<String, dynamic> formMap = {
      'message': message,
    };

    if (chatFile != null) {
      final path = chatFile!.path;
      final extension = path.split('.').last.toLowerCase();

      MediaType? mimeType;

      switch (extension) {
        case 'jpg':
        case 'jpeg':
          mimeType = MediaType('image', 'jpeg');
          break;
        case 'png':
          mimeType = MediaType('image', 'png');
          break;
        case 'pdf':
          mimeType = MediaType('application', 'pdf');
          break;
        case 'mp4':
          mimeType = MediaType('video', 'mp4');
          break;
        case 'mp3':
          mimeType = MediaType('audio', 'mpeg');
          break;
        default:
          mimeType = MediaType('application', 'octet-stream');
      }

      formMap['chat_file'] = await MultipartFile.fromFile(
        path,
        filename: path.split('/').last,
        contentType: mimeType,
      );
    }

    return FormData.fromMap(formMap);
  }
}
