import 'package:carrerk/features/customer/ui/applied/data/repo/first_screen_repo/applications_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'applications_state.dart';

class ApplicationsCubit extends Cubit<ApplicationsState> {
  final ApplicationsRepo _repo;

  ApplicationsCubit(this._repo) : super(const ApplicationsState.initial());

  Future<void> getApplications(String applicantId) async {
    emit(const ApplicationsState.loading());

    final response = await _repo.getApplications(applicantId);

    response.when(
      success: (data) {
        debugPrint('✅ Applications fetched: ${data.applications.length}');
        emit(ApplicationsState.success(data));
      },
      failure: (apiErrorModel) {
        debugPrint(
            '❌ Error fetching applications: ${apiErrorModel.getAllErrorMessages()}');
        emit(ApplicationsState.error(
            apiErrorModel
        ));
      },
    );
  }
}
