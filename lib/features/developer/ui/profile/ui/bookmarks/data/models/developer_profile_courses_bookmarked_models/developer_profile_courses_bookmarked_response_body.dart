import 'package:json_annotation/json_annotation.dart';

part 'developer_profile_courses_bookmarked_response_body.g.dart';

@JsonSerializable()
class DeveloperProfileCoursesBookmarkedResponseBody {
  @JsonKey(name: 'course_id')
  final String? courseId;

  final String? name;

  @JsonKey(name: 'image_url')
  final String? imageUrl;

  final String? description;

  @JsonKey(name: 'average_rating')
  final String? averageRating;

  @JsonKey(name: 'total_lessons')
  final String? totalLessons;

  final String? duration;

  @JsonKey(name: 'bookmarked_at')
  final String? bookmarkedAt;

  DeveloperProfileCoursesBookmarkedResponseBody({
    this.courseId,
    this.name,
    this.imageUrl,
    this.description,
    this.averageRating,
    this.totalLessons,
    this.duration,
    this.bookmarkedAt,
  });

  factory DeveloperProfileCoursesBookmarkedResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperProfileCoursesBookmarkedResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperProfileCoursesBookmarkedResponseBodyToJson(this);
}
