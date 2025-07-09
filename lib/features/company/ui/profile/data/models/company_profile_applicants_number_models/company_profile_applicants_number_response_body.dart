import 'package:json_annotation/json_annotation.dart';

part 'company_profile_applicants_number_response_body.g.dart';

@JsonSerializable()
class CompanyProfileApplicantsNumberResponseBody {
  @JsonKey(name: 'totalApplicants')
  final int totalApplicants;

  CompanyProfileApplicantsNumberResponseBody({
    required this.totalApplicants,
  });

  factory CompanyProfileApplicantsNumberResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$CompanyProfileApplicantsNumberResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CompanyProfileApplicantsNumberResponseBodyToJson(this);
}
