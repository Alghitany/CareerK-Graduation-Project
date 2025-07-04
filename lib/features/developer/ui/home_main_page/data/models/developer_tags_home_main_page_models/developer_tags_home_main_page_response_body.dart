import 'package:json_annotation/json_annotation.dart';

part 'developer_tags_home_main_page_response_body.g.dart';

@JsonSerializable()
class DeveloperTagsHomeMainPageResponseBody {
  @JsonKey(name: 'track_id')
  final String trackId;

  @JsonKey(name: 'track_name')
  final String trackName;

  final String description;

  @JsonKey(name: 'image_url')
  final String imageUrl;

  DeveloperTagsHomeMainPageResponseBody({
    required this.trackId,
    required this.trackName,
    required this.description,
    required this.imageUrl,
  });

  factory DeveloperTagsHomeMainPageResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperTagsHomeMainPageResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperTagsHomeMainPageResponseBodyToJson(this);
}
