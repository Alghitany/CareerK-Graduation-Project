import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/models/company_jobs_post_request_body.dart';
import '../data/repos/company_jobs_post_repo.dart';
import 'company_jobs_post_state.dart';

class CompanyJobsPostCubit extends Cubit<CompanyJobsPostState> {
  final CompanyJobsPostRepo _companyJobsPostRepo;

  CompanyJobsPostCubit(this._companyJobsPostRepo)
      : super(const CompanyJobsPostState.initial());

  // Form Keys
  final companyJobsPostFirstFormKey = GlobalKey<FormState>();
  final companyJobsPostSecondFormKey = GlobalKey<FormState>();

  // Controllers
  final TextEditingController jobTitleController = TextEditingController();
  final TextEditingController jobDescriptionController = TextEditingController();
  final TextEditingController jobTypeController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController salaryRangeController = TextEditingController();
  final TextEditingController deadlineTaskController = TextEditingController();
  final TextEditingController experienceRequiredController = TextEditingController();
  final TextEditingController companyDepartmentController = TextEditingController();
  final TextEditingController jobAvailabilityController = TextEditingController();

  List<String> selectedSkills = [];

  Future<void> postJob(CompanyJobsPostRequestBody requestBody) async {
    emit(const CompanyJobsPostState.loading());

    final response = await _companyJobsPostRepo.postJob(requestBody);
    response.when(
      success: (data) {
        emit(CompanyJobsPostState.success(data));
      },
      failure: (error) {
        emit(CompanyJobsPostState.error(error: error.apiErrorModel.message ?? 'Something went wrong'));
      },
    );
  }
}
