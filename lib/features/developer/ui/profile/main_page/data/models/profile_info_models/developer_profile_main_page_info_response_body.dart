import 'package:json_annotation/json_annotation.dart';

part 'developer_profile_main_page_info_response_body.g.dart';

@JsonSerializable()
class DeveloperProfileMainPageInfoResponseBody {
  final String? id;

  @JsonKey(name: 'first_name')
  final String? firstName;

  @JsonKey(name: 'last_name')
  final String? lastName;

  final String? email;
  final String? gender;

  @JsonKey(name: 'date_of_birth')
  final String? dateOfBirth;

  @JsonKey(name: 'phone_number')
  final String? phoneNumber;

  final String? country;
  final String? city;
  final String? address;

  @JsonKey(name: 'brief_bio')
  final String? briefBio;

  final List<String>? skills;

  @JsonKey(name: 'current_track')
  final String? currentTrack;

  @JsonKey(name: 'track_level')
  final String? trackLevel;

  @JsonKey(name: 'previous_job')
  final String? previousJob;

  @JsonKey(name: 'type_of_job')
  final String? typeOfJob;

  @JsonKey(name: 'years_of_experience')
  final String? yearsOfExperience;

  @JsonKey(name: 'expected_salary')
  final String? expectedSalary;

  @JsonKey(name: 'uploaded_cv')
  final String? uploadedCv;

  @JsonKey(name: 'interested_courses')
  final List<String>? interestedCourses;

  @JsonKey(name: 'profile_picture')
  final String? profilePicture;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  final String? profilePictureLink;
  final String? uploadedCvLink;

  DeveloperProfileMainPageInfoResponseBody({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.gender,
    this.dateOfBirth,
    this.phoneNumber,
    this.country,
    this.city,
    this.address,
    this.briefBio,
    this.skills,
    this.currentTrack,
    this.trackLevel,
    this.previousJob,
    this.typeOfJob,
    this.yearsOfExperience,
    this.expectedSalary,
    this.uploadedCv,
    this.interestedCourses,
    this.profilePicture,
    this.createdAt,
    this.updatedAt,
    this.profilePictureLink,
    this.uploadedCvLink,
  });

  factory DeveloperProfileMainPageInfoResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperProfileMainPageInfoResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperProfileMainPageInfoResponseBodyToJson(this);
}
