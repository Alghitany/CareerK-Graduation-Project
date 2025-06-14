import 'package:json_annotation/json_annotation.dart';

part 'company_jobs_delete_post_response.g.dart';

@JsonSerializable()
class CompanyJobsDeletePostResponse {
  final String? message;

  CompanyJobsDeletePostResponse({this.message});

  factory CompanyJobsDeletePostResponse.fromJson(Map<String, dynamic> json) =>
      _$CompanyJobsDeletePostResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyJobsDeletePostResponseToJson(this);
}
