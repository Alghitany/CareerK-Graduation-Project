// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_services_recently_posted_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperServicesRecentlyPostedResponseBody
    _$DeveloperServicesRecentlyPostedResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperServicesRecentlyPostedResponseBody(
          id: json['id'] as String?,
          title: json['title'] as String?,
          description: json['description'] as String?,
          budgetRange: json['budget_range'] as String?,
          serviceType: json['service_type'] as String?,
          requiredSkills: (json['required_skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          deadline: json['deadline'] as String?,
          createdAt: json['created_at'] as String?,
        );

Map<String, dynamic> _$DeveloperServicesRecentlyPostedResponseBodyToJson(
        DeveloperServicesRecentlyPostedResponseBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'budget_range': instance.budgetRange,
      'service_type': instance.serviceType,
      'required_skills': instance.requiredSkills,
      'deadline': instance.deadline,
      'created_at': instance.createdAt,
    };
