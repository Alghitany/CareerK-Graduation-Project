import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

class DeveloperProfileSettingsUpdateUploadedCVRequestBody {
  final File uploadedCV;

  DeveloperProfileSettingsUpdateUploadedCVRequestBody({
    required this.uploadedCV,
  });

  Future<FormData> toFormData() async {
    final path = uploadedCV.path;
    final fileName = path.split('/').last;
    final extension = path.split('.').last.toLowerCase();

    MediaType? mimeType;
    switch (extension) {
      case 'pdf':
        mimeType = MediaType('application', 'pdf');
        break;
      case 'doc':
        mimeType = MediaType('application', 'msword');
        break;
      case 'docx':
        mimeType = MediaType('application',
            'vnd.openxmlformats-officedocument.wordprocessingml.document');
        break;
      default:
        mimeType = MediaType('application', 'octet-stream');
    }

    return FormData.fromMap({
      'uploaded_cv': await MultipartFile.fromFile(
        path,
        filename: fileName,
        contentType: mimeType,
      ),
    });
  }
}
