import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/send_data_models/developer_profile_cv_generate_send_data_request_body.dart';
import '../../data/repos/developer_profile_cv_generate_send_data_repo.dart';
import 'developer_profile_cv_generate_send_data_state.dart';

class DeveloperProfileCVGenerateSendDataCubit
    extends Cubit<DeveloperProfileCVGenerateSendDataState> {
  final DeveloperProfileCVGenerateSendDataRepo _repo;

  DeveloperProfileCVGenerateSendDataCubit(this._repo)
      : super(const DeveloperProfileCVGenerateSendDataState.initial());

  /// ✅ Global Form Key
  final formKey = GlobalKey<FormState>();

  /// ✅ Personal Info Controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController linkedinController = TextEditingController();
  final TextEditingController portfolioController = TextEditingController();

  /// ✅ Education Controllers (List of Maps)
  final List<Map<String, TextEditingController>> educationControllers = [];

  void addEducationControllers() {
    educationControllers.add({
      'institution': TextEditingController(),
      'field': TextEditingController(),
      'startDate': TextEditingController(),
      'endDate': TextEditingController(),
      'degree': TextEditingController(),
      'gpa': TextEditingController(),
    });
  }

  /// ✅ Experience Controllers
  final List<Map<String, TextEditingController>> experienceControllers = [];

  void addExperienceControllers() {
    experienceControllers.add({
      'position': TextEditingController(),
      'company': TextEditingController(),
      'startDate': TextEditingController(),
      'endDate': TextEditingController(),
      'achievements': TextEditingController(), // Comma-separated
    });
  }

  /// ✅ Project Controllers
  final List<Map<String, TextEditingController>> projectControllers = [];

  void addProjectControllers() {
    projectControllers.add({
      'title': TextEditingController(),
      'description': TextEditingController(),
      'technologies': TextEditingController(), // Comma-separated
      'results': TextEditingController(), // Comma-separated
    });
  }

  /// ✅ Certification Controllers
  final List<Map<String, TextEditingController>> certificationControllers = [];

  void addCertificationControllers() {
    certificationControllers.add({
      'name': TextEditingController(),
      'issuer': TextEditingController(),
      'date': TextEditingController(),
    });
  }

  /// ✅ Additional Controllers
  final List<Map<String, TextEditingController>> additionalControllers = [];

  void addAdditionalControllers() {
    additionalControllers.add({
      'title': TextEditingController(),
      'description': TextEditingController(),
    });
  }

  /// ✅ Skillsets (Single Controller with comma-separated text)
  final TextEditingController skillsetsController = TextEditingController();

  /// ✅ Dispose All Controllers (Call this when needed)
  void disposeAllControllers() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    addressController.dispose();
    linkedinController.dispose();
    portfolioController.dispose();
    skillsetsController.dispose();

    for (final map in educationControllers) {
      for (final controller in map.values) {
        controller.dispose();
      }
    }

    for (final map in experienceControllers) {
      for (final controller in map.values) {
        controller.dispose();
      }
    }

    for (final map in projectControllers) {
      for (final controller in map.values) {
        controller.dispose();
      }
    }

    for (final map in certificationControllers) {
      for (final controller in map.values) {
        controller.dispose();
      }
    }

    for (final map in additionalControllers) {
      for (final controller in map.values) {
        controller.dispose();
      }
    }
  }

  /// ✅ Collect Personal Info Data
  PersonalInfo getPersonalInfoData() {
    return PersonalInfo(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      address: addressController.text,
      linkedin: linkedinController.text,
      portfolio: portfolioController.text,
    );
  }

  /// ✅ Collect All Education Data
  List<Education> getEducationData() {
    return educationControllers.map((map) {
      return Education(
        institution: map['institution']!.text,
        degree: map['degree']!.text,
        field: map['field']!.text,
        startDate: map['startDate']!.text,
        endDate: map['endDate']!.text,
        gpa: map['gpa']!.text,
      );
    }).toList();
  }

  /// ✅ Collect All Experience Data
  List<Experience> getExperienceData() {
    return experienceControllers.map((map) {
      return Experience(
        position: map['position']!.text,
        company: map['company']!.text,
        dates: '${map['startDate']!.text} - ${map['endDate']!.text}',
        achievements: map['achievements']!.text.split(','),
      );
    }).toList();
  }

  /// ✅ Collect All Projects Data
  List<Project> getProjectsData() {
    return projectControllers.map((map) {
      return Project(
        title: map['title']!.text,
        description: map['description']!.text,
        technologies: map['technologies']!.text.split(','),
        results: map['results']!.text.split(','),
      );
    }).toList();
  }

  /// ✅ Collect All Certifications Data
  List<Certification> getCertificationsData() {
    return certificationControllers.map((map) {
      return Certification(
        name: map['name']!.text,
        issuer: map['issuer']!.text,
        date: map['date']!.text,
      );
    }).toList();
  }

  /// ✅ Collect All Additional Data
  List<Additional> getAdditionalData() {
    return additionalControllers.map((map) {
      return Additional(
        title: map['title']!.text,
        description: map['description']!.text,
      );
    }).toList();
  }

  /// ✅ Collect Skillsets Data
  List<String> getSkillsetsData() {
    return skillsetsController.text.split(',');
  }

  /// ✅ Submit Method
  Future<void> emitSendDataState({
    required String sessionId,
  }) async {
    final requestBody = DeveloperProfileCVGenerateSendDataRequestBody(
      personalInfo: getPersonalInfoData(),
      education: getEducationData(),
      experience: getExperienceData(),
      skillsets: getSkillsetsData(),
      projects: getProjectsData(),
      certifications: getCertificationsData(),
      additional: getAdditionalData(),
    );

    emit(const DeveloperProfileCVGenerateSendDataState.loading());
    final response = await _repo.sendCVData(
      sessionId: sessionId,
      requestBody: requestBody,
    );

    response.when(success: (result) {
      emit(DeveloperProfileCVGenerateSendDataState.success(result));
    }, failure: (error) {
      emit(DeveloperProfileCVGenerateSendDataState.error(
          error: error.apiErrorModel.message ?? 'Unknown error'));
    });
  }
}
