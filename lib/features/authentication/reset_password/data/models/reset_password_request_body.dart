import 'package:json_annotation/json_annotation.dart';

part 'reset_password_request_body.g.dart';

@JsonSerializable()
class ResetPasswordRequestBody {
  final String email;

  ResetPasswordRequestBody({required this.email});

  Map<String, dynamic> toJson() => _$ResetPasswordRequestBodyToJson(this);

  factory ResetPasswordRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestBodyFromJson(json);
}
