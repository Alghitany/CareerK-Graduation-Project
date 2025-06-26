// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanySignupResponse _$CompanySignupResponseFromJson(
        Map<String, dynamic> json) =>
    CompanySignupResponse(
      message: json['message'] as String?,
      userData: json['user'] == null
          ? null
          : CompanyUserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompanySignupResponseToJson(
        CompanySignupResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.userData,
    };

CompanyUserData _$CompanyUserDataFromJson(Map<String, dynamic> json) =>
    CompanyUserData(
      id: json['id'] as String?,
      companyName: json['company_name'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      profilePicture: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$CompanyUserDataToJson(CompanyUserData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_name': instance.companyName,
      'email': instance.email,
      'role': instance.role,
      'profile_picture': instance.profilePicture,
    };
