import 'package:json_annotation/json_annotation.dart';

part 'developer_profile_applied_jobs_response_body.g.dart';

@JsonSerializable()
class DeveloperProfileAppliedJobsResponseBody {
  @JsonKey(name: 'job_applications')
  final List<JobApplication>? jobApplications;

  @JsonKey(name: 'service_applications')
  final List<ServiceApplication>? serviceApplications;

  DeveloperProfileAppliedJobsResponseBody({
    this.jobApplications,
    this.serviceApplications,
  });

  factory DeveloperProfileAppliedJobsResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperProfileAppliedJobsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperProfileAppliedJobsResponseBodyToJson(this);
}

@JsonSerializable()
class JobApplication {
  final String? id;

  @JsonKey(name: 'job_id')
  final String? jobId;

  @JsonKey(name: 'developer_id')
  final String? developerId;

  final String? name;
  final String? email;
  final String? phone;

  @JsonKey(name: 'years_of_experience')
  final int? yearsOfExperience;

  @JsonKey(name: 'expected_salary')
  final String? expectedSalary;

  @JsonKey(name: 'uploaded_cv')
  final String? uploadedCv;

  final String? status;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @JsonKey(name: 'job_title')
  final String? jobTitle;

  @JsonKey(name: 'company_name')
  final String? companyName;

  JobApplication({
    this.id,
    this.jobId,
    this.developerId,
    this.name,
    this.email,
    this.phone,
    this.yearsOfExperience,
    this.expectedSalary,
    this.uploadedCv,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.jobTitle,
    this.companyName,
  });

  factory JobApplication.fromJson(Map<String, dynamic> json) =>
      _$JobApplicationFromJson(json);

  Map<String, dynamic> toJson() => _$JobApplicationToJson(this);
}

@JsonSerializable()
class ServiceApplication {
  final String? id;

  @JsonKey(name: 'developer_id')
  final String? developerId;

  @JsonKey(name: 'service_post_id')
  final String? servicePostId;

  @JsonKey(name: 'submitted_at')
  final String? submittedAt;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  final String? status;
  final String? name;
  final String? email;
  final String? phone;

  @JsonKey(name: 'years_of_experience')
  final int? yearsOfExperience;

  @JsonKey(name: 'expected_salary')
  final String? expectedSalary;

  @JsonKey(name: 'uploaded_cv')
  final String? uploadedCv;

  @JsonKey(name: 'service_title')
  final String? serviceTitle;

  ServiceApplication({
    this.id,
    this.developerId,
    this.servicePostId,
    this.submittedAt,
    this.createdAt,
    this.status,
    this.name,
    this.email,
    this.phone,
    this.yearsOfExperience,
    this.expectedSalary,
    this.uploadedCv,
    this.serviceTitle,
  });

  factory ServiceApplication.fromJson(Map<String, dynamic> json) =>
      _$ServiceApplicationFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceApplicationToJson(this);
}
