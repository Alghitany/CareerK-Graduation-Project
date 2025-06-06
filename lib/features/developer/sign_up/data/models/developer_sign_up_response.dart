import 'package:json_annotation/json_annotation.dart';
part 'developer_sign_up_response.g.dart';

@JsonSerializable()
class DeveloperSignupResponse {
  String? message;
  @JsonKey(name: 'user')
  UserData? userData;

  DeveloperSignupResponse({this.message, this.userData});

  factory DeveloperSignupResponse.fromJson(Map<String, dynamic> json) =>
      _$DeveloperSignupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeveloperSignupResponseToJson(this);
}

@JsonSerializable()
class UserData {
  String? id;
  @JsonKey(name: 'first_name')
  String? firstName;
  @JsonKey(name: 'last_name')
  String? lastName;
  String? email;
  String? role;
  @JsonKey(name: 'profile_picture')
  String? profilePicture;

  UserData({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.role,
    this.profilePicture,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
