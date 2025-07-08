import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/core/networking/api_result.dart';
import 'package:carrerk/core/networking/api_service.dart';
import 'package:carrerk/features/customer/ui/applied/data/model/reject_applications_model/reject_application_response.dart';
import 'package:carrerk/features/customer/ui/applied/data/model/reject_applications_model/reject_applications_request_model.dart';

class RejectApplicationsRepo {
  final ApiService _apiService;

  RejectApplicationsRepo(this._apiService);

  // Future<ApiResult<RejectApplicationResponse>> rejectApplication({
  //   required String applicationId,
  //   required RejectApplicationsRequestModel request,
  // }) async {
  //   try {
  //     final response = await _apiService.rejectApplication(
  //       applicationId,

  //     );
  //     return ApiResult.success(response);
  //   } catch (error) {
  //     return ApiResult.failure(ErrorHandler.handle(error));
  //   }
  // }
}
