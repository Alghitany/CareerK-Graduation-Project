// import 'package:json_annotation/json_annotation.dart';

// part 'customer_jobs_post_request_body.g.dart';

// @JsonSerializable()
// class CustomerJobsPostRequestBody {
//   final String title;
//   final String description;
//   @JsonKey(name: 'budget_range')
//   final String budgetRange;
//   @JsonKey(name: 'service_type')
//   final String serviceType;
//   @JsonKey(name: 'required_skills')
//   final List<String> requiredSkills;
//   final String deadline;

//   CustomerJobsPostRequestBody({
//     required this.title,
//     required this.description,
//     required this.budgetRange,
//     required this.serviceType,
//     required this.requiredSkills,
//     required this.deadline,
//   });

//   factory CustomerJobsPostRequestBody.fromJson(Map<String, dynamic> json) =>
//       _$CustomerJobsPostRequestBodyFromJson(json);

//   Map<String, dynamic> toJson() => _$CustomerJobsPostRequestBodyToJson(this);
// }
import 'package:json_annotation/json_annotation.dart';

part 'customer_jobs_post_request_body.g.dart';

@JsonSerializable()
class CustomerJobsPostRequestBody {
  final String title;
  final String description;

  @JsonKey(name: 'budget_range')
  final String budgetRange;

  @JsonKey(name: 'service_type')
  final String serviceType;

  @JsonKey(name: 'required_skills')
  final List<String> requiredSkills;

  final String deadline;

  @JsonKey(name: 'contact_info')
  final String contactInfo;

  CustomerJobsPostRequestBody({
    required this.title,
    required this.description,
    required this.budgetRange,
    required this.serviceType,
    required this.requiredSkills,
    required this.deadline,
    required this.contactInfo,
  });

  factory CustomerJobsPostRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CustomerJobsPostRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerJobsPostRequestBodyToJson(this);
}
