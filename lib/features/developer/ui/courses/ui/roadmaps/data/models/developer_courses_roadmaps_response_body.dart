import 'package:json_annotation/json_annotation.dart';

part 'developer_courses_roadmaps_response_body.g.dart';

@JsonSerializable()
class DeveloperCoursesRoadmapsResponseBody {
  @JsonKey(name: 'track_id')
  final String trackId;

  @JsonKey(name: 'track_title')
  final String trackTitle;

  @JsonKey(name: 'image_url')
  final String imageUrl;

  @JsonKey(name: 'total_duration')
  final String totalDuration;

  @JsonKey(name: 'start_course')
  final String startCourse;

  @JsonKey(name: 'end_course')
  final String endCourse;

  DeveloperCoursesRoadmapsResponseBody({
    required this.trackId,
    required this.trackTitle,
    required this.imageUrl,
    required this.totalDuration,
    required this.startCourse,
    required this.endCourse,
  });

  factory DeveloperCoursesRoadmapsResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperCoursesRoadmapsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperCoursesRoadmapsResponseBodyToJson(this);
}
