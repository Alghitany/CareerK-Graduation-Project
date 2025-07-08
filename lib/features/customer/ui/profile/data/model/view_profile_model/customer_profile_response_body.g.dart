// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_profile_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerProfileResponseBody _$CustomerProfileResponseBodyFromJson(
        Map<String, dynamic> json) =>
    CustomerProfileResponseBody(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      profilePicture: json['profile_picture'] as String,
      briefDescription: json['brief_description'] as String,
      contactEmail: json['contact_email'] as String,
      phoneNumber: json['phone_number'] as String,
    );

Map<String, dynamic> _$CustomerProfileResponseBodyToJson(
        CustomerProfileResponseBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'profile_picture': instance.profilePicture,
      'brief_description': instance.briefDescription,
      'contact_email': instance.contactEmail,
      'phone_number': instance.phoneNumber,
    };
