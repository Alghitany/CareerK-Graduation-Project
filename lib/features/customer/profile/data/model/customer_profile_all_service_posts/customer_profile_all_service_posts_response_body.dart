import 'package:json_annotation/json_annotation.dart';

part 'customer_profile_all_service_posts_response_body.g.dart';

@JsonSerializable()
class CustomerProfileAllServicePostsResponseBody {
  final int total;

  final List<ServicePostItem> posts;

  CustomerProfileAllServicePostsResponseBody({
    required this.total,
    required this.posts,
  });

  factory CustomerProfileAllServicePostsResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerProfileAllServicePostsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CustomerProfileAllServicePostsResponseBodyToJson(this);
}

@JsonSerializable()
class ServicePostItem {
  final String id;
  final String title;
  final String serviceType;
  final String budgetRange;
  final String createdAt;

  @JsonKey(name: 'profilePicture')
  final String profilePicture;

  ServicePostItem({
    required this.id,
    required this.title,
    required this.serviceType,
    required this.budgetRange,
    required this.createdAt,
    required this.profilePicture,
  });

  factory ServicePostItem.fromJson(Map<String, dynamic> json) =>
      _$ServicePostItemFromJson(json);

  Map<String, dynamic> toJson() => _$ServicePostItemToJson(this);
}
