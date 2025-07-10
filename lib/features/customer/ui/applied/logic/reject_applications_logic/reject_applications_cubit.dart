import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

import 'reject_applications_state.dart';
import '../../data/repo/reject_applications_repo/reject_applications_repo.dart';

class RejectApplicationCubit extends Cubit<RejectApplicationState> {
  final RejectApplicationRepo _repo;

  RejectApplicationCubit(this._repo)
      : super(const RejectApplicationState.initial());

  Future<void> rejectApplication({
    required String applicationId,
    required String status,
  }) async {
    emit(const RejectApplicationState.loading());

    final response = await _repo.rejectApplication(
      applicationId: applicationId,
      status: status,
    );

    response.when(
      success: (data) {
        emit(RejectApplicationState.success(data));
      },
      failure: (error) {
        debugPrint(
          '❌ Error rejecting application: ${error.apiErrorModel.message}',
        );
        emit(RejectApplicationState.error(
          error: error.apiErrorModel.message ?? 'Unknown error',
        ));
      },
    );
  }
}
