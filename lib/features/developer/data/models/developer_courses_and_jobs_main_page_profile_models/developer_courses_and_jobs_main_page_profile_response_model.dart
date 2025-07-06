import 'package:json_annotation/json_annotation.dart';

part 'developer_courses_and_jobs_main_page_profile_response_model.g.dart';

@JsonSerializable()
class DeveloperCoursesAndJobsMainPageProfileResponseModel {
  @JsonKey(name: 'first_name')
  final String firstName;

  @JsonKey(name: 'last_name')
  final String lastName;

  @JsonKey(name: 'profile_picture')
  final String? profilePicture;

  const DeveloperCoursesAndJobsMainPageProfileResponseModel({
    required this.firstName,
    required this.lastName,
    this.profilePicture,
  });

  factory DeveloperCoursesAndJobsMainPageProfileResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$DeveloperCoursesAndJobsMainPageProfileResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DeveloperCoursesAndJobsMainPageProfileResponseModelToJson(this);
}
