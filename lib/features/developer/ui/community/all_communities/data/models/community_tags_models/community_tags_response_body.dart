import 'package:json_annotation/json_annotation.dart';

part 'community_tags_response_body.g.dart';

@JsonSerializable()
class CommunityTagsResponseBody {
  @JsonKey(name: 'tag')
  final List<String> tags;

  CommunityTagsResponseBody({required this.tags});

  factory CommunityTagsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CommunityTagsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityTagsResponseBodyToJson(this);
}
