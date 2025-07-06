import 'package:json_annotation/json_annotation.dart';

part 'company_home_see_resume_response_body.g.dart';

@JsonSerializable()
class CompanyHomeSeeResumeResponseBody {
  @JsonKey(name: 'uploaded_cv')
  final String? uploadedCv;

  @JsonKey(name: 'uploaded_cv_link')
  final String? uploadedCvLink;

  CompanyHomeSeeResumeResponseBody({
    this.uploadedCv,
    this.uploadedCvLink,
  });

  factory CompanyHomeSeeResumeResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$CompanyHomeSeeResumeResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CompanyHomeSeeResumeResponseBodyToJson(this);
}
