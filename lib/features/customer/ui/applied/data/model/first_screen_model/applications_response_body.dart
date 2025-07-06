import 'package:json_annotation/json_annotation.dart';

part 'applications_response_body.g.dart';

/// Represents the response body containing a list of applications.
@JsonSerializable()
class ApplicationsResponseBody {
  @JsonKey(name: 'applications')
  final List<ApplicationItem> applications;

  ApplicationsResponseBody({
    required this.applications,
  });

  factory ApplicationsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ApplicationsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationsResponseBodyToJson(this);
}

/// Represents a single application item.
@JsonSerializable()
class ApplicationItem {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'developer_id')
  final String developerId;

  @JsonKey(name: 'service_post_id')
  final String servicePostId;

  @JsonKey(name: 'submitted_at')
  final String submittedAt;

  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'status')
  final String status;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'phone')
  final String phone;

  @JsonKey(name: 'years_of_experience')
  final int yearsOfExperience;

  @JsonKey(name: 'expected_salary')
  final String expectedSalary;

  @JsonKey(name: 'uploaded_cv')
  final String uploadedCv;

  @JsonKey(name: 'first_name')
  final String? firstName;

  @JsonKey(name: 'last_name')
  final String? lastName;

  @JsonKey(name: 'profile_picture')
  final String? profilePicture;

  ApplicationItem({
    required this.id,
    required this.developerId,
    required this.servicePostId,
    required this.submittedAt,
    required this.createdAt,
    required this.status,
    required this.name,
    required this.email,
    required this.phone,
    required this.yearsOfExperience,
    required this.expectedSalary,
    required this.uploadedCv,
    this.firstName,
    this.lastName,
    this.profilePicture,
  });

  factory ApplicationItem.fromJson(Map<String, dynamic> json) =>
      _$ApplicationItemFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationItemToJson(this);
}
