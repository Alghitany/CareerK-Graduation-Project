import 'package:json_annotation/json_annotation.dart';

part 'company_profile_edit_response.g.dart';

@JsonSerializable()
class CompanyProfileEditResponse {
  final String? message;
  final Company? company;

  CompanyProfileEditResponse({this.message, this.company});

  factory CompanyProfileEditResponse.fromJson(Map<String, dynamic> json) =>
      _$CompanyProfileEditResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyProfileEditResponseToJson(this);
}

@JsonSerializable()
class Company {
  final String? id;
  @JsonKey(name: 'company_name')
  final String? companyName;
  final String? email;
  @JsonKey(name: 'brief_description')
  final String? briefDescription;
  final String? country;
  final String? city;
  final String? address;
  final String? website;
  final String? industry;
  @JsonKey(name: 'contact_name')
  final String? contactName;
  @JsonKey(name: 'contact_email')
  final String? contactEmail;
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @JsonKey(name: 'social_media_links')
  final List<dynamic>? socialMediaLinks;
  final String? role;
  @JsonKey(name: 'profile_picture')
  final String? profilePicture;

  Company({
    this.id,
    this.companyName,
    this.email,
    this.briefDescription,
    this.country,
    this.city,
    this.address,
    this.website,
    this.industry,
    this.contactName,
    this.contactEmail,
    this.phoneNumber,
    this.socialMediaLinks,
    this.role,
    this.profilePicture,
  });

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}
