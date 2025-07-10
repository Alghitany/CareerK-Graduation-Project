



import 'package:json_annotation/json_annotation.dart';

part 'developer_profile_settings_delete_cv_response.g.dart';

@JsonSerializable()
class DeveloperProfileSettingsDeleteCVResponseBody {
  final String message;

  DeveloperProfileSettingsDeleteCVResponseBody({required this.message});

  factory DeveloperProfileSettingsDeleteCVResponseBody.fromJson(Map<String, dynamic> json) =>
      _$DeveloperProfileSettingsDeleteCVResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$DeveloperProfileSettingsDeleteCVResponseBodyToJson(this);
}
