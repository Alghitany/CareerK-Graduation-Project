// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_profile_edit_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerProfileEditResponse _$CustomerProfileEditResponseFromJson(
        Map<String, dynamic> json) =>
    CustomerProfileEditResponse(
      message: json['message'] as String?,
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerProfileEditResponseToJson(
        CustomerProfileEditResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'customer': instance.customer,
    };

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      briefDescription: json['brief_description'] as String?,
      contactEmail: json['contact_email'] as String?,
      phoneNumber: json['phone_number'] as String?,
      profilePicture: json['profile_picture'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'brief_description': instance.briefDescription,
      'contact_email': instance.contactEmail,
      'phone_number': instance.phoneNumber,
      'profile_picture': instance.profilePicture,
      'role': instance.role,
    };
