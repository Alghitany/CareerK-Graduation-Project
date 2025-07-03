import 'package:json_annotation/json_annotation.dart';

part 'developer_single_job_bookmark_response_model.g.dart';

@JsonSerializable()
class DeveloperSingleJobBookmarkResponseModel {
  @JsonKey(name: 'bookmarked')
  final bool bookmarked;

  const DeveloperSingleJobBookmarkResponseModel({
    required this.bookmarked,
  });

  factory DeveloperSingleJobBookmarkResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperSingleJobBookmarkResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperSingleJobBookmarkResponseModelToJson(this);
}
