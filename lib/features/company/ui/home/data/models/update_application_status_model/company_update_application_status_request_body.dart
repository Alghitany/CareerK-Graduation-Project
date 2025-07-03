import 'package:json_annotation/json_annotation.dart';

part 'company_update_application_status_request_body.g.dart';

@JsonSerializable()
class CompanyUpdateStatusRequestBody {
  final String status;

  CompanyUpdateStatusRequestBody({required this.status});

  Map<String, dynamic> toJson() => _$CompanyUpdateStatusRequestBodyToJson(this);
}
