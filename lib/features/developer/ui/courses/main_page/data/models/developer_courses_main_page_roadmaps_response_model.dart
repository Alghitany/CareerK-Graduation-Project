import 'package:json_annotation/json_annotation.dart';

part 'developer_courses_main_page_roadmaps_response_model.g.dart';

@JsonSerializable()
class DeveloperCoursesMainPageRoadmapsResponseModel {
  @JsonKey(name: 'track_id')
  final String trackId;

  @JsonKey(name: 'track_name')
  final String trackName;

  final String description;

  @JsonKey(name: 'image_url')
  final String imageUrl;

  DeveloperCoursesMainPageRoadmapsResponseModel({
    required this.trackId,
    required this.trackName,
    required this.description,
    required this.imageUrl,
  });

  factory DeveloperCoursesMainPageRoadmapsResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperCoursesMainPageRoadmapsResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperCoursesMainPageRoadmapsResponseModelToJson(this);
}
