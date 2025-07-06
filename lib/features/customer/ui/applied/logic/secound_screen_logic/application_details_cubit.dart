import 'package:carrerk/features/customer/ui/applied/data/repo/secound_screen_repo/application_details_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application_details_state.dart';

class ApplicationDetailsCubit extends Cubit<ApplicationDetailsState> {
  final ApplicationDetailsRepo _repo;

  ApplicationDetailsCubit(this._repo)
      : super(const ApplicationDetailsState.initial());

  Future<void> getApplicationDetails(String applicationId) async {
    emit(const ApplicationDetailsState.loading());

    final response = await _repo.getApplicationDetails(applicationId);

    response.when(
      success: (data) {
        debugPrint('✅ Application details fetched for id: $applicationId');
        emit(ApplicationDetailsState.success(data));
      },
      failure: (error) {
        debugPrint(
            '❌ Error fetching application details: ${error.apiErrorModel.message}');
        emit(ApplicationDetailsState.error(
          error: error.apiErrorModel.message ?? 'Unknown error',
        ));
      },
    );
  }
}
