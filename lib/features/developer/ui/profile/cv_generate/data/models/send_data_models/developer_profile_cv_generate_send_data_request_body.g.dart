// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer_profile_cv_generate_send_data_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeveloperProfileCVGenerateSendDataRequestBody
    _$DeveloperProfileCVGenerateSendDataRequestBodyFromJson(
            Map<String, dynamic> json) =>
        DeveloperProfileCVGenerateSendDataRequestBody(
          personalInfo: PersonalInfo.fromJson(
              json['personal_info'] as Map<String, dynamic>),
          education: (json['education'] as List<dynamic>?)
              ?.map((e) => Education.fromJson(e as Map<String, dynamic>))
              .toList(),
          experience: (json['experience'] as List<dynamic>?)
              ?.map((e) => Experience.fromJson(e as Map<String, dynamic>))
              .toList(),
          skillsets: (json['skillsets'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          projects: (json['projects'] as List<dynamic>?)
              ?.map((e) => Project.fromJson(e as Map<String, dynamic>))
              .toList(),
          certifications: (json['certifications'] as List<dynamic>?)
              ?.map((e) => Certification.fromJson(e as Map<String, dynamic>))
              .toList(),
          additional: (json['additional'] as List<dynamic>?)
              ?.map((e) => Additional.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$DeveloperProfileCVGenerateSendDataRequestBodyToJson(
        DeveloperProfileCVGenerateSendDataRequestBody instance) =>
    <String, dynamic>{
      'personal_info': instance.personalInfo,
      'education': instance.education,
      'experience': instance.experience,
      'skillsets': instance.skillsets,
      'projects': instance.projects,
      'certifications': instance.certifications,
      'additional': instance.additional,
    };

PersonalInfo _$PersonalInfoFromJson(Map<String, dynamic> json) => PersonalInfo(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      linkedin: json['linkedin'] as String,
      portfolio: json['portfolio'] as String,
    );

Map<String, dynamic> _$PersonalInfoToJson(PersonalInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'linkedin': instance.linkedin,
      'portfolio': instance.portfolio,
    };

Education _$EducationFromJson(Map<String, dynamic> json) => Education(
      institution: json['institution'] as String,
      degree: json['degree'] as String,
      field: json['field'] as String,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      gpa: json['gpa'] as String,
    );

Map<String, dynamic> _$EducationToJson(Education instance) => <String, dynamic>{
      'institution': instance.institution,
      'degree': instance.degree,
      'field': instance.field,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'gpa': instance.gpa,
    };

Experience _$ExperienceFromJson(Map<String, dynamic> json) => Experience(
      position: json['position'] as String,
      company: json['company'] as String,
      dates: json['dates'] as String,
      achievements: (json['achievements'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ExperienceToJson(Experience instance) =>
    <String, dynamic>{
      'position': instance.position,
      'company': instance.company,
      'dates': instance.dates,
      'achievements': instance.achievements,
    };

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      title: json['title'] as String,
      description: json['description'] as String,
      technologies: (json['technologies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      results:
          (json['results'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'technologies': instance.technologies,
      'results': instance.results,
    };

Certification _$CertificationFromJson(Map<String, dynamic> json) =>
    Certification(
      name: json['name'] as String,
      issuer: json['issuer'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$CertificationToJson(Certification instance) =>
    <String, dynamic>{
      'name': instance.name,
      'issuer': instance.issuer,
      'date': instance.date,
    };

Additional _$AdditionalFromJson(Map<String, dynamic> json) => Additional(
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$AdditionalToJson(Additional instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };
