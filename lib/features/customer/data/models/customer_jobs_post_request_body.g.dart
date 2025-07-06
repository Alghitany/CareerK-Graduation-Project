// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_jobs_post_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerJobsPostRequestBody _$CustomerJobsPostRequestBodyFromJson(
        Map<String, dynamic> json) =>
    CustomerJobsPostRequestBody(
      title: json['title'] as String,
      description: json['description'] as String,
      budgetRange: json['budget_range'] as String,
      serviceType: json['service_type'] as String,
      requiredSkills: (json['required_skills'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      deadline: json['deadline'] as String,
      contactInfo: json['contact_info'] as String,
    );

Map<String, dynamic> _$CustomerJobsPostRequestBodyToJson(
        CustomerJobsPostRequestBody instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'budget_range': instance.budgetRange,
      'service_type': instance.serviceType,
      'required_skills': instance.requiredSkills,
      'deadline': instance.deadline,
      'contact_info': instance.contactInfo,
    };
