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
  @JsonKey(name: 'application_id')
  final String? applicationId;

  final String? status;

  @JsonKey(name: 'applied_at')
  final String? appliedAt;

  @JsonKey(name: 'job_post')
  final JobPost? jobPost;

  JobApplication({
    this.applicationId,
    this.status,
    this.appliedAt,
    this.jobPost,
  });

  factory JobApplication.fromJson(Map<String, dynamic> json) =>
      _$JobApplicationFromJson(json);

  Map<String, dynamic> toJson() => _$JobApplicationToJson(this);
}

@JsonSerializable()
class JobPost {
  final String? id;
  final String? title;
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
  final List<String>? skills;
  final String? category;
  @JsonKey(name: 'deadline_task')
  final String? deadlineTask;
  @JsonKey(name: 'company_department')
  final String? companyDepartment;
  @JsonKey(name: 'job_availability')
  final String? jobAvailability;
  final Company? company;

  JobPost({
    this.id,
    this.title,
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
    this.skills,
    this.category,
    this.deadlineTask,
    this.companyDepartment,
    this.jobAvailability,
    this.company,
  });

  factory JobPost.fromJson(Map<String, dynamic> json) =>
      _$JobPostFromJson(json);

  Map<String, dynamic> toJson() => _$JobPostToJson(this);
}

@JsonSerializable()
class Company {
  final String? id;
  @JsonKey(name: 'company_name')
  final String? companyName;
  @JsonKey(name: 'profile_picture')
  final String? profilePicture;
  final String? industry;

  Company({
    this.id,
    this.companyName,
    this.profilePicture,
    this.industry,
  });

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}

@JsonSerializable()
class ServiceApplication {
  @JsonKey(name: 'application_id')
  final String? applicationId;

  final String? status;

  @JsonKey(name: 'submitted_at')
  final String? submittedAt;

  @JsonKey(name: 'service_post')
  final ServicePost? servicePost;

  ServiceApplication({
    this.applicationId,
    this.status,
    this.submittedAt,
    this.servicePost,
  });

  factory ServiceApplication.fromJson(Map<String, dynamic> json) =>
      _$ServiceApplicationFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceApplicationToJson(this);
}

@JsonSerializable()
class ServicePost {
  final String? id;
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
  final Customer? customer;

  ServicePost({
    this.id,
    this.title,
    this.description,
    this.budgetRange,
    this.serviceType,
    this.requiredSkills,
    this.deadline,
    this.contactInfo,
    this.createdAt,
    this.updatedAt,
    this.customer,
  });

  factory ServicePost.fromJson(Map<String, dynamic> json) =>
      _$ServicePostFromJson(json);

  Map<String, dynamic> toJson() => _$ServicePostToJson(this);
}

@JsonSerializable()
class Customer {
  final String? id;
  final String? name;
  @JsonKey(name: 'profile_picture')
  final String? profilePicture;

  Customer({
    this.id,
    this.name,
    this.profilePicture,
  });

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
