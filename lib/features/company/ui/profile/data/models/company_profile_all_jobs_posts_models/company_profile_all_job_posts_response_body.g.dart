// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_profile_all_job_posts_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyProfileAllJobPostsResponseBody
    _$CompanyProfileAllJobPostsResponseBodyFromJson(
            Map<String, dynamic> json) =>
        CompanyProfileAllJobPostsResponseBody(
          totalJobs: (json['totalJobs'] as num).toInt(),
          companyName: json['companyName'] as String,
          jobs: (json['jobs'] as List<dynamic>)
              .map((e) => JobPostItem.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$CompanyProfileAllJobPostsResponseBodyToJson(
        CompanyProfileAllJobPostsResponseBody instance) =>
    <String, dynamic>{
      'totalJobs': instance.totalJobs,
      'companyName': instance.companyName,
      'jobs': instance.jobs,
    };

JobPostItem _$JobPostItemFromJson(Map<String, dynamic> json) => JobPostItem(
      id: json['id'] as String,
      title: json['title'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$JobPostItemToJson(JobPostItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
    };
