import 'dart:io';

import 'package:carrerk/features/customer/profile/data/model/customer_profile_edit_models/customer_profile_edit_request_body.dart';
import 'package:carrerk/features/customer/profile/data/repo/customer_profile_edit_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'customer_profile_edit_state.dart';

class CustomerProfileEditCubit extends Cubit<CustomerProfileEditState> {
  final CustomerProfileEditRepo _customerProfileEditRepo;

  CustomerProfileEditCubit(this._customerProfileEditRepo)
      : super(const CustomerProfileEditState.initial());

  final nameController = TextEditingController();
  final briefDescriptionController = TextEditingController();
  final countryController = TextEditingController();
  final cityController = TextEditingController();
  final addressController = TextEditingController();
  final websiteController = TextEditingController();
  final industryController = TextEditingController();
  final contactNameController = TextEditingController();
  final contactEmailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final socialMediaLinksController = TextEditingController();

  String? _profilePicturePath;

  File? get profilePicture =>
      _profilePicturePath != null ? File(_profilePicturePath!) : null;

  void setProfilePicturePath(String path) {
    _profilePicturePath = path;
  }

  Future<void> editCustomerProfile() async {
    emit(const CustomerProfileEditState.profileEditLoading());

    final requestBody = CustomerProfileEditRequestBody(
      customerName: nameController.text.trim().isNotEmpty
          ? nameController.text.trim()
          : null,
      briefDescription: briefDescriptionController.text.trim().isNotEmpty
          ? briefDescriptionController.text.trim()
          : null,
      country: countryController.text.trim().isNotEmpty
          ? countryController.text.trim()
          : null,
      city: cityController.text.trim().isNotEmpty
          ? cityController.text.trim()
          : null,
      address: addressController.text.trim().isNotEmpty
          ? addressController.text.trim()
          : null,
      website: websiteController.text.trim().isNotEmpty
          ? websiteController.text.trim()
          : null,
      industry: industryController.text.trim().isNotEmpty
          ? industryController.text.trim()
          : null,
      contactName: contactNameController.text.trim().isNotEmpty
          ? contactNameController.text.trim()
          : null,
      contactEmail: contactEmailController.text.trim().isNotEmpty
          ? contactEmailController.text.trim()
          : null,
      phoneNumber: phoneNumberController.text.trim().isNotEmpty
          ? phoneNumberController.text.trim()
          : null,
      socialMediaLinks: socialMediaLinksController.text.trim().isNotEmpty
          ? socialMediaLinksController.text.trim()
          : null,
      profilePicture: profilePicture,
    );

    final response =
        await _customerProfileEditRepo.editCustomerProfile(body: requestBody);

    response.when(
      success: (res) => emit(CustomerProfileEditState.profileEditSuccess(res)),
      failure: (error) => emit(
        CustomerProfileEditState.profileEditError(
          error: error.apiErrorModel.message ?? 'Profile update failed',
        ),
      ),
    );
  }
}
