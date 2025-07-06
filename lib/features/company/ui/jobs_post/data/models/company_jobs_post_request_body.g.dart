// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_jobs_post_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyJobsPostRequestBody _$CompanyJobsPostRequestBodyFromJson(
        Map<String, dynamic> json) =>
    CompanyJobsPostRequestBody(
      title: json['title'] as String,
      jobDescription: json['job_description'] as String,
      jobType: json['job_type'] as String,
      location: json['location'] as String,
      salaryRange: json['salary_range'] as String,
      deadlineTask: json['deadline_task'] as String,
      skills:
          (json['skills'] as List<dynamic>).map((e) => e as String).toList(),
      experienceRequired: json['experience_required'] as String,
      companyDepartment: json['company_department'] as String,
      jobAvailability: json['job_availability'] as String,
    );

Map<String, dynamic> _$CompanyJobsPostRequestBodyToJson(
        CompanyJobsPostRequestBody instance) =>
    <String, dynamic>{
      'title': instance.title,
      'job_description': instance.jobDescription,
      'job_type': instance.jobType,
      'location': instance.location,
      'salary_range': instance.salaryRange,
      'deadline_task': instance.deadlineTask,
      'skills': instance.skills,
      'experience_required': instance.experienceRequired,
      'company_department': instance.companyDepartment,
      'job_availability': instance.jobAvailability,
    };
