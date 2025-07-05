import 'package:json_annotation/json_annotation.dart';

part 'specific_course_header_response_body.g.dart';

@JsonSerializable()
class SpecificCourseHeaderResponseBody {
  final String name;

  @JsonKey(name: 'imageUrl')
  final String imageUrl;

  @JsonKey(name: 'averageRating')
  final double averageRating;

  @JsonKey(
    name: 'videoLessons',
    fromJson: _dynamicToInt,
    toJson: _intToString,
  )
  final int videoLessons;

  @JsonKey(name: 'previewVideoUrl')
  final String? previewVideoUrl; // <- nullable here

  SpecificCourseHeaderResponseBody({
    required this.name,
    required this.imageUrl,
    required this.averageRating,
    required this.videoLessons,
    required this.previewVideoUrl,
  });

  factory SpecificCourseHeaderResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$SpecificCourseHeaderResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SpecificCourseHeaderResponseBodyToJson(this);
}

int _dynamicToInt(dynamic value) => int.tryParse(value.toString()) ?? 0;

String _intToString(int value) => value.toString();
