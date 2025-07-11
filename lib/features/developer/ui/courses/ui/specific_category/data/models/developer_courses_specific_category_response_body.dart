import 'package:json_annotation/json_annotation.dart';

part 'developer_courses_specific_category_response_body.g.dart';

@JsonSerializable()
class DeveloperCoursesSpecificCategoryResponseBody {
  @JsonKey(name: 'track_name')
  final String trackName;

  final List<Course> courses;

  DeveloperCoursesSpecificCategoryResponseBody({
    required this.trackName,
    required this.courses,
  });

  factory DeveloperCoursesSpecificCategoryResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperCoursesSpecificCategoryResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperCoursesSpecificCategoryResponseBodyToJson(this);
}

@JsonSerializable()
class Course {
  @JsonKey(name: 'course_id')
  final String courseId;

  final String name;

  @JsonKey(name: 'image_url')
  final String imageUrl;

  @JsonKey(
    name: 'total_lessons',
    fromJson: _stringToInt,
    toJson: _intToString,
  )
  final int totalLessons;

  final String duration;

  @JsonKey(name: 'average_rating')
  final String? averageRating;

  Course({
    required this.courseId,
    required this.name,
    required this.imageUrl,
    required this.totalLessons,
    required this.duration,
    this.averageRating,
  });

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  Map<String, dynamic> toJson() => _$CourseToJson(this);
}

int _stringToInt(dynamic value) => int.tryParse(value.toString()) ?? 0;

String _intToString(int value) => value.toString();
