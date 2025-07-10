import 'package:json_annotation/json_annotation.dart';

part 'developer_generate_cv_start_session_request_body.g.dart';

@JsonSerializable()
class DeveloperGenerateCVStartSessionRequestBody {
  DeveloperGenerateCVStartSessionRequestBody();

  factory DeveloperGenerateCVStartSessionRequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperGenerateCVStartSessionRequestBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperGenerateCVStartSessionRequestBodyToJson(this);
}
