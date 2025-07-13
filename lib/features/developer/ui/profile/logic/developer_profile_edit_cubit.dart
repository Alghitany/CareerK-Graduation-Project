import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/developer_profile_edit_request_body.dart';
import '../data/repos/developer_profile_edit_repo.dart';
import 'developer_profile_edit_state.dart';

class DeveloperProfileEditCubit extends Cubit<DeveloperProfileEditState> {
  final DeveloperProfileEditRepo _developerProfileEditRepo;

  DeveloperProfileEditCubit(this._developerProfileEditRepo)
      : super(const DeveloperProfileEditState.initial());

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
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

  final editFormKey = GlobalKey<FormState>();

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

  Future<void> editDeveloperProfile() async {
    emit(const DeveloperProfileEditState.editProfileLoading());

    final response = await _developerProfileEditRepo.editDeveloperProfile(
      body: DeveloperProfileEditRequestBody(
        firstName: firstNameController.text.trim(),
        lastName: lastNameController.text.trim(),
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
            int.tryParse(yearsOfExperienceController.text.trim()),
        expectedSalary: int.tryParse(expectedSalaryController.text.trim()),
        interestedCourses: interestedCourses,
      ),
      cvFilePath: cvFilePath,
      profilePicFilePath: profilePicFilePath,
    );

    response.when(
      success: (developerProfileEditResponse) {
        emit(DeveloperProfileEditState.editProfileSuccess(
            developerProfileEditResponse));
      },
      failure: (error) {
        emit(DeveloperProfileEditState.editProfileError(
            error: error.apiErrorModel.message ?? 'Edit failed'));
      },
    );
  }
}
