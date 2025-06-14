import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

class DeveloperJobsApplyRequestBody {
  final String name;
  final String phone;
  final int yearsOfExperience;
  final int expectedSalary;
  final File? uploadedCV;

  DeveloperJobsApplyRequestBody({
    required this.name,
    required this.phone,
    required this.yearsOfExperience,
    required this.expectedSalary,
    this.uploadedCV,
  });

  Future<FormData> toFormData() async {
    final formMap = {
      'name': name,
      'phone': phone,
      'years_of_experience': yearsOfExperience,
      'expected_salary': expectedSalary,
    };

    if (uploadedCV != null) {
      final path = uploadedCV!.path;
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

      formMap['uploaded_cv'] = await MultipartFile.fromFile(
        path,
        filename: path.split('/').last,
        contentType: mimeType,
      );
    }

    return FormData.fromMap(formMap);
  }
}
