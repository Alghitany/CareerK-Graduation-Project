// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_home_main_page_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyHomeMainPageResponseBody _$CompanyHomeMainPageResponseBodyFromJson(
        Map<String, dynamic> json) =>
    CompanyHomeMainPageResponseBody(
      companyInfo: json['companyInfo'] == null
          ? null
          : CompanyInfo.fromJson(json['companyInfo'] as Map<String, dynamic>),
      availableDevelopers: (json['availableDevelopers'] as List<dynamic>?)
          ?.map((e) => AvailableDeveloper.fromJson(e as Map<String, dynamic>))
          .toList(),
      recentAppliedDevelopers: (json['recentAppliedDevelopers']
              as List<dynamic>?)
          ?.map(
              (e) => RecentAppliedDeveloper.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompanyHomeMainPageResponseBodyToJson(
        CompanyHomeMainPageResponseBody instance) =>
    <String, dynamic>{
      'companyInfo': instance.companyInfo,
      'availableDevelopers': instance.availableDevelopers,
      'recentAppliedDevelopers': instance.recentAppliedDevelopers,
    };

CompanyInfo _$CompanyInfoFromJson(Map<String, dynamic> json) => CompanyInfo(
      companyName: json['company_name'] as String?,
      industry: json['industry'] as String?,
      profilePicture: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$CompanyInfoToJson(CompanyInfo instance) =>
    <String, dynamic>{
      'company_name': instance.companyName,
      'industry': instance.industry,
      'profile_picture': instance.profilePicture,
    };

AvailableDeveloper _$AvailableDeveloperFromJson(Map<String, dynamic> json) =>
    AvailableDeveloper(
      id: json['id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      currentTrack: json['currentTrack'] as String?,
      trackLevel: json['trackLevel'] as String?,
      profilePicture: json['profilePicture'] as String?,
    );

Map<String, dynamic> _$AvailableDeveloperToJson(AvailableDeveloper instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'currentTrack': instance.currentTrack,
      'trackLevel': instance.trackLevel,
      'profilePicture': instance.profilePicture,
    };

RecentAppliedDeveloper _$RecentAppliedDeveloperFromJson(
        Map<String, dynamic> json) =>
    RecentAppliedDeveloper(
      developerId: json['developerId'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      address: json['address'] as String?,
      profilePicture: json['profilePicture'] as String?,
      uploadedCv: json['uploadedCv'] as String?,
      uploadedCvLink: json['uploadedCvLink'] as String?,
      yearsOfExperience: (json['yearsOfExperience'] as num?)?.toInt(),
      expectedSalary: json['expectedSalary'] as String?,
      applicationDate: json['applicationDate'] as String?,
      status: json['status'] as String?,
      jobTitle: json['jobTitle'] as String?,
      applicationId: json['applicationId'] as String?,
    );

Map<String, dynamic> _$RecentAppliedDeveloperToJson(
        RecentAppliedDeveloper instance) =>
    <String, dynamic>{
      'developerId': instance.developerId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'address': instance.address,
      'profilePicture': instance.profilePicture,
      'uploadedCv': instance.uploadedCv,
      'uploadedCvLink': instance.uploadedCvLink,
      'yearsOfExperience': instance.yearsOfExperience,
      'expectedSalary': instance.expectedSalary,
      'applicationDate': instance.applicationDate,
      'status': instance.status,
      'jobTitle': instance.jobTitle,
      'applicationId': instance.applicationId,
    };
