import 'package:json_annotation/json_annotation.dart';

part 'customer_profile_info_response_body.g.dart';

@JsonSerializable()
class CustomerProfileInfoResponseBody {
  final String id;
  final String name;
  final String email;

  @JsonKey(name: 'profile_picture')
  final String profilePicture;

  @JsonKey(name: 'brief_description')
  final String briefDescription;

  @JsonKey(name: 'contact_email')
  final String contactEmail;

  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  CustomerProfileInfoResponseBody({
    required this.id,
    required this.name,
    required this.email,
    required this.profilePicture,
    required this.briefDescription,
    required this.contactEmail,
    required this.phoneNumber,
  });

  factory CustomerProfileInfoResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CustomerProfileInfoResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CustomerProfileInfoResponseBodyToJson(this);
}
