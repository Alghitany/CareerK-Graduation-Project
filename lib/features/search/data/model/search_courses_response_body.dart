import 'package:json_annotation/json_annotation.dart';

part 'search_courses_response_body.g.dart';

@JsonSerializable()
class SearchCoursesResponseBody {
  final String id;
  final String name;

  @JsonKey(name: 'image_url')
  final String imageUrl;

  final int duration;
  final double rating;

  const SearchCoursesResponseBody({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.duration,
    required this.rating,
  });

  factory SearchCoursesResponseBody.fromJson(Map<String, dynamic> json) =>
      _$SearchCoursesResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SearchCoursesResponseBodyToJson(this);
}
