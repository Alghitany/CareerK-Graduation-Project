import 'package:json_annotation/json_annotation.dart';

part 'reject_applications_request_model.g.dart';

@JsonSerializable()
class RejectApplicationRequestBody {
  final String status;

  RejectApplicationRequestBody({
    required this.status,
  });

  Map<String, dynamic> toJson() => _$RejectApplicationRequestBodyToJson(this);
}
