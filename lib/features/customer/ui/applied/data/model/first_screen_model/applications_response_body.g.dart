// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applications_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationsResponseBody _$ApplicationsResponseBodyFromJson(
        Map<String, dynamic> json) =>
    ApplicationsResponseBody(
      applications: (json['applications'] as List<dynamic>)
          .map((e) => ApplicationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApplicationsResponseBodyToJson(
        ApplicationsResponseBody instance) =>
    <String, dynamic>{
      'applications': instance.applications,
    };

ApplicationItem _$ApplicationItemFromJson(Map<String, dynamic> json) =>
    ApplicationItem(
      id: json['id'] as String,
      developerId: json['developer_id'] as String,
      servicePostId: json['service_post_id'] as String,
      submittedAt: json['submitted_at'] as String,
      createdAt: json['created_at'] as String,
      status: json['status'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      yearsOfExperience: (json['years_of_experience'] as num).toInt(),
      expectedSalary: json['expected_salary'] as String,
      uploadedCv: json['uploaded_cv'] as String,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      profilePicture: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$ApplicationItemToJson(ApplicationItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'developer_id': instance.developerId,
      'service_post_id': instance.servicePostId,
      'submitted_at': instance.submittedAt,
      'created_at': instance.createdAt,
      'status': instance.status,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'years_of_experience': instance.yearsOfExperience,
      'expected_salary': instance.expectedSalary,
      'uploaded_cv': instance.uploadedCv,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'profile_picture': instance.profilePicture,
    };
