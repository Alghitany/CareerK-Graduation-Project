import 'package:json_annotation/json_annotation.dart';

part 'developer_jobs_service_details_response_body.g.dart';

@JsonSerializable()
class DeveloperJobsServiceDetailsResponseBody {
  final Post? post;

  DeveloperJobsServiceDetailsResponseBody({this.post});

  factory DeveloperJobsServiceDetailsResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperJobsServiceDetailsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperJobsServiceDetailsResponseBodyToJson(this);
}

@JsonSerializable()
class Post {
  final String? id;
  @JsonKey(name: 'customer_id')
  final String? customerId;
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
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @JsonKey(name: 'customer_name')
  final String? customerName;
  @JsonKey(name: 'customer_profile_picture')
  final String? customerProfilePicture;

  Post({
    this.id,
    this.customerId,
    this.title,
    this.description,
    this.budgetRange,
    this.serviceType,
    this.requiredSkills,
    this.deadline,
    this.contactInfo,
    this.createdAt,
    this.updatedAt,
    this.customerName,
    this.customerProfilePicture,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
