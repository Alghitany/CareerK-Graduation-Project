import 'package:json_annotation/json_annotation.dart';

part 'developer_profile_settings_get_my_cv_response_body.g.dart';

@JsonSerializable()
class DeveloperProfileSettingsGetMyCVResponseBody {
  @JsonKey(name: 'uploaded_cv')
  final String? uploadedCV;

  @JsonKey(name: 'generated_cv')
  final String? generatedCV;

  const DeveloperProfileSettingsGetMyCVResponseBody({
    this.uploadedCV,
    this.generatedCV,
  });

  factory DeveloperProfileSettingsGetMyCVResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperProfileSettingsGetMyCVResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperProfileSettingsGetMyCVResponseBodyToJson(this);
}
