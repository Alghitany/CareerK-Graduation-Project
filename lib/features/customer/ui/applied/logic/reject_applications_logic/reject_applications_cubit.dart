import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/reject_application/reject_applications_request_model.dart';
import '../../data/model/reject_application/reject_application_response.dart';
import '../../data/repo/reject_applications_repo.dart';
import 'reject_applications_state.dart';

class RejectApplicationsCubit extends Cubit<RejectApplicationsState> {
  final RejectApplicationsRepo _rejectApplicationsRepo;

  RejectApplicationsCubit(this._rejectApplicationsRepo)
      : super(const RejectApplicationsState.initial());

  // Controller for the status field (if you want it editable)
  final TextEditingController statusController = TextEditingController();

  // Form key
  final GlobalKey<FormState> rejectFormKey = GlobalKey<FormState>();

  // The latest response
  RejectApplicationResponse? applicationResponse;

  Future<void> rejectApplication({
    required String applicationId,
  }) async {
    if (!rejectFormKey.currentState!.validate()) return;

    emit(const RejectApplicationsState.loading());

    final response = await _rejectApplicationsRepo.rejectApplication(
      applicationId: applicationId,
      request: RejectApplicationsRequestModel(
        status: statusController.text.trim(),
      ),
    );

    response.when(
      success: (data) {
        applicationResponse = data;
        emit(RejectApplicationsState.success(data));
      },
      failure: (error) {
        emit(RejectApplicationsState.error(
          error.apiErrorModel.message ?? 'Something went wrong',
        ));
      },
    );
  }

  @override
  Future<void> close() {
    statusController.dispose();
    return super.close();
  }
}
