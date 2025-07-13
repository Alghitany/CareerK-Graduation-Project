import 'package:json_annotation/json_annotation.dart';

part 'specific_course_overview_response_body.g.dart';

@JsonSerializable()
class SpecificCourseOverviewResponseBody {
  @JsonKey(name: 'totalVideoTime')
  final String totalVideoTime;

  @JsonKey(name: 'hasCertificate')
  final bool hasCertificate;

  final String difficulty;

  final String description;

  SpecificCourseOverviewResponseBody({
    required this.totalVideoTime,
    required this.hasCertificate,
    required this.difficulty,
    required this.description,
  });

  factory SpecificCourseOverviewResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$SpecificCourseOverviewResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SpecificCourseOverviewResponseBodyToJson(this);
}
