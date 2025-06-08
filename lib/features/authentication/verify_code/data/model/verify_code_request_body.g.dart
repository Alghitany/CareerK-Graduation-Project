// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_code_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyCodeRequestBody _$VerifyCodeRequestBodyFromJson(
        Map<String, dynamic> json) =>
    VerifyCodeRequestBody(
      email: json['email'] as String,
      otp: json['otp'] as String,
    );

Map<String, dynamic> _$VerifyCodeRequestBodyToJson(
        VerifyCodeRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'otp': instance.otp,
    };
