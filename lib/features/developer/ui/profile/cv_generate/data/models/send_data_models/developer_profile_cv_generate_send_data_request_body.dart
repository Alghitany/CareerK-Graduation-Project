import 'package:json_annotation/json_annotation.dart';

part 'developer_profile_cv_generate_send_data_request_body.g.dart';

@JsonSerializable()
class DeveloperProfileCVGenerateSendDataRequestBody {
  @JsonKey(name: 'personal_info')
  final PersonalInfo personalInfo;

  final List<Education>? education;
  final List<Experience>? experience;
  final List<String>? skillsets;
  final List<Project>? projects;
  final List<Certification>? certifications;
  final List<Additional>? additional;

  DeveloperProfileCVGenerateSendDataRequestBody({
    required this.personalInfo,
    this.education,
    this.experience,
    this.skillsets,
    this.projects,
    this.certifications,
    this.additional,
  });

  Map<String, dynamic> toJson() =>
      _$DeveloperProfileCVGenerateSendDataRequestBodyToJson(this);
}

@JsonSerializable()
class PersonalInfo {
  final String name;
  final String email;
  final String phone;
  final String address;
  final String linkedin;
  final String portfolio;

  PersonalInfo({
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.linkedin,
    required this.portfolio,
  });

  factory PersonalInfo.fromJson(Map<String, dynamic> json) =>
      _$PersonalInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PersonalInfoToJson(this);
}

@JsonSerializable()
class Education {
  final String institution;
  final String degree;
  final String field;

  @JsonKey(name: 'start_date')
  final String startDate;

  @JsonKey(name: 'end_date')
  final String endDate;

  final String gpa;

  Education({
    required this.institution,
    required this.degree,
    required this.field,
    required this.startDate,
    required this.endDate,
    required this.gpa,
  });

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);

  Map<String, dynamic> toJson() => _$EducationToJson(this);
}

@JsonSerializable()
class Experience {
  final String position;
  final String company;
  final String dates;
  final List<String> achievements;

  Experience({
    required this.position,
    required this.company,
    required this.dates,
    required this.achievements,
  });

  factory Experience.fromJson(Map<String, dynamic> json) =>
      _$ExperienceFromJson(json);

  Map<String, dynamic> toJson() => _$ExperienceToJson(this);
}

@JsonSerializable()
class Project {
  final String title;
  final String description;
  final List<String> technologies;
  final List<String> results;

  Project({
    required this.title,
    required this.description,
    required this.technologies,
    required this.results,
  });

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}

@JsonSerializable()
class Certification {
  final String name;
  final String issuer;
  final String date;

  Certification({
    required this.name,
    required this.issuer,
    required this.date,
  });

  factory Certification.fromJson(Map<String, dynamic> json) =>
      _$CertificationFromJson(json);

  Map<String, dynamic> toJson() => _$CertificationToJson(this);
}

@JsonSerializable()
class Additional {
  final String title;
  final String description;

  Additional({
    required this.title,
    required this.description,
  });

  factory Additional.fromJson(Map<String, dynamic> json) =>
      _$AdditionalFromJson(json);

  Map<String, dynamic> toJson() => _$AdditionalToJson(this);
}
