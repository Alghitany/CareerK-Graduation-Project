import 'package:json_annotation/json_annotation.dart';

part 'application_details_response_body.g.dart';

/// Represents the response body containing a single application.
@JsonSerializable()
class ApplicationDetailsResponseBody {
  @JsonKey(name: 'application')
  final ApplicationItem application;

  ApplicationDetailsResponseBody({
    required this.application,
  });

  factory ApplicationDetailsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$ApplicationDetailsResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationDetailsResponseBodyToJson(this);
}

/// Represents a single application item.
@JsonSerializable()
class ApplicationItem {
  final String id;
  final String developerId;
  final String servicePostId;
  final String submittedAt;
  final String createdAt;
  final String status;
  final String name;
  final String email;
  final String phone;
  final int yearsOfExperience;
  final String expectedSalary;
  final String uploadedCv;
  final String uploadedCvLink;
  final Developer developer;

  ApplicationItem({
    required this.id,
    required this.developerId,
    required this.servicePostId,
    required this.submittedAt,
    required this.createdAt,
    required this.status,
    required this.name,
    required this.email,
    required this.phone,
    required this.yearsOfExperience,
    required this.expectedSalary,
    required this.uploadedCv,
    required this.uploadedCvLink,
    required this.developer,
  });

  factory ApplicationItem.fromJson(Map<String, dynamic> json) =>
      _$ApplicationItemFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationItemToJson(this);
}

/// Represents the developer details.
@JsonSerializable()
class Developer {
  final String id;
  final String? firstName;
  final String? lastName;
  final String? briefBio;
  final String? trackTitle;
  final String? profilePicture;
  final Location? location;

  Developer({
    required this.id,
    this.firstName,
    this.lastName,
    this.briefBio,
    this.trackTitle,
    this.profilePicture,
    this.location,
  });

  factory Developer.fromJson(Map<String, dynamic> json) =>
      _$DeveloperFromJson(json);

  Map<String, dynamic> toJson() => _$DeveloperToJson(this);
}

/// Represents the location details.
@JsonSerializable()
class Location {
  final String? country;
  final String? city;
  final String? address;

  Location({
    this.country,
    this.city,
    this.address,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
