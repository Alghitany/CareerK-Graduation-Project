import 'package:json_annotation/json_annotation.dart';

part 'company_profile_info_response_body.g.dart';

@JsonSerializable()
class CompanyProfileInfoResponseBody {
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
  final String? profilePicture;

  @JsonKey(name: 'brief_description')
  final String briefDescription;

  CompanyProfileInfoResponseBody({
    required this.id,
    required this.companyName,
    required this.country,
    required this.city,
    required this.address,
    required this.phoneNumber,
    required this.email,
    this.profilePicture,
    required this.briefDescription,
  });

  factory CompanyProfileInfoResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CompanyProfileInfoResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyProfileInfoResponseBodyToJson(this);
}
