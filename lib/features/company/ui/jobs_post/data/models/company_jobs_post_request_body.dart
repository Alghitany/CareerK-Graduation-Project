import 'package:json_annotation/json_annotation.dart';

part 'company_jobs_post_request_body.g.dart';

@JsonSerializable()
class CompanyJobsPostRequestBody {
  final String title;
  @JsonKey(name: 'job_description')
  final String jobDescription;
  @JsonKey(name: 'job_type')
  final String jobType;
  final String location;
  @JsonKey(name: 'salary_range')
  final String salaryRange;
  @JsonKey(name: 'deadline_task')
  final String deadlineTask;
  final List<String> skills;
  @JsonKey(name: 'experience_required')
  final String experienceRequired;
  @JsonKey(name: 'company_department')
  final String companyDepartment;
  @JsonKey(name: 'job_availability')
  final String jobAvailability;

  CompanyJobsPostRequestBody({
    required this.title,
    required this.jobDescription,
    required this.jobType,
    required this.location,
    required this.salaryRange,
    required this.deadlineTask,
    required this.skills,
    required this.experienceRequired,
    required this.companyDepartment,
    required this.jobAvailability,
  });

  factory CompanyJobsPostRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CompanyJobsPostRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyJobsPostRequestBodyToJson(this);
}
