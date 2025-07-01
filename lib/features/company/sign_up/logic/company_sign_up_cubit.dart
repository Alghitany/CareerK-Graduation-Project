import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/company_sign_up_request_body.dart';
import '../data/repo/company_sign_up_repo.dart';
import 'company_sign_up_state.dart';

class CompanySignupCubit extends Cubit<CompanySignupState> {
  final CompanySignupRepo _companySignupRepo;

  CompanySignupCubit(this._companySignupRepo)
      : super(const CompanySignupState.initial()) {
    socialMediaLinksControllers.add(TextEditingController());
  }

  // Controllers
  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController briefDescriptionController =
      TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController websiteController = TextEditingController();
  final TextEditingController industryController = TextEditingController();
  final TextEditingController contactNameController = TextEditingController();
  final TextEditingController contactEmailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final List<TextEditingController> socialMediaLinksControllers = [];

  // Form Keys
  final compulsoryDataFormKey = GlobalKey<FormState>();
  final contactInformationFormKey = GlobalKey<FormState>();
  final enterLocationFormKey = GlobalKey<FormState>();
  final fillProfileFormKey = GlobalKey<FormState>();

  // File paths
  String? profilePicFilePath;

  // Social Media
  List<String> socialMediaLinks = [];

  void addSocialMediaController() {
    socialMediaLinksControllers.add(TextEditingController());
    emit(state); // Refresh UI if needed
  }

  void removeSocialMediaController(int index) {
    if (index < socialMediaLinksControllers.length) {
      socialMediaLinksControllers[index].dispose();
      socialMediaLinksControllers.removeAt(index);
      emit(state); // Refresh UI if needed
    }
  }

  List<String> getSocialMediaLinks() {
    return socialMediaLinksControllers
        .map((controller) => controller.text.trim())
        .where((text) => text.isNotEmpty)
        .toList();
  }

  void disposeSocialMediaControllers() {
    for (final controller in socialMediaLinksControllers) {
      controller.dispose();
    }
    socialMediaLinksControllers.clear();
  }

  void setProfileImage(File? imageFile) {
    profilePicFilePath = imageFile?.path;
  }

  Future<void> signupCompany() async {
    emit(const CompanySignupState.companySignupLoading());

    socialMediaLinks = getSocialMediaLinks();

    final response = await _companySignupRepo.companySignup(
      body: CompanySignupRequestModel(
        companyName: companyNameController.text.trim(),
        address: addressController.text.trim(),
        briefDescription: briefDescriptionController.text.trim(),
        city: cityController.text.trim(),
        confirmPassword: confirmPasswordController.text,
        contactEmail: contactEmailController.text.trim(),
        contactName: contactNameController.text.trim(),
        country: countryController.text.trim(),
        email: emailController.text.trim(),
        industry: industryController.text.trim(),
        password: passwordController.text,
        phoneNumber: phoneNumberController.text.trim(),
        website: websiteController.text.trim(),
        socialMediaLinks: socialMediaLinks,
      ),
      profilePicFilePath: profilePicFilePath,
    );

    response.when(
      success: (companySignupResponse) {
        emit(CompanySignupState.companySignupSuccess(companySignupResponse));
      },
      failure: (error) {
        emit(CompanySignupState.companySignupError(
          error: error.apiErrorModel.message ?? 'Signup failed',
        ));
      },
    );
  }
}