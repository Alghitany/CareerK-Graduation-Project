import 'package:json_annotation/json_annotation.dart';

part 'developer_courses_home_main_page_response_body.g.dart';

@JsonSerializable()
class DeveloperCoursesHomeMainPageResponseBody {
  @JsonKey(name: 'course_id')
  final String? courseId;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @JsonKey(name: 'total_lessons')
  final int? totalLessons;

  @JsonKey(name: 'duration')
  final String? duration;

  @JsonKey(name: 'average_rating')
  final String? averageRating;

  DeveloperCoursesHomeMainPageResponseBody({
    this.courseId,
    this.name,
    this.imageUrl,
    this.totalLessons,
    this.duration,
    this.averageRating,
  });

  factory DeveloperCoursesHomeMainPageResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperCoursesHomeMainPageResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperCoursesHomeMainPageResponseBodyToJson(this);
}
