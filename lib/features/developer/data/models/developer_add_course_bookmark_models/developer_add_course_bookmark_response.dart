import 'package:json_annotation/json_annotation.dart';

part 'developer_add_course_bookmark_response.g.dart';

@JsonSerializable()
class DeveloperAddCourseBookmarkResponse {
  final bool success;
  final String message;
  final bool bookmarked;

  const DeveloperAddCourseBookmarkResponse({
    required this.success,
    required this.message,
    required this.bookmarked,
  });

  factory DeveloperAddCourseBookmarkResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperAddCourseBookmarkResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperAddCourseBookmarkResponseToJson(this);
}
