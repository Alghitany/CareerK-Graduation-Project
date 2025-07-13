import 'package:json_annotation/json_annotation.dart';

part 'developer_add_course_bookmark_request_body.g.dart';

@JsonSerializable()
class DeveloperAddCourseBookmarkRequestBody {
  const DeveloperAddCourseBookmarkRequestBody();

  factory DeveloperAddCourseBookmarkRequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperAddCourseBookmarkRequestBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperAddCourseBookmarkRequestBodyToJson(this);
}
