import 'dart:io';
import 'package:carrerk/features/company/sign_up/data/models/company_sign_up_request_body.dart';
import 'package:carrerk/features/company/sign_up/data/repo/company_sign_up_repo.dart';
import 'package:carrerk/features/company/sign_up/logic/company_sign_up_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompanySignUpCubit extends Cubit<CompanySignUpState> {
  final CompanySignupRepo _companySignupRepo;
  CompanySignUpCubit(this._companySignupRepo)
      : super(const CompanySignUpState.initial()) {
    socialMediaLinksControllers.add(TextEditingController());
  }

  TextEditingController companyNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController briefDescriptionController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController industryController = TextEditingController();
  TextEditingController contactNameController = TextEditingController();
  TextEditingController contactEmailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  final List<TextEditingController> socialMediaLinksControllers = [];

  final compulsoryDataFormKey = GlobalKey<FormState>();
  final contactInformationFormKey = GlobalKey<FormState>();
  final enterLocationFormKey = GlobalKey<FormState>();
  final fillProfileFormKey = GlobalKey<FormState>();

  List<String> socialMediaLinks = [];
  void addSocialMediaController() {
    socialMediaLinksControllers.add(TextEditingController());
    emit(state); // Force UI update if needed
  }

  void removeSocialMediaController(int index) {
    if (index < socialMediaLinksControllers.length) {
      socialMediaLinksControllers[index].dispose();
      socialMediaLinksControllers.removeAt(index);
      emit(state); // Force UI update if needed
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

  String? profilePicFilePath;
  void setProfileImage(File? imageFile) {
    profilePicFilePath = imageFile?.path;
  }

  Future<void> signupCompany() async {
    emit(const CompanySignUpState.companySignupLoading()); // change
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
          socialMediaLinks: socialMediaLinks),
      profilePicFilePath: profilePicFilePath,
    );

    response.when(
      success: (companySignupResponse) {
        emit(CompanySignUpState.companySignupSuccess(companySignupResponse));
      },
      failure: (error) {
        emit(CompanySignUpState.companySignupError(
            error: error.apiErrorModel.message ?? 'Signup failed'));
      },
    );
  }
}
