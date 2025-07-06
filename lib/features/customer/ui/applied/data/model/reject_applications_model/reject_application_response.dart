import 'package:json_annotation/json_annotation.dart';

part 'reject_application_response.g.dart';

@JsonSerializable()
class RejectApplicationResponse {
  @JsonKey(name: 'application')
  ApplicationData? application;

  RejectApplicationResponse({this.application});

  factory RejectApplicationResponse.fromJson(Map<String, dynamic> json) =>
      _$RejectApplicationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RejectApplicationResponseToJson(this);
}

@JsonSerializable()
class ApplicationData {
  String? id;

  @JsonKey(name: 'developer_id')
  String? developerId;

  @JsonKey(name: 'service_post_id')
  String? servicePostId;

  @JsonKey(name: 'submitted_at')
  String? submittedAt;

  @JsonKey(name: 'created_at')
  String? createdAt;

  String? status;
  String? name;
  String? email;
  String? phone;

  @JsonKey(name: 'years_of_experience')
  int? yearsOfExperience;

  @JsonKey(name: 'expected_salary')
  String? expectedSalary;

  @JsonKey(name: 'uploaded_cv')
  String? uploadedCv;

  ApplicationData({
    this.id,
    this.developerId,
    this.servicePostId,
    this.submittedAt,
    this.createdAt,
    this.status,
    this.name,
    this.email,
    this.phone,
    this.yearsOfExperience,
    this.expectedSalary,
    this.uploadedCv,
  });

  factory ApplicationData.fromJson(Map<String, dynamic> json) =>
      _$ApplicationDataFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationDataToJson(this);
}
