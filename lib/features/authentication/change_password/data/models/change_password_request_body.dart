import 'package:json_annotation/json_annotation.dart';

part 'change_password_request_body.g.dart';

@JsonSerializable()
class ChangePasswordRequestBody {
  final String email;
  final String otp;
  final String password;

  @JsonKey(name: 'confirm_password')
  final String confirmPassword;

  ChangePasswordRequestBody({
    required this.email,
    required this.otp,
    required this.password,
    required this.confirmPassword,
  });

  factory ChangePasswordRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ChangePasswordRequestBodyToJson(this);
}
