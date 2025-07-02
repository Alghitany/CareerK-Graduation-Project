import 'package:json_annotation/json_annotation.dart';

part 'developer_jobs_job_details_response_body.g.dart';

@JsonSerializable()
class DeveloperJobsJobDetailsResponseBody {
  final String? id;
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
  @JsonKey(name: 'company_profile_picture')
  final String? companyProfilePicture;
  final String? industry;
  final String? city;
  final String? country;

  DeveloperJobsJobDetailsResponseBody({
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
    this.companyProfilePicture,
    this.industry,
    this.city,
    this.country,
  });

  factory DeveloperJobsJobDetailsResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperJobsJobDetailsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperJobsJobDetailsResponseBodyToJson(this);
}
