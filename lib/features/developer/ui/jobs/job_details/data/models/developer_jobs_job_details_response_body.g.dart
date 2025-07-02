// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_jobs_job_details_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperJobsJobDetailsResponseBody
    _$DeveloperJobsJobDetailsResponseBodyFromJson(Map<String, dynamic> json) =>
        DeveloperJobsJobDetailsResponseBody(
          id: json['id'] as String?,
          title: json['title'] as String?,
          companyId: json['company_id'] as String?,
          jobType: json['job_type'] as String?,
          location: json['location'] as String?,
          salaryRange: json['salary_range'] as String?,
          experienceRequired: json['experience_required'] as String?,
          jobDescription: json['job_description'] as String?,
          responsibilities: json['responsibilities'] as String?,
          qualifications: json['qualifications'] as String?,
          benefits: json['benefits'] as String?,
          applicationDeadline: json['application_deadline'] as String?,
          companyWebsite: json['company_website'] as String?,
          createdAt: json['created_at'] as String?,
          updatedAt: json['updated_at'] as String?,
          skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          companyName: json['company_name'] as String?,
          category: json['category'] as String?,
          deadlineTask: json['deadline_task'] as String?,
          companyDepartment: json['company_department'] as String?,
          jobAvailability: json['job_availability'] as String?,
          companyProfilePicture: json['company_profile_picture'] as String?,
          industry: json['industry'] as String?,
          city: json['city'] as String?,
          country: json['country'] as String?,
        );

Map<String, dynamic> _$DeveloperJobsJobDetailsResponseBodyToJson(
        DeveloperJobsJobDetailsResponseBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'company_id': instance.companyId,
      'job_type': instance.jobType,
      'location': instance.location,
      'salary_range': instance.salaryRange,
      'experience_required': instance.experienceRequired,
      'job_description': instance.jobDescription,
      'responsibilities': instance.responsibilities,
      'qualifications': instance.qualifications,
      'benefits': instance.benefits,
      'application_deadline': instance.applicationDeadline,
      'company_website': instance.companyWebsite,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'skills': instance.skills,
      'company_name': instance.companyName,
      'category': instance.category,
      'deadline_task': instance.deadlineTask,
      'company_department': instance.companyDepartment,
      'job_availability': instance.jobAvailability,
      'company_profile_picture': instance.companyProfilePicture,
      'industry': instance.industry,
      'city': instance.city,
      'country': instance.country,
    };
