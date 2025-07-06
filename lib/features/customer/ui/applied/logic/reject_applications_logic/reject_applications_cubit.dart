import 'package:carrerk/core/networking/api_result.dart';
import 'package:carrerk/features/customer/ui/applied/data/model/reject_applications_model/reject_application_response.dart';
import 'package:carrerk/features/customer/ui/applied/data/model/reject_applications_model/reject_applications_request_model.dart';
import 'package:carrerk/features/customer/ui/applied/data/repo/reject_applications_repo/reject_applications_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'reject_applications_state.dart';

class RejectApplicationsCubit extends Cubit<RejectApplicationsState> {
  final RejectApplicationsRepo _rejectApplicationsRepo;

  RejectApplicationsCubit(this._rejectApplicationsRepo)
      : super(const RejectApplicationsState.initial());

  final TextEditingController statusController = TextEditingController();
  final GlobalKey<FormState> rejectFormKey = GlobalKey<FormState>();

  RejectApplicationResponse? applicationResponse;

  Future<void> rejectApplication({
    required String applicationId,
  }) async {
    if (!rejectFormKey.currentState!.validate()) return;

    emit(const RejectApplicationsState.loading());

    final ApiResult<RejectApplicationResponse> response =
        await _rejectApplicationsRepo.rejectApplication(
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
