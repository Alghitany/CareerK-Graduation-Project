import 'package:json_annotation/json_annotation.dart';

part 'developer_profile_edit_response.g.dart';

@JsonSerializable()
class DeveloperProfileEditResponse {
  final String? message;

  @JsonKey(name: 'developer')
  final DeveloperData? developerData;

  DeveloperProfileEditResponse({this.message, this.developerData});

  factory DeveloperProfileEditResponse.fromJson(Map<String, dynamic> json) =>
      _$DeveloperProfileEditResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeveloperProfileEditResponseToJson(this);
}

@JsonSerializable()
class DeveloperData {
  final String? id;

  @JsonKey(name: 'first_name')
  final String? firstName;

  @JsonKey(name: 'last_name')
  final String? lastName;

  final String? email;

  @JsonKey(name: 'profile_picture')
  final String? profilePicture;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  DeveloperData({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.profilePicture,
    this.updatedAt,
  });

  factory DeveloperData.fromJson(Map<String, dynamic> json) =>
      _$DeveloperDataFromJson(json);

  Map<String, dynamic> toJson() => _$DeveloperDataToJson(this);
}
