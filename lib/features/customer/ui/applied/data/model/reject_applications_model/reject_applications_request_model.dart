import 'package:json_annotation/json_annotation.dart';

part 'reject_applications_request_model.g.dart';

@JsonSerializable()
class RejectApplicationsRequestModel {
  final String status;

  RejectApplicationsRequestModel({
    required this.status,
  });

  factory RejectApplicationsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RejectApplicationsRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$RejectApplicationsRequestModelToJson(this);
}
