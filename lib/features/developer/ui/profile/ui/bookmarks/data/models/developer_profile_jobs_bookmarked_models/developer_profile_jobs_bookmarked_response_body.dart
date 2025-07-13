import 'package:json_annotation/json_annotation.dart';

part 'developer_profile_jobs_bookmarked_response_body.g.dart';

@JsonSerializable()
class DeveloperProfileJobsBookmarkedResponseBody {
  final String? id;

  @JsonKey(name: 'developer_id')
  final String? developerId;

  @JsonKey(name: 'post_id')
  final String? postId;

  @JsonKey(name: 'post_type')
  final String? postType;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  final String? title;
  final String? location;

  @JsonKey(name: 'salary_range')
  final String? salaryRange;

  @JsonKey(name: 'experience_required')
  final String? experienceRequired;

  @JsonKey(name: 'job_type')
  final String? jobType;

  @JsonKey(name: 'company_name')
  final String? companyName;

  @JsonKey(name: 'application_deadline')
  final String? applicationDeadline;

  final List<String>? skills;

  DeveloperProfileJobsBookmarkedResponseBody({
    this.id,
    this.developerId,
    this.postId,
    this.postType,
    this.createdAt,
    this.title,
    this.location,
    this.salaryRange,
    this.experienceRequired,
    this.jobType,
    this.companyName,
    this.applicationDeadline,
    this.skills,
  });

  factory DeveloperProfileJobsBookmarkedResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperProfileJobsBookmarkedResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperProfileJobsBookmarkedResponseBodyToJson(this);
}
