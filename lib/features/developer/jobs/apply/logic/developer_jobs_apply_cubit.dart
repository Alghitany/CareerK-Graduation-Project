import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/model/developer_jobs_apply_request_body.dart';
import '../data/repo/developer_jobs_apply_repo.dart';
import 'developer_jobs_apply_state.dart';

class DeveloperJobsApplyCubit extends Cubit<DeveloperJobsApplyState> {
  final DeveloperJobsApplyRepo _developerJobsApplyRepo;

  DeveloperJobsApplyCubit(this._developerJobsApplyRepo)
      : super(const DeveloperJobsApplyState.initial());

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final yearsOfExperienceController = TextEditingController();
  final expectedSalaryController = TextEditingController();

  String? _cvFilePath;

  File? get uploadedCV => _cvFilePath != null ? File(_cvFilePath!) : null;

  void setCVFilePath(String path) {
    _cvFilePath = path;
  }

  final jobApplicationFormKey = GlobalKey<FormState>();

  Future<void> applyToJob(String jobId) async {
    if (!(jobApplicationFormKey.currentState?.validate() ?? false)) return;

    emit(const DeveloperJobsApplyState.jobsApplyLoading());
    print("phone: '${phoneController.text.trim()}'");

    final requestBody = DeveloperJobsApplyRequestBody(
      name: nameController.text.trim(),
      phone: phoneController.text.trim(),
      yearsOfExperience:
          int.tryParse(yearsOfExperienceController.text.trim()) ?? 0,
      expectedSalary: int.tryParse(expectedSalaryController.text.trim()) ?? 0,
      uploadedCV: uploadedCV,
    );

    final response = await _developerJobsApplyRepo.applyForJob(
      jobId: jobId,
      body: requestBody,
    );

    response.when(
      success: (res) => emit(DeveloperJobsApplyState.jobsApplySuccess(res)),
      failure: (error) => emit(
        DeveloperJobsApplyState.jobsApplyError(
          error: error.apiErrorModel.message ?? 'Job application failed',
        ),
      ),
    );
  }
}
