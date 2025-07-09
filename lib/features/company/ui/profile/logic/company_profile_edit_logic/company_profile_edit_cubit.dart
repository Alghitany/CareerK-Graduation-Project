import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/company_profile_edit_models/company_profile_edit_request_body.dart';
import '../../data/repos/company_profile_edit_repo.dart';
import 'company_profile_edit_state.dart';

class CompanyProfileEditCubit extends Cubit<CompanyProfileEditState> {
  final CompanyProfileEditRepo _companyProfileEditRepo;

  CompanyProfileEditCubit(this._companyProfileEditRepo)
      : super(const CompanyProfileEditState.initial());

  final companyNameController = TextEditingController();
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

  Future<void> editCompanyProfile() async {
    emit(const CompanyProfileEditState.profileEditLoading());

    final requestBody = CompanyProfileEditRequestBody(
      companyName: companyNameController.text.trim().isNotEmpty
          ? companyNameController.text.trim()
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
        await _companyProfileEditRepo.editCompanyProfile(body: requestBody);

    response.when(
      success: (res) => emit(CompanyProfileEditState.profileEditSuccess(res)),
      failure: (error) => emit(
        CompanyProfileEditState.profileEditError(
          error: error.apiErrorModel.message ?? 'Profile update failed',
        ),
      ),
    );
  }
}
