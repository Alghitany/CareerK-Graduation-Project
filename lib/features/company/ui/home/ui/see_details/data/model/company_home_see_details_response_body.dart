import 'package:json_annotation/json_annotation.dart';

part 'company_home_see_details_response_body.g.dart';

@JsonSerializable()
class CompanyHomeSeeDetailsResponseBody {
  final String? applicationId;
  final String? applicantName;
  final String? applicantEmail;
  final String? phone;
  final int? yearsOfExperience;
  final String? expectedSalary;
  final String? uploadedCv;
  final String? uploadedCvLink;
  final String? status;
  final String? applicationDate;
  final String? firstName;
  final String? lastName;
  final String? address;
  final String? city;
  final String? country;

  @JsonKey(name: 'brief_bio')
  final String? briefBio;

  final String? profilePicture;
  final String? trackTitle;
  final String? jobTitle;
  final String? jobLocation;

  CompanyHomeSeeDetailsResponseBody({
    this.applicationId,
    this.applicantName,
    this.applicantEmail,
    this.phone,
    this.yearsOfExperience,
    this.expectedSalary,
    this.uploadedCv,
    this.uploadedCvLink,
    this.status,
    this.applicationDate,
    this.firstName,
    this.lastName,
    this.address,
    this.city,
    this.country,
    this.briefBio,
    this.profilePicture,
    this.trackTitle,
    this.jobTitle,
    this.jobLocation,
  });

  factory CompanyHomeSeeDetailsResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$CompanyHomeSeeDetailsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CompanyHomeSeeDetailsResponseBodyToJson(this);
}
