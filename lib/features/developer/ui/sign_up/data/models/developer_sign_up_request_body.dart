import 'dart:io';

import 'package:dio/dio.dart';

class DeveloperSignupRequestBody {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String confirmPassword;
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

  DeveloperSignupRequestBody({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.confirmPassword,
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
    return FormData.fromMap({
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'password': password,
      'confirm_password': confirmPassword,
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
      if (profilePicture != null)
        'profile_picture': await MultipartFile.fromFile(
          profilePicture!.path,
          filename: profilePicture!.path.split('/').last,
        ),
      if (uploadedCV != null)
        'uploaded_cv': await MultipartFile.fromFile(
          uploadedCV!.path,
          filename: uploadedCV!.path.split('/').last,
        ),
    });
  }
}
