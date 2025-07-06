import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/model/company_home_see_details_response_body.dart';
import '../data/repo/company_home_see_details_repo.dart';
import 'company_home_see_details_state.dart';

class CompanyHomeSeeDetailsCubit extends Cubit<
    CompanyHomeSeeDetailsState<CompanyHomeSeeDetailsResponseBody>> {
  final CompanyHomeSeeDetailsRepo _repo;

  CompanyHomeSeeDetailsCubit(this._repo)
      : super(const CompanyHomeSeeDetailsState.initial());

  Future<void> getCompanyHomeSeeDetailsData(
      {required String applicationId}) async {
    emit(const CompanyHomeSeeDetailsState.loading());
    final result = await _repo.getCompanyHomeSeeDetails(applicationId);
    result.when(
      success: (data) {
        emit(CompanyHomeSeeDetailsState.success(data));
      },
      failure: (error) {
        emit(CompanyHomeSeeDetailsState.error(
          error: error.apiErrorModel.message ?? 'Unknown error',
        ));
      },
    );
  }
}
