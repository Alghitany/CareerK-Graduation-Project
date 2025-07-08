import 'package:json_annotation/json_annotation.dart';

part 'customer_profile_response_body.g.dart';

@JsonSerializable()
class CustomerProfileResponseBody {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'profile_picture')
  final String profilePicture;

  @JsonKey(name: 'brief_description')
  final String briefDescription;

  @JsonKey(name: 'contact_email')
  final String contactEmail;

  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  CustomerProfileResponseBody({
    required this.id,
    required this.name,
    required this.email,
    required this.profilePicture,
    required this.briefDescription,
    required this.contactEmail,
    required this.phoneNumber,
  });

  factory CustomerProfileResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CustomerProfileResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerProfileResponseBodyToJson(this);
}
