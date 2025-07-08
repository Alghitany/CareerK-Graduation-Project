import 'package:json_annotation/json_annotation.dart';

part 'developer_profile_cv_generate_generated_request_body.g.dart';

@JsonSerializable()
class DeveloperProfileCVGenerateGeneratedRequestBody {
  DeveloperProfileCVGenerateGeneratedRequestBody();

  factory DeveloperProfileCVGenerateGeneratedRequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperProfileCVGenerateGeneratedRequestBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperProfileCVGenerateGeneratedRequestBodyToJson(this);
}
