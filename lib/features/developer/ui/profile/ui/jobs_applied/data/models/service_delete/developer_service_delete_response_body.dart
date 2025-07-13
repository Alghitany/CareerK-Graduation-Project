import 'package:json_annotation/json_annotation.dart';

part 'developer_service_delete_response_body.g.dart';

@JsonSerializable()
class DeveloperProfileAppliedServicesResponseBody {
  final String? message;

  DeveloperProfileAppliedServicesResponseBody({this.message});

  factory DeveloperProfileAppliedServicesResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperProfileAppliedServicesResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperProfileAppliedServicesResponseBodyToJson(this);
}
