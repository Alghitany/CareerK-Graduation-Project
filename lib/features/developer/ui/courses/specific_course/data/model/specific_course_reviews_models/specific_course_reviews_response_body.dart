import 'package:json_annotation/json_annotation.dart';

part 'specific_course_reviews_response_body.g.dart';

@JsonSerializable()
class SpecificCourseReviewsResponseBody {
  @JsonKey(name: 'averageRating')
  final double averageRating;

  final List<Review> reviews;

  SpecificCourseReviewsResponseBody({
    required this.averageRating,
    required this.reviews,
  });

  factory SpecificCourseReviewsResponseBody.fromJson(
      Map<String, dynamic> json) =>
      _$SpecificCourseReviewsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SpecificCourseReviewsResponseBodyToJson(this);
}

@JsonSerializable()
class Review {
  final String developer;

  final String? profilePicture;

  final int rating;

  final String comment;

  final String date;

  Review({
    required this.developer,
    this.profilePicture,
    required this.rating,
    required this.comment,
    required this.date,
  });

  factory Review.fromJson(Map<String, dynamic> json) =>
      _$ReviewFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewToJson(this);
}
