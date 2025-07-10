import 'package:json_annotation/json_annotation.dart';

part 'developer_profile_settings_delete_cv_request_body.g.dart';

@JsonSerializable()
class DeveloperProfileSettingsDeleteCVRequestBody {
  final String type;

  DeveloperProfileSettingsDeleteCVRequestBody({required this.type});

  Map<String, dynamic> toJson() =>
      _$DeveloperProfileSettingsDeleteCVRequestBodyToJson(this);
}
