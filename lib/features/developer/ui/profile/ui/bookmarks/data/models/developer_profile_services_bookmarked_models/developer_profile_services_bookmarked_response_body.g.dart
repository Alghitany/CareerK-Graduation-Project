// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_profile_services_bookmarked_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperProfileServicesBookmarkedResponseBody
    _$DeveloperProfileServicesBookmarkedResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperProfileServicesBookmarkedResponseBody(
          id: json['id'] as String?,
          developerId: json['developer_id'] as String?,
          postId: json['post_id'] as String?,
          postType: json['post_type'] as String?,
          createdAt: json['created_at'] as String?,
          title: json['title'] as String?,
          description: json['description'] as String?,
          budgetRange: json['budget_range'] as String?,
          serviceType: json['service_type'] as String?,
          requiredSkills: (json['required_skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          deadline: json['deadline'] as String?,
          customerName: json['customer_name'] as String?,
        );

Map<String, dynamic> _$DeveloperProfileServicesBookmarkedResponseBodyToJson(
        DeveloperProfileServicesBookmarkedResponseBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'developer_id': instance.developerId,
      'post_id': instance.postId,
      'post_type': instance.postType,
      'created_at': instance.createdAt,
      'title': instance.title,
      'description': instance.description,
      'budget_range': instance.budgetRange,
      'service_type': instance.serviceType,
      'required_skills': instance.requiredSkills,
      'deadline': instance.deadline,
      'customer_name': instance.customerName,
    };
