import 'package:json_annotation/json_annotation.dart';

part 'total_applicants_response.g.dart';

@JsonSerializable()
class TotalApplicantsResponse {
  @JsonKey(name: 'totalApplicants')
  final int totalApplicants;

  const TotalApplicantsResponse({
    required this.totalApplicants,
  });

  factory TotalApplicantsResponse.fromJson(Map<String, dynamic> json) =>
      _$TotalApplicantsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TotalApplicantsResponseToJson(this);
}
