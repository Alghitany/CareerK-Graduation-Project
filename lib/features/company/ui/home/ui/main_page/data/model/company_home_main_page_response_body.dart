import 'package:json_annotation/json_annotation.dart';

part 'company_home_main_page_response_body.g.dart';

@JsonSerializable()
class CompanyHomeMainPageResponseBody {
  final CompanyInfo? companyInfo;
  final List<AvailableDeveloper>? availableDevelopers;
  final List<RecentAppliedDeveloper>? recentAppliedDevelopers;

  CompanyHomeMainPageResponseBody({
    this.companyInfo,
    this.availableDevelopers,
    this.recentAppliedDevelopers,
  });

  factory CompanyHomeMainPageResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CompanyHomeMainPageResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CompanyHomeMainPageResponseBodyToJson(this);
}

@JsonSerializable()
class CompanyInfo {
  @JsonKey(name: 'company_name')
  final String? companyName;
  final String? industry;
  @JsonKey(name: 'profile_picture')
  final String? profilePicture;

  CompanyInfo({
    this.companyName,
    this.industry,
    this.profilePicture,
  });

  factory CompanyInfo.fromJson(Map<String, dynamic> json) =>
      _$CompanyInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyInfoToJson(this);
}

@JsonSerializable()
class AvailableDeveloper {
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? currentTrack;
  final String? trackLevel;
  final String? profilePicture;

  AvailableDeveloper({
    this.id,
    this.firstName,
    this.lastName,
    this.currentTrack,
    this.trackLevel,
    this.profilePicture,
  });

  factory AvailableDeveloper.fromJson(Map<String, dynamic> json) =>
      _$AvailableDeveloperFromJson(json);

  Map<String, dynamic> toJson() => _$AvailableDeveloperToJson(this);
}

@JsonSerializable()
class RecentAppliedDeveloper {
  final String? developerId;
  final String? firstName;
  final String? lastName;
  final String? address;
  final String? profilePicture;
  final String? uploadedCv;
  final String? uploadedCvLink;
  final int? yearsOfExperience;
  final String? expectedSalary;
  final String? applicationDate;
  final String? status;
  final String? jobTitle;
  final String? applicationId;

  RecentAppliedDeveloper({
    this.developerId,
    this.firstName,
    this.lastName,
    this.address,
    this.profilePicture,
    this.uploadedCv,
    this.uploadedCvLink,
    this.yearsOfExperience,
    this.expectedSalary,
    this.applicationDate,
    this.status,
    this.jobTitle,
    this.applicationId,
  });

  factory RecentAppliedDeveloper.fromJson(Map<String, dynamic> json) =>
      _$RecentAppliedDeveloperFromJson(json);

  Map<String, dynamic> toJson() => _$RecentAppliedDeveloperToJson(this);
}
