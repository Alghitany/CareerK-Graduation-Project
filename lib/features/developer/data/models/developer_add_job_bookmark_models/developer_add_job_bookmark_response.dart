import 'package:json_annotation/json_annotation.dart';

part 'developer_add_job_bookmark_response.g.dart';

@JsonSerializable()
class DeveloperAddJobBookmarkResponse {
  final String message;

  const DeveloperAddJobBookmarkResponse({required this.message});

  factory DeveloperAddJobBookmarkResponse.fromJson(Map<String, dynamic> json) =>
      _$DeveloperAddJobBookmarkResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperAddJobBookmarkResponseToJson(this);
}
