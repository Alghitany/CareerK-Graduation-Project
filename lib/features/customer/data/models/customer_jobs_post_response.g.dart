// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_jobs_post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerJobsPostResponse _$CustomerJobsPostResponseFromJson(
        Map<String, dynamic> json) =>
    CustomerJobsPostResponse(
      message: json['message'] as String?,
      job: json['job'] == null
          ? null
          : CustomerJobData.fromJson(json['job'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerJobsPostResponseToJson(
        CustomerJobsPostResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'job': instance.job,
    };

CustomerJobData _$CustomerJobDataFromJson(Map<String, dynamic> json) =>
    CustomerJobData(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      budgetRange: json['budget_range'] as String?,
      serviceType: json['service_type'] as String?,
      requiredSkills: (json['required_skills'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      deadline: json['deadline'] as String?,
      contactInfo: json['contact_info'] as String?,
      customerId: json['customer_id'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$CustomerJobDataToJson(CustomerJobData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'budget_range': instance.budgetRange,
      'service_type': instance.serviceType,
      'required_skills': instance.requiredSkills,
      'deadline': instance.deadline,
      'contact_info': instance.contactInfo,
      'customer_id': instance.customerId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
