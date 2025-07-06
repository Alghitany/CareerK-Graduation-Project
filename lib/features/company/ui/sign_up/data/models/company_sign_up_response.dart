import 'package:json_annotation/json_annotation.dart';

part 'company_sign_up_response.g.dart';

@JsonSerializable()
class CompanySignupResponse {
  String? message;

  @JsonKey(name: 'user')
  CompanyUserData? userData;

  CompanySignupResponse({this.message, this.userData});

  factory CompanySignupResponse.fromJson(Map<String, dynamic> json) =>
      _$CompanySignupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CompanySignupResponseToJson(this);
}

@JsonSerializable()
class CompanyUserData {
  String? id;

  @JsonKey(name: 'company_name')
  String? companyName;

  String? email;
  String? role;

  @JsonKey(name: 'profile_picture')
  String? profilePicture;

  CompanyUserData({
    this.id,
    this.companyName,
    this.email,
    this.role,
    this.profilePicture,
  });

  factory CompanyUserData.fromJson(Map<String, dynamic> json) =>
      _$CompanyUserDataFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyUserDataToJson(this);
}
