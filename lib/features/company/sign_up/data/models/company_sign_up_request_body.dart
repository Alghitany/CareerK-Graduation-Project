import 'dart:io';
import 'package:dio/dio.dart';

class CompanySignupRequestModel {
  final String companyName;
  final String email;
  final String password;
  final String confirmPassword;
  final String briefDescription;
  final String country;
  final String city;
  final String address;
  final String website;
  final String industry;
  final String contactName;
  final String contactEmail;
  final String phoneNumber;
  final List<String> socialMediaLinks;
  final File? profilePicture;

  CompanySignupRequestModel({
    required this.companyName,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.briefDescription,
    required this.country,
    required this.city,
    required this.address,
    required this.website,
    required this.industry,
    required this.contactName,
    required this.contactEmail,
    required this.phoneNumber,
    required this.socialMediaLinks,
    this.profilePicture,
  });

  Future<FormData> toFormData() async {
    return FormData.fromMap({
      'company_name': companyName,
      'email': email,
      'password': password,
      'confirm_password': confirmPassword,
      'brief_description': briefDescription,
      'country': country,
      'city': city,
      'address': address,
      'website': website,
      'industry': industry,
      'contact_name': contactName,
      'contact_email': contactEmail,
      'phone_number': phoneNumber,
      'social_media_links': socialMediaLinks,
      if (profilePicture != null)
        'profile_picture': await MultipartFile.fromFile(
          profilePicture!.path,
          filename: profilePicture!.path.split('/').last,
        ),
    });
  }
}
