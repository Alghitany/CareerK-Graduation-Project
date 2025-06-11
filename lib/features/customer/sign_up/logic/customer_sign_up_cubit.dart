import 'dart:io';
import 'package:carrerk/features/customer/sign_up/data/model/customer_signup_request_body.dart';
import 'package:carrerk/features/customer/sign_up/data/repo/customer_sign_up_repo.dart';
import 'package:carrerk/features/customer/sign_up/logic/customer_sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerSignUpCubit extends Cubit<CustomerSignUpState> {
  final CustomerSignupRepo _customerSignupRepo;
  CustomerSignUpCubit(this._customerSignupRepo)
      : super(const CustomerSignUpState.initial());

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController briefDescriptionController =
      TextEditingController();
  final TextEditingController contactEmailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  final GlobalKey<FormState> compulsoryDataFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> contactInformationFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> fillProfileFormKey = GlobalKey<FormState>();

  String? profilePicFilePath;
  void setProfileImage(File? imageFile) {
    profilePicFilePath = imageFile?.path;
  }

  Future<void> signupCustomer() async {
    emit(const CustomerSignUpState.customerSignupLoading());

    final response = await _customerSignupRepo.customerSignup(
      body: CustomerSignupRequestModel(
        name: nameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
        briefDescription: briefDescriptionController.text.trim(),
        contactEmail: contactEmailController.text.trim(),
        phoneNumber: phoneNumberController.text.trim(),
      ),
      profilePicFilePath: profilePicFilePath,
    );

    response.when(
      success: (customerSignupResponse) {
        emit(CustomerSignUpState.customerSignupSuccess(customerSignupResponse));
      },
      failure: (error) {
        emit(CustomerSignUpState.customerSignupError(
          error: error.apiErrorModel.message ?? 'Signup failed',
        ));
      },
    );
  }
}
