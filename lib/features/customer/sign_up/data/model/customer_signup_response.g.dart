// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_signup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerSignupResponse _$CustomerSignupResponseFromJson(
        Map<String, dynamic> json) =>
    CustomerSignupResponse(
      message: json['message'] as String?,
      userData: json['user'] == null
          ? null
          : CustomerUserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerSignupResponseToJson(
        CustomerSignupResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.userData,
    };

CustomerUserData _$CustomerUserDataFromJson(Map<String, dynamic> json) =>
    CustomerUserData(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      profilePicture: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$CustomerUserDataToJson(CustomerUserData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
      'profile_picture': instance.profilePicture,
    };
