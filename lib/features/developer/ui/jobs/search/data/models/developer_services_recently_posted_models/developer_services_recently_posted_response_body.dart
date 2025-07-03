import 'package:json_annotation/json_annotation.dart';

part 'developer_services_recently_posted_response_body.g.dart';

@JsonSerializable()
class DeveloperServicesRecentlyPostedResponseBody {
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

  @JsonKey(name: 'created_at')
  final String? createdAt;

  DeveloperServicesRecentlyPostedResponseBody({
    this.id,
    this.title,
    this.description,
    this.budgetRange,
    this.serviceType,
    this.requiredSkills,
    this.deadline,
    this.createdAt,
  });

  factory DeveloperServicesRecentlyPostedResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperServicesRecentlyPostedResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperServicesRecentlyPostedResponseBodyToJson(this);
}
