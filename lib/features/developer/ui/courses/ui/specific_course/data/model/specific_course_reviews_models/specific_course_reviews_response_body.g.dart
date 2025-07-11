// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specific_course_reviews_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecificCourseReviewsResponseBody _$SpecificCourseReviewsResponseBodyFromJson(
        Map<String, dynamic> json) =>
    SpecificCourseReviewsResponseBody(
      averageRating: (json['averageRating'] as num).toDouble(),
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecificCourseReviewsResponseBodyToJson(
        SpecificCourseReviewsResponseBody instance) =>
    <String, dynamic>{
      'averageRating': instance.averageRating,
      'reviews': instance.reviews,
    };

Review _$ReviewFromJson(Map<String, dynamic> json) => Review(
      developer: json['developer'] as String,
      profilePicture: json['profilePicture'] as String?,
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      'developer': instance.developer,
      'profilePicture': instance.profilePicture,
      'rating': instance.rating,
      'comment': instance.comment,
      'date': instance.date,
    };
