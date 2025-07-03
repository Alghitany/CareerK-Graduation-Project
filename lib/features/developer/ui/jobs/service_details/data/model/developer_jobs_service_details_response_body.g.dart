// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_jobs_service_details_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperJobsServiceDetailsResponseBody
    _$DeveloperJobsServiceDetailsResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperJobsServiceDetailsResponseBody(
          post: json['post'] == null
              ? null
              : Post.fromJson(json['post'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DeveloperJobsServiceDetailsResponseBodyToJson(
        DeveloperJobsServiceDetailsResponseBody instance) =>
    <String, dynamic>{
      'post': instance.post,
    };

Post _$PostFromJson(Map<String, dynamic> json) => Post(
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
      customerName: json['customer_name'] as String?,
      customerProfilePicture: json['customer_profile_picture'] as String?,
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
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
      'customer_name': instance.customerName,
      'customer_profile_picture': instance.customerProfilePicture,
    };
