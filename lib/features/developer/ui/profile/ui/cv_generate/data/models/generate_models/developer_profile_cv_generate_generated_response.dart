import 'package:json_annotation/json_annotation.dart';

part 'developer_profile_cv_generate_generated_response.g.dart';

@JsonSerializable()
class DeveloperProfileCVGenerateGeneratedResponse {
  @JsonKey(name: 'message')
  final String? message;

  @JsonKey(name: 'downloadUrl')
  final String? downloadUrl;

  DeveloperProfileCVGenerateGeneratedResponse({
    this.message,
    this.downloadUrl,
  });

  factory DeveloperProfileCVGenerateGeneratedResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperProfileCVGenerateGeneratedResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperProfileCVGenerateGeneratedResponseToJson(this);
}
