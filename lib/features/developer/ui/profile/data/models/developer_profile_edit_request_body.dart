import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

class DeveloperProfileEditRequestBody {
  final String firstName;
  final String lastName;
  final String gender;
  final String dateOfBirth;
  final String phoneNumber;
  final String country;
  final String city;
  final String address;
  final String briefBio;
  final List<String> skills;
  final String? currentTrack;
  final String? trackLevel;
  final String? previousJob;
  final String? typeOfJob;
  final int? yearsOfExperience;
  final int? expectedSalary;
  final List<String> interestedCourses;
  final File? profilePicture;
  final File? uploadedCV;

  DeveloperProfileEditRequestBody({
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.dateOfBirth,
    required this.phoneNumber,
    required this.country,
    required this.city,
    required this.address,
    required this.briefBio,
    required this.skills,
    this.currentTrack,
    this.trackLevel,
    this.previousJob,
    this.typeOfJob,
    this.yearsOfExperience,
    this.expectedSalary,
    required this.interestedCourses,
    this.profilePicture,
    this.uploadedCV,
  });

  Future<FormData> toFormData() async {
    final formMap = {
      'first_name': firstName,
      'last_name': lastName,
      'gender': gender,
      'date_of_birth': dateOfBirth,
      'phone_number': phoneNumber,
      'country': country,
      'city': city,
      'address': address,
      'brief_bio': briefBio,
      'skills': skills,
      'current_track': currentTrack,
      'track_level': trackLevel,
      'previous_job': previousJob,
      'type_of_job': typeOfJob,
      'years_of_experience': yearsOfExperience,
      'expected_salary': expectedSalary,
      'interested_courses': interestedCourses,
    };

    if (profilePicture != null) {
      formMap['profile_picture'] = await MultipartFile.fromFile(
        profilePicture!.path,
        filename: profilePicture!.path.split('/').last,
      );
    }

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
