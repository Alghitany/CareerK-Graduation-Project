import 'package:json_annotation/json_annotation.dart';

part 'customer_profile_applicants_number_response_body.g.dart';

@JsonSerializable()
class CustomerProfileApplicantsNumberResponseBody {
  @JsonKey(name: 'totalApplicants')
  final int totalApplicants;

  CustomerProfileApplicantsNumberResponseBody({
    required this.totalApplicants,
  });

  factory CustomerProfileApplicantsNumberResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerProfileApplicantsNumberResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CustomerProfileApplicantsNumberResponseBodyToJson(this);
}
