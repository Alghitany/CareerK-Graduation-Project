import 'package:json_annotation/json_annotation.dart';

part 'developer_single_course_bookmark_response_model.g.dart';

@JsonSerializable()
class DeveloperSingleCourseBookmarkResponseModel {
  @JsonKey(name: 'is_bookmarked')
  final bool isBookmarked;

  const DeveloperSingleCourseBookmarkResponseModel({
    required this.isBookmarked,
  });

  factory DeveloperSingleCourseBookmarkResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperSingleCourseBookmarkResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperSingleCourseBookmarkResponseModelToJson(this);
}
