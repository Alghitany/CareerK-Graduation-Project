import 'package:json_annotation/json_annotation.dart';

part 'customer_home_response_body.g.dart';

@JsonSerializable()
class CustomerHomeResponseBody {
  @JsonKey(name: 'profile')
  final Profile profile;

  @JsonKey(name: 'services')
  final List<ServiceItem> services;

  CustomerHomeResponseBody({
    required this.profile,
    required this.services,
  });

  factory CustomerHomeResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CustomerHomeResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerHomeResponseBodyToJson(this);
}

@JsonSerializable()
class Profile {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'profile_picture')
  final String profilePicture;

  Profile({
    required this.id,
    required this.name,
    required this.profilePicture,
  });

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}

@JsonSerializable()
class ServiceItem {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'customer_id')
  final String customerId;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'budget_range')
  final String budgetRange;

  @JsonKey(name: 'service_type')
  final String serviceType;

  @JsonKey(name: 'required_skills')
  final List<String> requiredSkills;

  @JsonKey(name: 'deadline')
  final String deadline;

  @JsonKey(name: 'contact_info')
  final String? contactInfo;

  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'updated_at')
  final String updatedAt;

  ServiceItem({
    required this.id,
    required this.customerId,
    required this.title,
    required this.description,
    required this.budgetRange,
    required this.serviceType,
    required this.requiredSkills,
    required this.deadline,
    this.contactInfo,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ServiceItem.fromJson(Map<String, dynamic> json) =>
      _$ServiceItemFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceItemToJson(this);
}
