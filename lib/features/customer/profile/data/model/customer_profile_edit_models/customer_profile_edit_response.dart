import 'package:json_annotation/json_annotation.dart';

part 'customer_profile_edit_response.g.dart';

@JsonSerializable()
class CustomerProfileEditResponse {
  final String? message;
  final Customer? customer;

  CustomerProfileEditResponse({
    this.message,
    this.customer,
  });

  factory CustomerProfileEditResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerProfileEditResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerProfileEditResponseToJson(this);
}

@JsonSerializable()
class Customer {
  final String? id;
  final String? name;
  final String? email;

  @JsonKey(name: 'brief_description')
  final String? briefDescription;

  @JsonKey(name: 'contact_email')
  final String? contactEmail;

  @JsonKey(name: 'phone_number')
  final String? phoneNumber;

  @JsonKey(name: 'profile_picture')
  final String? profilePicture;

  final String? role;

  Customer({
    this.id,
    this.name,
    this.email,
    this.briefDescription,
    this.contactEmail,
    this.phoneNumber,
    this.profilePicture,
    this.role,
  });

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
