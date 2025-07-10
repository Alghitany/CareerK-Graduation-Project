import 'package:json_annotation/json_annotation.dart';

part 'developer_profile_settings_update_uploaded_cv_response_body.g.dart';

@JsonSerializable()
class DeveloperProfileSettingsUpdateUploadedCVResponseBody {
  final String message;

  @JsonKey(name: 'uploaded_cv')
  final String uploadedCV;

  DeveloperProfileSettingsUpdateUploadedCVResponseBody({
    required this.message,
    required this.uploadedCV,
  });

  factory DeveloperProfileSettingsUpdateUploadedCVResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperProfileSettingsUpdateUploadedCVResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperProfileSettingsUpdateUploadedCVResponseBodyToJson(this);
}
