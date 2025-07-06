import 'package:json_annotation/json_annotation.dart';

part 'developer_jobs_recently_posted_response_body.g.dart';

@JsonSerializable()
class DeveloperJobsRecentlyPostedResponseBody {
  final String? id;
  final String? title;
  final String? location;

  @JsonKey(name: 'salary_range')
  final String? salaryRange;

  @JsonKey(name: 'experience_required')
  final String? experienceRequired;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  final List<String>? skills;

  @JsonKey(name: 'company_name')
  final String? companyName;

  final String? category;

  @JsonKey(name: 'job_type')
  final String? jobType;

  @JsonKey(name: 'job_availability')
  final String? jobAvailability;

  DeveloperJobsRecentlyPostedResponseBody({
    this.id,
    this.title,
    this.location,
    this.salaryRange,
    this.experienceRequired,
    this.createdAt,
    this.skills,
    this.companyName,
    this.category,
    this.jobType,
    this.jobAvailability,
  });

  factory DeveloperJobsRecentlyPostedResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperJobsRecentlyPostedResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperJobsRecentlyPostedResponseBodyToJson(this);
}
