// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_jobs_recently_posted_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperJobsRecentlyPostedResponseBody
    _$DeveloperJobsRecentlyPostedResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperJobsRecentlyPostedResponseBody(
          id: json['id'] as String?,
          title: json['title'] as String?,
          location: json['location'] as String?,
          salaryRange: json['salary_range'] as String?,
          experienceRequired: json['experience_required'] as String?,
          createdAt: json['created_at'] as String?,
          skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          companyName: json['company_name'] as String?,
          category: json['category'] as String?,
          jobType: json['job_type'] as String?,
          jobAvailability: json['job_availability'] as String?,
        );

Map<String, dynamic> _$DeveloperJobsRecentlyPostedResponseBodyToJson(
        DeveloperJobsRecentlyPostedResponseBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'salary_range': instance.salaryRange,
      'experience_required': instance.experienceRequired,
      'created_at': instance.createdAt,
      'skills': instance.skills,
      'company_name': instance.companyName,
      'category': instance.category,
      'job_type': instance.jobType,
      'job_availability': instance.jobAvailability,
    };
