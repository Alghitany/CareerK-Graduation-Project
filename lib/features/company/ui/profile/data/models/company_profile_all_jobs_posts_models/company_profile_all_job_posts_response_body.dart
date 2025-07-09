import 'package:json_annotation/json_annotation.dart';

part 'company_profile_all_job_posts_response_body.g.dart';

@JsonSerializable()
class CompanyProfileAllJobPostsResponseBody {
  @JsonKey(name: 'totalJobs')
  final int totalJobs;

  @JsonKey(name: 'companyName')
  final String companyName;

  final List<JobPostItem> jobs;

  CompanyProfileAllJobPostsResponseBody({
    required this.totalJobs,
    required this.companyName,
    required this.jobs,
  });

  factory CompanyProfileAllJobPostsResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$CompanyProfileAllJobPostsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CompanyProfileAllJobPostsResponseBodyToJson(this);
}

@JsonSerializable()
class JobPostItem {
  final String id;
  final String title;
  final String location;

  JobPostItem({
    required this.id,
    required this.title,
    required this.location,
  });

  factory JobPostItem.fromJson(Map<String, dynamic> json) =>
      _$JobPostItemFromJson(json);

  Map<String, dynamic> toJson() => _$JobPostItemToJson(this);
}
