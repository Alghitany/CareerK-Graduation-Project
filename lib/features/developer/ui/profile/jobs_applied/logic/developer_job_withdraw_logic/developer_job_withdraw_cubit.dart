import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/developer_job_withdraw_repo.dart';
import 'developer_job_withdraw_state.dart';

class DeveloperJobWithdrawCubit extends Cubit<DeveloperJobWithdrawState> {
  final DeveloperJobWithdrawRepo _repo;

  DeveloperJobWithdrawCubit(this._repo)
      : super(const DeveloperJobWithdrawState.initial());

  Future<void> withdrawJobApplication(String applicationId) async {
    emit(const DeveloperJobWithdrawState.loading());

    final response = await _repo.withdrawJobApplication(applicationId);

    response.when(
      success: (data) => emit(
        DeveloperJobWithdrawState.success(data),
      ),
      failure: (error) => emit(
        DeveloperJobWithdrawState.error(
          error: error.apiErrorModel.message ??
              'Failed to withdraw job application',
        ),
      ),
    );
  }
}
