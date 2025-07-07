import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/developer_generate_cv_start_session_repo.dart';
import 'developer_generate_cv_start_session_state.dart';

class DeveloperGenerateCVStartSessionCubit
    extends Cubit<DeveloperGenerateCVStartSessionState> {
  final DeveloperGenerateCVStartSessionRepo _repo;

  DeveloperGenerateCVStartSessionCubit(this._repo)
      : super(const DeveloperGenerateCVStartSessionState.initial());

  Future<void> startCVSession() async {
    emit(const DeveloperGenerateCVStartSessionState.sessionStarting());

    final response = await _repo.startSession();

    response.when(
      success: (data) => emit(
        DeveloperGenerateCVStartSessionState.sessionStartedSuccess(data),
      ),
      failure: (error) => emit(
        DeveloperGenerateCVStartSessionState.sessionStartError(
          error: error.apiErrorModel.message ?? 'Failed to start session',
        ),
      ),
    );
  }
}
