import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/developer_sign_up_request_body.dart';
import '../data/repos/developer_sign_up_repo.dart';
import 'developer_sign_up_state.dart';

class DeveloperSignupCubit extends Cubit<DeveloperSignupState> {
  final DeveloperSignupRepo _developerSignupRepo;
  DeveloperSignupCubit(this._developerSignupRepo)
      : super(const DeveloperSignupState.initial());

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController briefBioController = TextEditingController();
  TextEditingController skillsController = TextEditingController();
  TextEditingController currentTrackController = TextEditingController();
  TextEditingController trackLevelController = TextEditingController();
  TextEditingController previousJobController = TextEditingController();
  TextEditingController typeOfJobController = TextEditingController();
  TextEditingController yearsOfExperienceController = TextEditingController();
  TextEditingController expectedSalaryController = TextEditingController();

  final compulsoryDataFormKey = GlobalKey<FormState>();
  final fillProfileFormKey = GlobalKey<FormState>();
  final locationFormKey = GlobalKey<FormState>();
  final bioSkillsFormKey = GlobalKey<FormState>();
  final optionalDataFormKey = GlobalKey<FormState>();

  List<String> skills = [];
  void setSkills(String skillsText) {
    skills = skillsText
        .split(',')
        .map((skill) => skill.trim())
        .where((skill) => skill.isNotEmpty)
        .toList();
  }

  List<String> interestedCourses = [];
  bool isCourseSelected() => interestedCourses.isNotEmpty;
  void setInterestedCourses(List<String> courses) {
    interestedCourses
      ..clear()
      ..addAll(courses);
  }

  List<String> getInterestedCourses() => interestedCourses;

  String? cvFilePath;
  void setCVFilePath(String path) {
    cvFilePath = path;
  }

  String? profilePicFilePath;
  void setProfileImage(File? imageFile) {
    profilePicFilePath = imageFile?.path;
  }

  Future<void> signupDeveloper() async {
    emit(const DeveloperSignupState.developerSignupLoading());

    final response = await _developerSignupRepo.developerSignup(
      body: DeveloperSignupRequestBody(
        firstName: firstNameController.text.trim(),
        lastName: lastNameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
        gender: genderController.text.trim(),
        dateOfBirth: dateOfBirthController.text.trim(),
        phoneNumber: phoneNumberController.text.trim(),
        country: countryController.text.trim(),
        city: cityController.text.trim(),
        address: addressController.text.trim(),
        briefBio: briefBioController.text.trim(),
        skills: skills,
        currentTrack: currentTrackController.text.trim(),
        trackLevel: trackLevelController.text.trim(),
        previousJob: previousJobController.text.trim(),
        typeOfJob: typeOfJobController.text.trim(),
        yearsOfExperience:
        int.tryParse(yearsOfExperienceController.text) ?? 0,
        expectedSalary: int.tryParse(expectedSalaryController.text) ?? 0,
        interestedCourses: interestedCourses,
      ),
      cvFilePath: cvFilePath,
      profilePicFilePath: profilePicFilePath,
    );

    response.when(
      success: (developerSignupResponse) {
        emit(DeveloperSignupState.developerSignupSuccess(developerSignupResponse));
      },
      failure: (error) {
        emit(DeveloperSignupState.developerSignupError(
            error: error.apiErrorModel.message ?? 'Signup failed'));
      },
    );
  }
}
