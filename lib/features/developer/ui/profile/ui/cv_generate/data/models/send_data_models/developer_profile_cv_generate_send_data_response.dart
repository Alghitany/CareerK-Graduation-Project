import 'package:json_annotation/json_annotation.dart';

part 'developer_profile_cv_generate_send_data_response.g.dart';

@JsonSerializable()
class DeveloperProfileCVGenerateSendDataResponse {
  String? message;

  DeveloperProfileCVGenerateSendDataResponse({
    this.message,
  });

  factory DeveloperProfileCVGenerateSendDataResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperProfileCVGenerateSendDataResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperProfileCVGenerateSendDataResponseToJson(this);
}
