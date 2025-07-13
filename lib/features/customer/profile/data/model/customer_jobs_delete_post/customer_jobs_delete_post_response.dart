import 'package:json_annotation/json_annotation.dart';

part 'customer_jobs_delete_post_response.g.dart';

@JsonSerializable()
class CustomerJobsDeletePostResponse {
  final String? message;

  CustomerJobsDeletePostResponse({this.message});

  factory CustomerJobsDeletePostResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerJobsDeletePostResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerJobsDeletePostResponseToJson(this);
}
