// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_update_application_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyUpdateApplicationStatusResponseBody
    _$CompanyUpdateApplicationStatusResponseBodyFromJson(
            Map<String, dynamic> json) =>
        CompanyUpdateApplicationStatusResponseBody(
          message: json['message'] as String,
          application:
              Application.fromJson(json['application'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CompanyUpdateApplicationStatusResponseBodyToJson(
        CompanyUpdateApplicationStatusResponseBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'application': instance.application,
    };

Application _$ApplicationFromJson(Map<String, dynamic> json) => Application(
      id: json['id'] as String,
      jobId: json['job_id'] as String,
      developerId: json['developer_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      yearsOfExperience: (json['years_of_experience'] as num).toInt(),
      expectedSalary: json['expected_salary'] as String,
      uploadedCv: json['uploaded_cv'] as String,
      status: json['status'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$ApplicationToJson(Application instance) =>
    <String, dynamic>{
      'id': instance.id,
      'job_id': instance.jobId,
      'developer_id': instance.developerId,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'years_of_experience': instance.yearsOfExperience,
      'expected_salary': instance.expectedSalary,
      'uploaded_cv': instance.uploadedCv,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
