import 'package:json_annotation/json_annotation.dart';

part 'verify_code_request_body.g.dart';

@JsonSerializable()
class VerifyCodeRequestBody {
  final String email;
  final String otp;

  VerifyCodeRequestBody({required this.email, required this.otp});

  Map<String, dynamic> toJson() => _$VerifyCodeRequestBodyToJson(this);

  factory VerifyCodeRequestBody.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeRequestBodyFromJson(json);
}
