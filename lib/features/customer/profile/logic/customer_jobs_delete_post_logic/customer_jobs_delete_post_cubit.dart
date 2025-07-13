import 'package:carrerk/features/customer/profile/data/repo/customer_jobs_delete_post_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'customer_jobs_delete_post_state.dart';

class CustomerJobsDeletePostCubit extends Cubit<CustomerJobsDeletePostState> {
  final CustomerJobsDeletePostRepo _deleteRepo;

  CustomerJobsDeletePostCubit(this._deleteRepo)
      : super(const CustomerJobsDeletePostState.initial());

  Future<void> deleteJobPost(String jobId) async {
    if (isClosed) return;

    emit(const CustomerJobsDeletePostState.deleteLoading());

    final result = await _deleteRepo.deleteJobPost(jobId: jobId);

    if (isClosed) return;

    result.when(
      success: (data) {
        if (!isClosed) {
          emit(CustomerJobsDeletePostState.deleteSuccess(data));
        }
      },
      failure: (error) {
        if (!isClosed) {
          emit(CustomerJobsDeletePostState.deleteError(
            error: error.apiErrorModel.message ?? 'Delete failed',
          ));
        }
      },
    );
  }
}
