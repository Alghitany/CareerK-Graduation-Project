import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/company_profile_info_repo.dart';
import 'company_profile_info_state.dart';

class CompanyProfileInfoCubit extends Cubit<CompanyProfileInfoState> {
  final CompanyProfileInfoRepo _repo;

  CompanyProfileInfoCubit(this._repo)
      : super(const CompanyProfileInfoState.initial());

  void getCompanyProfileInfo() async {
    emit(const CompanyProfileInfoState.loading());
    final response = await _repo.getCompanyProfile();

    response.when(
      success: (profile) {
        emit(CompanyProfileInfoState.success(profile));
      },
      failure: (error) {
        emit(CompanyProfileInfoState.error(
            error: error.apiErrorModel.message ?? 'Unknown error'));
      },
    );
  }
}
