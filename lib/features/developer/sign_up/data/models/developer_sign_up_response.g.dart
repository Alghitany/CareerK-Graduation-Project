// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperSignupResponse _$DeveloperSignupResponseFromJson(
        Map<String, dynamic> json) =>
    DeveloperSignupResponse(
      message: json['message'] as String?,
      userData: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeveloperSignupResponseToJson(
        DeveloperSignupResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.userData,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      id: json['id'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      profilePicture: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'role': instance.role,
      'profile_picture': instance.profilePicture,
    };
