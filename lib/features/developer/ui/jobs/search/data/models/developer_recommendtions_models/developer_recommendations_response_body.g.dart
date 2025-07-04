// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_recommendations_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperRecommendationsResponseBody
    _$DeveloperRecommendationsResponseBodyFromJson(Map<String, dynamic> json) =>
        DeveloperRecommendationsResponseBody(
          jobRecommendations: (json['job_recommendations'] as List<dynamic>?)
              ?.map(
                  (e) => JobRecommendation.fromJson(e as Map<String, dynamic>))
              .toList(),
          serviceRecommendations:
              (json['service_recommendations'] as List<dynamic>?)
                  ?.map((e) =>
                      ServiceRecommendation.fromJson(e as Map<String, dynamic>))
                  .toList(),
        );

Map<String, dynamic> _$DeveloperRecommendationsResponseBodyToJson(
        DeveloperRecommendationsResponseBody instance) =>
    <String, dynamic>{
      'job_recommendations': instance.jobRecommendations,
      'service_recommendations': instance.serviceRecommendations,
    };

JobRecommendation _$JobRecommendationFromJson(Map<String, dynamic> json) =>
    JobRecommendation(
      id: json['id'] as String?,
      title: json['title'] as String?,
      companyId: json['company_id'] as String?,
      jobType: json['job_type'] as String?,
      location: json['location'] as String?,
      salaryRange: json['salary_range'] as String?,
      experienceRequired: json['experience_required'] as String?,
      jobDescription: json['job_description'] as String?,
      responsibilities: (json['responsibilities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      qualifications: (json['qualifications'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      benefits: (json['benefits'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      applicationDeadline: json['application_deadline'] as String?,
      companyWebsite: json['company_website'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      skills:
          (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
      category: json['category'] as String?,
      deadlineTask: json['deadline_task'] as String?,
      companyDepartment: json['company_department'] as String?,
      jobAvailability: json['job_availability'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$JobRecommendationToJson(JobRecommendation instance) =>
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
      'category': instance.category,
      'deadline_task': instance.deadlineTask,
      'company_department': instance.companyDepartment,
      'job_availability': instance.jobAvailability,
      'score': instance.score,
    };

ServiceRecommendation _$ServiceRecommendationFromJson(
        Map<String, dynamic> json) =>
    ServiceRecommendation(
      id: json['id'] as String?,
      customerId: json['customer_id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      budgetRange: json['budget_range'] as String?,
      serviceType: json['service_type'] as String?,
      requiredSkills: (json['required_skills'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      deadline: json['deadline'] as String?,
      contactInfo: json['contact_info'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ServiceRecommendationToJson(
        ServiceRecommendation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_id': instance.customerId,
      'title': instance.title,
      'description': instance.description,
      'budget_range': instance.budgetRange,
      'service_type': instance.serviceType,
      'required_skills': instance.requiredSkills,
      'deadline': instance.deadline,
      'contact_info': instance.contactInfo,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'score': instance.score,
    };
