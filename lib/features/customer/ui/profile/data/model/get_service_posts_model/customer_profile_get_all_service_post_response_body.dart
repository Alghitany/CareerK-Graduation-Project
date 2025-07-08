import 'package:json_annotation/json_annotation.dart';

part 'customer_profile_get_all_service_post_response_body.g.dart';

@JsonSerializable()
class CustomerProfileGetAllServicePostResponseBody {
  @JsonKey(name: 'total')
  final int total;

  @JsonKey(name: 'posts')
  final List<PostItem> posts;

  CustomerProfileGetAllServicePostResponseBody({
    required this.total,
    required this.posts,
  });

  factory CustomerProfileGetAllServicePostResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerProfileGetAllServicePostResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CustomerProfileGetAllServicePostResponseBodyToJson(this);
}

@JsonSerializable()
class PostItem {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'serviceType')
  final String? serviceType;

  @JsonKey(name: 'budgetRange')
  final String? budgetRange;

  @JsonKey(name: 'createdAt')
  final String? createdAt;

  @JsonKey(name: 'profilePicture')
  final String? profilePicture;

  PostItem({
    required this.id,
    this.title,
    this.serviceType,
    this.budgetRange,
    this.createdAt,
    this.profilePicture,
  });

  factory PostItem.fromJson(Map<String, dynamic> json) =>
      _$PostItemFromJson(json);

  Map<String, dynamic> toJson() => _$PostItemToJson(this);
}
