import 'package:carrerk/features/customer/data/models/customer_jobs_post_request_body.dart';
import 'package:carrerk/features/customer/data/repos/customer_jobs_post_repo.dart';
import 'package:carrerk/features/customer/logic/customer_jobs_post_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerJobsPostCubit extends Cubit<CustomerJobsPostState> {
  final CustomerJobsPostRepo _customerJobsPostRepo;

  CustomerJobsPostCubit(this._customerJobsPostRepo)
      : super(const CustomerJobsPostState.initial());

  // Form Keys
  final customerJobsPostFormKey = GlobalKey<FormState>();

  // Controllers
  final TextEditingController taskTitleController = TextEditingController();
  final TextEditingController taskDescriptionController =
      TextEditingController();
  final TextEditingController priceRangeController = TextEditingController();
  final TextEditingController deadlineTaskController = TextEditingController();
  final TextEditingController experienceLevelController =
      TextEditingController();
  final List<TextEditingController> skillsControllers = [];

  List<String> selectedSkills = [];

  void addSkillField() {
    skillsControllers.add(TextEditingController());
    emit(state);
  }

  void removeSkillField(int index) {
    skillsControllers.removeAt(index);
  }

  List<String> getSelectedSkills() {
    return skillsControllers
        .map((controller) => controller.text.trim())
        .where((text) => text.isNotEmpty)
        .toList();
  }

  void dispose() {
    taskTitleController.dispose();
    taskDescriptionController.dispose();

    priceRangeController.dispose();
    deadlineTaskController.dispose();
    experienceLevelController.dispose();

    for (final controller in skillsControllers) {
      controller.dispose();
    }
    skillsControllers.clear();
  }

  Future<void> postJob(CustomerJobsPostRequestBody requestBody) async {
    emit(const CustomerJobsPostState.loading());
    final response = await _customerJobsPostRepo.postJob(requestBody);
    response.when(
      success: (data) {
        emit(CustomerJobsPostState.success(data));
      },
      failure: (error) {
        emit(CustomerJobsPostState.error(
            error: error.apiErrorModel.message ?? 'Something went wrong'));
      },
    );
  }
}
