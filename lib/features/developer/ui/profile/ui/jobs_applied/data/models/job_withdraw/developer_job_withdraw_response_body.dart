import 'package:json_annotation/json_annotation.dart';

part 'developer_job_withdraw_response_body.g.dart';

@JsonSerializable()
class DeveloperJobWithdrawResponseBody {
  final String? message;

  DeveloperJobWithdrawResponseBody({this.message});

  factory DeveloperJobWithdrawResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperJobWithdrawResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperJobWithdrawResponseBodyToJson(this);
}
