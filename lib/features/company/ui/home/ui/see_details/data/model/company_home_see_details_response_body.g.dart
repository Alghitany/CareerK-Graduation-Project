// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_home_see_details_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyHomeSeeDetailsResponseBody _$CompanyHomeSeeDetailsResponseBodyFromJson(
        Map<String, dynamic> json) =>
    CompanyHomeSeeDetailsResponseBody(
      applicationId: json['applicationId'] as String?,
      applicantName: json['applicantName'] as String?,
      applicantEmail: json['applicantEmail'] as String?,
      phone: json['phone'] as String?,
      yearsOfExperience: (json['yearsOfExperience'] as num?)?.toInt(),
      expectedSalary: json['expectedSalary'] as String?,
      uploadedCv: json['uploadedCv'] as String?,
      uploadedCvLink: json['uploadedCvLink'] as String?,
      status: json['status'] as String?,
      applicationDate: json['applicationDate'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      briefBio: json['brief_bio'] as String?,
      profilePicture: json['profilePicture'] as String?,
      trackTitle: json['trackTitle'] as String?,
      jobTitle: json['jobTitle'] as String?,
      jobLocation: json['jobLocation'] as String?,
    );

Map<String, dynamic> _$CompanyHomeSeeDetailsResponseBodyToJson(
        CompanyHomeSeeDetailsResponseBody instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'applicantName': instance.applicantName,
      'applicantEmail': instance.applicantEmail,
      'phone': instance.phone,
      'yearsOfExperience': instance.yearsOfExperience,
      'expectedSalary': instance.expectedSalary,
      'uploadedCv': instance.uploadedCv,
      'uploadedCvLink': instance.uploadedCvLink,
      'status': instance.status,
      'applicationDate': instance.applicationDate,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'address': instance.address,
      'city': instance.city,
      'country': instance.country,
      'brief_bio': instance.briefBio,
      'profilePicture': instance.profilePicture,
      'trackTitle': instance.trackTitle,
      'jobTitle': instance.jobTitle,
      'jobLocation': instance.jobLocation,
    };
