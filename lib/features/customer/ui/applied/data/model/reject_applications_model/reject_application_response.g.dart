// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reject_application_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RejectApplicationResponseBody _$RejectApplicationResponseBodyFromJson(
        Map<String, dynamic> json) =>
    RejectApplicationResponseBody(
      application:
          Application.fromJson(json['application'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RejectApplicationResponseBodyToJson(
        RejectApplicationResponseBody instance) =>
    <String, dynamic>{
      'application': instance.application,
    };

Application _$ApplicationFromJson(Map<String, dynamic> json) => Application(
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
    );

Map<String, dynamic> _$ApplicationToJson(Application instance) =>
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
    };
