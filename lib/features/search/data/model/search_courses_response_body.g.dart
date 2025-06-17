// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_courses_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchCoursesResponseBody _$SearchCoursesResponseBodyFromJson(
        Map<String, dynamic> json) =>
    SearchCoursesResponseBody(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['image_url'] as String,
      duration: (json['duration'] as num).toInt(),
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$SearchCoursesResponseBodyToJson(
        SearchCoursesResponseBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'duration': instance.duration,
      'rating': instance.rating,
    };
