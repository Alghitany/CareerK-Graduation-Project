// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_profile_jobs_bookmarked_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperProfileJobsBookmarkedResponseBody
    _$DeveloperProfileJobsBookmarkedResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperProfileJobsBookmarkedResponseBody(
          id: json['id'] as String?,
          developerId: json['developer_id'] as String?,
          postId: json['post_id'] as String?,
          postType: json['post_type'] as String?,
          createdAt: json['created_at'] as String?,
          title: json['title'] as String?,
          location: json['location'] as String?,
          salaryRange: json['salary_range'] as String?,
          experienceRequired: json['experience_required'] as String?,
          jobType: json['job_type'] as String?,
          companyName: json['company_name'] as String?,
          applicationDeadline: json['application_deadline'] as String?,
          skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$DeveloperProfileJobsBookmarkedResponseBodyToJson(
        DeveloperProfileJobsBookmarkedResponseBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'developer_id': instance.developerId,
      'post_id': instance.postId,
      'post_type': instance.postType,
      'created_at': instance.createdAt,
      'title': instance.title,
      'location': instance.location,
      'salary_range': instance.salaryRange,
      'experience_required': instance.experienceRequired,
      'job_type': instance.jobType,
      'company_name': instance.companyName,
      'application_deadline': instance.applicationDeadline,
      'skills': instance.skills,
    };
