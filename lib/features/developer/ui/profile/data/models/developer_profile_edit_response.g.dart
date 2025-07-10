// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_profile_edit_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperProfileEditResponse _$DeveloperProfileEditResponseFromJson(
        Map<String, dynamic> json) =>
    DeveloperProfileEditResponse(
      message: json['message'] as String?,
      developerData: json['developer'] == null
          ? null
          : DeveloperData.fromJson(json['developer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeveloperProfileEditResponseToJson(
        DeveloperProfileEditResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'developer': instance.developerData,
    };

DeveloperData _$DeveloperDataFromJson(Map<String, dynamic> json) =>
    DeveloperData(
      id: json['id'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      profilePicture: json['profile_picture'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$DeveloperDataToJson(DeveloperData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'profile_picture': instance.profilePicture,
      'updated_at': instance.updatedAt,
    };
