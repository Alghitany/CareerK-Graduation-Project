import 'package:json_annotation/json_annotation.dart';

part 'reject_application_response.g.dart';

@JsonSerializable()
class RejectApplicationResponseBody {
  final Application application;

  RejectApplicationResponseBody({
    required this.application,
  });

  factory RejectApplicationResponseBody.fromJson(Map<String, dynamic> json) =>
      _$RejectApplicationResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RejectApplicationResponseBodyToJson(this);
}

@JsonSerializable()
class Application {
  final String id;
  @JsonKey(name: 'developer_id')
  final String developerId;
  @JsonKey(name: 'service_post_id')
  final String servicePostId;
  @JsonKey(name: 'submitted_at')
  final String submittedAt;
  @JsonKey(name: 'created_at')
  final String createdAt;
  final String status;
  final String name;
  final String email;
  final String phone;
  @JsonKey(name: 'years_of_experience')
  final int yearsOfExperience;
  @JsonKey(name: 'expected_salary')
  final String expectedSalary;
  @JsonKey(name: 'uploaded_cv')
  final String uploadedCv;

  Application({
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
  });

  factory Application.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationToJson(this);
}
