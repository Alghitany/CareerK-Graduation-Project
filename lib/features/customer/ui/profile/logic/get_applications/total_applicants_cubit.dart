import 'package:carrerk/features/customer/ui/profile/data/repo/get_applications_repo/total_applicants_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'total_applicants_state.dart';

class TotalApplicantsCubit extends Cubit<TotalApplicantsState> {
  final TotalApplicantsRepo _repo;

  TotalApplicantsCubit(this._repo)
      : super(const TotalApplicantsState.initial());

  Future<void> getTotalApplicants() async {
    emit(const TotalApplicantsState.loading());

    final response = await _repo.getTotalApplicants();

    response.when(
      success: (totalApplicants) {
        emit(TotalApplicantsState.success(totalApplicants));
      },
      failure: (errorHandler) {
        emit(TotalApplicantsState.error(errorHandler));
      },
    );
  }
}
