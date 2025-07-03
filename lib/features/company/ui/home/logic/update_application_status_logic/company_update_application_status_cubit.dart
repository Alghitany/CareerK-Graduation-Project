import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/update_application_status_model/company_update_application_status_request_body.dart';
import '../../data/repos/company_update_application_status_repo.dart';
import 'company_update_application_status_state.dart';

class CompanyUpdateApplicationStatusCubit
    extends Cubit<CompanyUpdateApplicationStatusState> {
  final CompanyUpdateApplicationStatusRepo _repo;

  CompanyUpdateApplicationStatusCubit(this._repo)
      : super(const CompanyUpdateApplicationStatusState.initial());

  Future<void> emitUpdateApplicationStatusStates({
    required String applicationId,
    required CompanyUpdateStatusRequestBody requestBody,
  }) async {
    emit(const CompanyUpdateApplicationStatusState.loading());
    final response =
        await _repo.updateApplicationStatus(applicationId, requestBody);
    response.when(success: (data) {
      emit(CompanyUpdateApplicationStatusState.success(data));
    }, failure: (error) {
      emit(CompanyUpdateApplicationStatusState.error(
          error: error.apiErrorModel.message ?? ''));
    });
  }
}
