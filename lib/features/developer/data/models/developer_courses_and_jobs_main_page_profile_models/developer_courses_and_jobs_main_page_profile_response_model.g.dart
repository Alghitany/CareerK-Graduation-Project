// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_courses_and_jobs_main_page_profile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperCoursesAndJobsMainPageProfileResponseModel
    _$DeveloperCoursesAndJobsMainPageProfileResponseModelFromJson(
            Map<String, dynamic> json) =>
        DeveloperCoursesAndJobsMainPageProfileResponseModel(
          firstName: json['first_name'] as String,
          lastName: json['last_name'] as String,
          profilePicture: json['profile_picture'] as String?,
        );

Map<String, dynamic>
    _$DeveloperCoursesAndJobsMainPageProfileResponseModelToJson(
            DeveloperCoursesAndJobsMainPageProfileResponseModel instance) =>
        <String, dynamic>{
          'first_name': instance.firstName,
          'last_name': instance.lastName,
          'profile_picture': instance.profilePicture,
        };
