import 'package:json_annotation/json_annotation.dart';

part 'developer_recommendations_response_body.g.dart';

@JsonSerializable()
class DeveloperRecommendationsResponseBody {
  @JsonKey(name: 'job_recommendations')
  final List<JobRecommendation>? jobRecommendations;

  @JsonKey(name: 'service_recommendations')
  final List<ServiceRecommendation>? serviceRecommendations;

  DeveloperRecommendationsResponseBody({
    this.jobRecommendations,
    this.serviceRecommendations,
  });

  factory DeveloperRecommendationsResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperRecommendationsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperRecommendationsResponseBodyToJson(this);
}

@JsonSerializable()
class JobRecommendation {
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

  final List<String>? responsibilities;
  final List<String>? qualifications;
  final List<String>? benefits;

  @JsonKey(name: 'application_deadline')
  final String? applicationDeadline;

  @JsonKey(name: 'company_website')
  final String? companyWebsite;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  final List<String>? skills;
  final String? category;

  @JsonKey(name: 'deadline_task')
  final String? deadlineTask;

  @JsonKey(name: 'company_department')
  final String? companyDepartment;

  @JsonKey(name: 'job_availability')
  final String? jobAvailability;

  final double? score;

  JobRecommendation({
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
    this.category,
    this.deadlineTask,
    this.companyDepartment,
    this.jobAvailability,
    this.score,
  });

  factory JobRecommendation.fromJson(Map<String, dynamic> json) =>
      _$JobRecommendationFromJson(json);

  Map<String, dynamic> toJson() => _$JobRecommendationToJson(this);
}

@JsonSerializable()
class ServiceRecommendation {
  final String? id;

  @JsonKey(name: 'customer_id')
  final String? customerId;

  final String? title;
  final String? description;

  @JsonKey(name: 'budget_range')
  final String? budgetRange;

  @JsonKey(name: 'service_type')
  final String? serviceType;

  @JsonKey(name: 'required_skills')
  final List<String>? requiredSkills;

  final String? deadline;

  @JsonKey(name: 'contact_info')
  final String? contactInfo;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  final double? score;

  ServiceRecommendation({
    this.id,
    this.customerId,
    this.title,
    this.description,
    this.budgetRange,
    this.serviceType,
    this.requiredSkills,
    this.deadline,
    this.contactInfo,
    this.createdAt,
    this.updatedAt,
    this.score,
  });

  factory ServiceRecommendation.fromJson(Map<String, dynamic> json) =>
      _$ServiceRecommendationFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceRecommendationToJson(this);
}
