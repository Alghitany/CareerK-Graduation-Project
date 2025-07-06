import 'dart:io';

import 'package:carrerk/features/customer/ui/sign_up/data/model/customer_signup_request_body.dart';
import 'package:carrerk/features/customer/ui/sign_up/data/repo/customer_sign_up_repo.dart';
import 'package:carrerk/features/customer/ui/sign_up/logic/customer_sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/model/customer_signup_request_body.dart';
import '../data/repo/customer_sign_up_repo.dart';
import 'customer_sign_up_state.dart';

class CustomerSignupCubit extends Cubit<CustomerSignupState> {
  final CustomerSignupRepo _customerSignupRepo;

  CustomerSignupCubit(this._customerSignupRepo)
      : super(const CustomerSignupState.initial());

  // Controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final TextEditingController briefDescriptionController =
      TextEditingController();
  final TextEditingController contactEmailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  // Form Key

  final compulsoryDataFormKey = GlobalKey<FormState>();

  final fillProfileFormKey = GlobalKey<FormState>();

  // File path
  String? profilePicFilePath;

  void setProfileImage(File? imageFile) {
    profilePicFilePath = imageFile?.path;
  }

  Future<void> signupCustomer() async {
    emit(const CustomerSignupState.customerSignupLoading());

    final response = await _customerSignupRepo.customerSignup(
      body: CustomerSignupRequestModel(
        name: nameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
        briefDescription: briefDescriptionController.text.trim(),
        // ✅ NEW
        contactEmail: contactEmailController.text.trim(),
        // ✅ NEW
        phoneNumber: phoneNumberController.text.trim(),
        // ✅ NEW
        profilePicture:
            profilePicFilePath != null ? File(profilePicFilePath!) : null,
      ),
      profilePicFilePath: profilePicFilePath,
    );

    response.when(
      success: (customerSignupResponse) {
        emit(CustomerSignupState.customerSignupSuccess(customerSignupResponse));
      },
      failure: (error) {
        emit(CustomerSignupState.customerSignupError(
          error: error.apiErrorModel.message ?? 'Signup failed',
        ));
      },
    );
  }
}
