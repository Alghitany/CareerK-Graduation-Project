// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_profile_applied_jobs_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperProfileAppliedJobsResponseBody
    _$DeveloperProfileAppliedJobsResponseBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperProfileAppliedJobsResponseBody(
          jobApplications: (json['job_applications'] as List<dynamic>?)
              ?.map((e) => JobApplication.fromJson(e as Map<String, dynamic>))
              .toList(),
          serviceApplications: (json['service_applications'] as List<dynamic>?)
              ?.map(
                  (e) => ServiceApplication.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$DeveloperProfileAppliedJobsResponseBodyToJson(
        DeveloperProfileAppliedJobsResponseBody instance) =>
    <String, dynamic>{
      'job_applications': instance.jobApplications,
      'service_applications': instance.serviceApplications,
    };

JobApplication _$JobApplicationFromJson(Map<String, dynamic> json) =>
    JobApplication(
      id: json['id'] as String?,
      jobId: json['job_id'] as String?,
      developerId: json['developer_id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      yearsOfExperience: (json['years_of_experience'] as num?)?.toInt(),
      expectedSalary: json['expected_salary'] as String?,
      uploadedCv: json['uploaded_cv'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      jobTitle: json['job_title'] as String?,
      companyName: json['company_name'] as String?,
    );

Map<String, dynamic> _$JobApplicationToJson(JobApplication instance) =>
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
      'job_title': instance.jobTitle,
      'company_name': instance.companyName,
    };

ServiceApplication _$ServiceApplicationFromJson(Map<String, dynamic> json) =>
    ServiceApplication(
      id: json['id'] as String?,
      developerId: json['developer_id'] as String?,
      servicePostId: json['service_post_id'] as String?,
      submittedAt: json['submitted_at'] as String?,
      createdAt: json['created_at'] as String?,
      status: json['status'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      yearsOfExperience: (json['years_of_experience'] as num?)?.toInt(),
      expectedSalary: json['expected_salary'] as String?,
      uploadedCv: json['uploaded_cv'] as String?,
      serviceTitle: json['service_title'] as String?,
    );

Map<String, dynamic> _$ServiceApplicationToJson(ServiceApplication instance) =>
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
      'service_title': instance.serviceTitle,
    };
