// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_home_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerHomeResponseBody _$CustomerHomeResponseBodyFromJson(
        Map<String, dynamic> json) =>
    CustomerHomeResponseBody(
      profile: Profile.fromJson(json['profile'] as Map<String, dynamic>),
      services: (json['services'] as List<dynamic>)
          .map((e) => ServiceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomerHomeResponseBodyToJson(
        CustomerHomeResponseBody instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'services': instance.services,
    };

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      id: json['id'] as String,
      name: json['name'] as String,
      profilePicture: json['profile_picture'] as String,
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile_picture': instance.profilePicture,
    };

ServiceItem _$ServiceItemFromJson(Map<String, dynamic> json) => ServiceItem(
      id: json['id'] as String,
      customerId: json['customer_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      budgetRange: json['budget_range'] as String,
      serviceType: json['service_type'] as String,
      requiredSkills: (json['required_skills'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      deadline: json['deadline'] as String,
      contactInfo: json['contact_info'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$ServiceItemToJson(ServiceItem instance) =>
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
    };
