import 'package:json_annotation/json_annotation.dart';

part 'customer_jobs_post_response.g.dart';

@JsonSerializable()
class CustomerJobsPostResponse {
  final String? message;
  final CustomerJobData? job;

  CustomerJobsPostResponse({this.message, this.job});

  factory CustomerJobsPostResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerJobsPostResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerJobsPostResponseToJson(this);
}

@JsonSerializable()
class CustomerJobData {
  final String? id;

  final String? title;
  final String? description;

  @JsonKey(name: 'budget_range')
  final String? budgetRange;

  @JsonKey(name: 'service_type')
  final String? serviceType;

  @JsonKey(name: 'required_skills')
  final List<String>? requiredSkills;

  final String? deadline;

  @JsonKey(name: 'contact_info')
  final String? contactInfo;

  @JsonKey(name: 'customer_id')
  final String? customerId;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  CustomerJobData({
    this.id,
    this.title,
    this.description,
    this.budgetRange,
    this.serviceType,
    this.requiredSkills,
    this.deadline,
    this.contactInfo,
    this.customerId,
    this.createdAt,
    this.updatedAt,
  });

  factory CustomerJobData.fromJson(Map<String, dynamic> json) =>
      _$CustomerJobDataFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerJobDataToJson(this);
}
