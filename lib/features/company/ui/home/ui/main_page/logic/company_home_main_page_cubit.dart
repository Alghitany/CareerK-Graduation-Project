import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/model/company_home_main_page_response_body.dart';
import '../data/repo/company_home_main_page_repo.dart';
import 'company_home_main_page_state.dart';

class CompanyHomeMainPageCubit
    extends Cubit<CompanyHomeMainPageState<CompanyHomeMainPageResponseBody>> {
  final CompanyHomeMainPageRepo _repo;

  CompanyHomeMainPageCubit(this._repo)
      : super(const CompanyHomeMainPageState.initial());

  Future<void> getCompanyHomeMainPageData() async {
    emit(const CompanyHomeMainPageState.loading());
    final result = await _repo.getCompanyHomeMainPage();
    result.when(
      success: (data) {
        emit(CompanyHomeMainPageState.success(data));
      },
      failure: (error) {
        emit(CompanyHomeMainPageState.error(
            error: error.apiErrorModel.message ?? 'Unknown error'));
      },
    );
  }
}
