import 'package:json_annotation/json_annotation.dart';

part 'developer_generate_cv_start_session_response.g.dart';

@JsonSerializable()
class DeveloperGenerateCVStartSessionResponseBody {
  @JsonKey(name: 'sessionId')
  final String? sessionId;

  DeveloperGenerateCVStartSessionResponseBody({this.sessionId});

  factory DeveloperGenerateCVStartSessionResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperGenerateCVStartSessionResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperGenerateCVStartSessionResponseBodyToJson(this);
}
