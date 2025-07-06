import 'package:carrerk/core/networking/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

import '../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../core/networking/api_result.dart';
import '../models/developer_sign_up_request_body.dart';
import '../models/developer_sign_up_response.dart';

class DeveloperSignupRepo {
  final Dio _dio;

  DeveloperSignupRepo(this._dio);

  Future<ApiResult<DeveloperSignupResponse>> developerSignup({
    required DeveloperSignupRequestBody body,
    String? cvFilePath,
    String? profilePicFilePath,
  }) async {
    try {
      final Map<String, dynamic> formMap = {
        'first_name': body.firstName,
        'last_name': body.lastName,
        'email': body.email,
        'password': body.password,
        'confirm_password': body.confirmPassword,
        'gender': body.gender,
        'date_of_birth': body.dateOfBirth,
        'phone_number': body.phoneNumber,
        'country': body.country,
        'city': body.city,
        'address': body.address,
        'brief_bio': body.briefBio,
        'current_track': body.currentTrack,
        'track_level': body.trackLevel,
        'previous_job': body.previousJob,
        'type_of_job': body.typeOfJob,
        'years_of_experience': body.yearsOfExperience.toString(),
        'expected_salary': body.expectedSalary.toString(),
        'skills': body.skills,
        'interested_courses': body.interestedCourses,
      };

      if (cvFilePath != null && cvFilePath.isNotEmpty) {
        final extension = cvFilePath.split('.').last.toLowerCase();

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
          cvFilePath,
          filename: 'cv.$extension',
          contentType: mimeType,
        );
      }

      if (profilePicFilePath != null && profilePicFilePath.isNotEmpty) {
        final fileExtension = profilePicFilePath.split('.').last.toLowerCase();

        String mimeType = 'image/jpeg'; // Default

        if (fileExtension == 'png') {
          mimeType = 'image/png';
        } else if (fileExtension == 'jpg' || fileExtension == 'jpeg') {
          mimeType = 'image/jpeg';
        } else if (fileExtension == 'webp') {
          mimeType = 'image/webp';
        }

        formMap['profile_picture'] = await MultipartFile.fromFile(
          profilePicFilePath,
          filename: 'profile.$fileExtension',
          contentType: MediaType.parse(mimeType),
        );
      }

      final formData = FormData.fromMap(formMap);

      final response = await _dio.post(
        '${ApiConstants.apiBaseUrl}${ApiConstants.developerSignup}',
        data: formData,
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );

      final developerSignupResponse =
          DeveloperSignupResponse.fromJson(response.data);
      return ApiResult.success(developerSignupResponse);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
