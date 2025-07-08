import 'package:json_annotation/json_annotation.dart';

part 'company_profile_response_body.g.dart';

@JsonSerializable()
class CompanyProfileResponseBody {
  final String id;

  @JsonKey(name: 'company_name')
  final String companyName;

  final String country;
  final String city;
  final String address;

  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  final String email;

  @JsonKey(name: 'profile_picture')
  final String profilePicture;

  @JsonKey(name: 'brief_description')
  final String briefDescription;

  CompanyProfileResponseBody({
    required this.id,
    required this.companyName,
    required this.country,
    required this.city,
    required this.address,
    required this.phoneNumber,
    required this.email,
    required this.profilePicture,
    required this.briefDescription,
  });

  factory CompanyProfileResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CompanyProfileResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyProfileResponseBodyToJson(this);
}
