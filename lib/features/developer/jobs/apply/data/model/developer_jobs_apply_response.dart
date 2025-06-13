import 'package:json_annotation/json_annotation.dart';

part 'developer_jobs_apply_response.g.dart';

@JsonSerializable()
class DeveloperJobsApplyResponse {
  final String? message;

  DeveloperJobsApplyResponse({this.message});

  factory DeveloperJobsApplyResponse.fromJson(Map<String, dynamic> json) =>
      _$DeveloperJobsApplyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeveloperJobsApplyResponseToJson(this);
}
