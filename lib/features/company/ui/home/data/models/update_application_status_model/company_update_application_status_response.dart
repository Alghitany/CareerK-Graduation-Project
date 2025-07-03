import 'package:json_annotation/json_annotation.dart';

part 'company_update_application_status_response.g.dart';

@JsonSerializable()
class CompanyUpdateApplicationStatusResponseBody {
  final String message;
  final Application application;

  const CompanyUpdateApplicationStatusResponseBody({
    required this.message,
    required this.application,
  });

  factory CompanyUpdateApplicationStatusResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$CompanyUpdateApplicationStatusResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CompanyUpdateApplicationStatusResponseBodyToJson(this);
}

@JsonSerializable()
class Application {
  final String id;
  @JsonKey(name: 'job_id')
  final String jobId;
  @JsonKey(name: 'developer_id')
  final String developerId;
  final String name;
  final String email;
  final String phone;
  @JsonKey(name: 'years_of_experience')
  final int yearsOfExperience;
  @JsonKey(name: 'expected_salary')
  final String expectedSalary;
  @JsonKey(name: 'uploaded_cv')
  final String uploadedCv;
  final String status;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  const Application({
    required this.id,
    required this.jobId,
    required this.developerId,
    required this.name,
    required this.email,
    required this.phone,
    required this.yearsOfExperience,
    required this.expectedSalary,
    required this.uploadedCv,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Application.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationToJson(this);
}
