import 'package:json_annotation/json_annotation.dart';

part 'developer_profile_services_bookmarked_response_body.g.dart';

@JsonSerializable()
class DeveloperProfileServicesBookmarkedResponseBody {
  final String? id;

  @JsonKey(name: 'developer_id')
  final String? developerId;

  @JsonKey(name: 'post_id')
  final String? postId;

  @JsonKey(name: 'post_type')
  final String? postType;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  final String? title;
  final String? description;

  @JsonKey(name: 'budget_range')
  final String? budgetRange;

  @JsonKey(name: 'service_type')
  final String? serviceType;

  @JsonKey(name: 'required_skills')
  final List<String>? requiredSkills;

  final String? deadline;

  @JsonKey(name: 'customer_name')
  final String? customerName;

  DeveloperProfileServicesBookmarkedResponseBody({
    this.id,
    this.developerId,
    this.postId,
    this.postType,
    this.createdAt,
    this.title,
    this.description,
    this.budgetRange,
    this.serviceType,
    this.requiredSkills,
    this.deadline,
    this.customerName,
  });

  factory DeveloperProfileServicesBookmarkedResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperProfileServicesBookmarkedResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperProfileServicesBookmarkedResponseBodyToJson(this);
}
