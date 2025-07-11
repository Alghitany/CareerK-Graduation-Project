import 'package:json_annotation/json_annotation.dart';

part 'developer_add_job_bookmark_request_body.g.dart';

@JsonSerializable()
class DeveloperAddJobBookmarkRequestBody {
  const DeveloperAddJobBookmarkRequestBody();

  factory DeveloperAddJobBookmarkRequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperAddJobBookmarkRequestBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperAddJobBookmarkRequestBodyToJson(this);
}
