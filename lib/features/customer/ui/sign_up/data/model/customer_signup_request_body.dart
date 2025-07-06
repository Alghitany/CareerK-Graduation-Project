import 'dart:io';

import 'package:dio/dio.dart';

class CustomerSignupRequestModel {
  final String name;
  final String email;
  final String password;
  final String confirmPassword;
  final String briefDescription;
  final String contactEmail;
  final String phoneNumber;
  final File? profilePicture;

  CustomerSignupRequestModel({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.briefDescription,
    required this.contactEmail,
    required this.phoneNumber,
    this.profilePicture,
  });

  Future<FormData> toFormData() async {
    return FormData.fromMap({
      'name': name,
      'email': email,
      'password': password,
      'confirm_password': confirmPassword,
      'brief_description': briefDescription,
      'contact_email': contactEmail,
      'phone_number': phoneNumber,
      if (profilePicture != null)
        'profile_picture': await MultipartFile.fromFile(
          profilePicture!.path,
          filename: profilePicture!.path.split('/').last,
        ),
    });
  }
}
