import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

class CustomerProfileEditRequestBody {
  final String? customerName;
  final String? briefDescription;
  final String? country;
  final String? city;
  final String? address;
  final String? website;
  final String? industry;
  final String? contactName;
  final String? contactEmail;
  final String? phoneNumber;
  final String? socialMediaLinks;
  final File? profilePicture;

  CustomerProfileEditRequestBody({
    this.customerName,
    this.briefDescription,
    this.country,
    this.city,
    this.address,
    this.website,
    this.industry,
    this.contactName,
    this.contactEmail,
    this.phoneNumber,
    this.socialMediaLinks,
    this.profilePicture,
  });

  Future<FormData> toFormData() async {
    final Map<String, dynamic> formMap = {};

    if (customerName != null) formMap['customer_name'] = customerName;
    if (briefDescription != null)
      formMap['brief_description'] = briefDescription;
    if (country != null) formMap['country'] = country;
    if (city != null) formMap['city'] = city;
    if (address != null) formMap['address'] = address;
    if (website != null) formMap['website'] = website;
    if (industry != null) formMap['industry'] = industry;
    if (contactName != null) formMap['contact_name'] = contactName;
    if (contactEmail != null) formMap['contact_email'] = contactEmail;
    if (phoneNumber != null) formMap['phone_number'] = phoneNumber;
    if (socialMediaLinks != null)
      formMap['social_media_links'] = socialMediaLinks;

    if (profilePicture != null) {
      final path = profilePicture!.path;
      final extension = path.split('.').last.toLowerCase();

      MediaType? mimeType;

      switch (extension) {
        case 'png':
          mimeType = MediaType('image', 'png');
          break;
        case 'jpg':
        case 'jpeg':
          mimeType = MediaType('image', 'jpeg');
          break;
        default:
          mimeType = MediaType('application', 'octet-stream');
      }

      formMap['profile_picture'] = await MultipartFile.fromFile(
        path,
        filename: path.split('/').last,
        contentType: mimeType,
      );
    }

    return FormData.fromMap(formMap);
  }
}
