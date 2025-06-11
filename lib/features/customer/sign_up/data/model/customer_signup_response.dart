import 'package:json_annotation/json_annotation.dart';

part 'customer_signup_response.g.dart';

@JsonSerializable()
class CustomerSignupResponse {
  String? message;

  @JsonKey(name: 'user')
  CustomerUserData? userData;

  CustomerSignupResponse({this.message, this.userData});

  factory CustomerSignupResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerSignupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerSignupResponseToJson(this);
}

@JsonSerializable()
class CustomerUserData {
  String? id;
  String? name;
  String? email;
  String? role;

  @JsonKey(name: 'profile_picture')
  String? profilePicture;

  CustomerUserData({
    this.id,
    this.name,
    this.email,
    this.role,
    this.profilePicture,
  });

  factory CustomerUserData.fromJson(Map<String, dynamic> json) =>
      _$CustomerUserDataFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerUserDataToJson(this);
}
