import 'package:json_annotation/json_annotation.dart';

part 'company_jobs_post_response.g.dart';

@JsonSerializable()
class CompanyJobsPostResponse {
  final String? message;
  final JobData? job;

  CompanyJobsPostResponse({this.message, this.job});

  factory CompanyJobsPostResponse.fromJson(Map<String, dynamic> json) =>
      _$CompanyJobsPostResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyJobsPostResponseToJson(this);
}

@JsonSerializable()
class JobData {
  final String? id;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'company_id')
  final String? companyId;

  @JsonKey(name: 'job_type')
  final String? jobType;

  final String? location;

  @JsonKey(name: 'salary_range')
  final String? salaryRange;

  @JsonKey(name: 'experience_required')
  final String? experienceRequired;

  @JsonKey(name: 'job_description')
  final String? jobDescription;

  final String? responsibilities;
  final String? qualifications;
  final String? benefits;

  @JsonKey(name: 'application_deadline')
  final String? applicationDeadline;

  @JsonKey(name: 'company_website')
  final String? companyWebsite;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  final List<String>? skills;

  @JsonKey(name: 'company_name')
  final String? companyName;

  final String? category;

  @JsonKey(name: 'deadline_task')
  final String? deadlineTask;

  @JsonKey(name: 'company_department')
  final String? companyDepartment;

  @JsonKey(name: 'job_availability')
  final String? jobAvailability;

  JobData({
    this.id,
    this.title,
    this.companyId,
    this.jobType,
    this.location,
    this.salaryRange,
    this.experienceRequired,
    this.jobDescription,
    this.responsibilities,
    this.qualifications,
    this.benefits,
    this.applicationDeadline,
    this.companyWebsite,
    this.createdAt,
    this.updatedAt,
    this.skills,
    this.companyName,
    this.category,
    this.deadlineTask,
    this.companyDepartment,
    this.jobAvailability,
  });

  factory JobData.fromJson(Map<String, dynamic> json) =>
      _$JobDataFromJson(json);

  Map<String, dynamic> toJson() => _$JobDataToJson(this);
}
