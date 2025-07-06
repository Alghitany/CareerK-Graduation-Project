import 'package:json_annotation/json_annotation.dart';

part 'developer_name_home_main_page_response_body.g.dart';

@JsonSerializable()
class DeveloperNameHomeMainPageResponseBody {
  @JsonKey(name: 'developerName')
  final String? developerName;

  DeveloperNameHomeMainPageResponseBody({this.developerName});

  factory DeveloperNameHomeMainPageResponseBody.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperNameHomeMainPageResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperNameHomeMainPageResponseBodyToJson(this);
}
