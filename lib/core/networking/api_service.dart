import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/authentication/change_password/data/models/change_password_request_body.dart';
import '../../features/authentication/change_password/data/models/change_password_response.dart';
import '../../features/authentication/login/data/model/login_request_body.dart';
import '../../features/authentication/login/data/model/login_response.dart';
import '../../features/authentication/reset_password/data/models/reset_password_request_body.dart';
import '../../features/authentication/reset_password/data/models/reset_password_response.dart';
import '../../features/authentication/verify_code/data/model/verify_code_request_body.dart';
import '../../features/authentication/verify_code/data/model/verify_code_response.dart';
import '../../features/company/jobs_post/data/models/company_jobs_post_request_body.dart';
import '../../features/company/jobs_post/data/models/company_jobs_post_response.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.authenticationLogin)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.authenticationResetPassword)
  Future<ResetPasswordResponse> resetPassword(
    @Body() ResetPasswordRequestBody resetPasswordRequestBody,
  );

  @POST(ApiConstants.authenticationVerifyCode)
  Future<VerifyCodeResponse> verifyCode(
    @Body() VerifyCodeRequestBody verifyCodeRequestBody,
  );

  @POST(ApiConstants.authenticationChangePassword)
  Future<ChangePasswordResponse> changePassword(
    @Body() ChangePasswordRequestBody changePasswordRequestBody,
  );
  // Developer Sign up Handled with dio
  // Developer Jobs Apply Handled with dio
  @POST(ApiConstants.companyJobsPost)
  Future<CompanyJobsPostResponse> companyJobsPost(
      @Body() CompanyJobsPostRequestBody companyJobsPostRequestBody,
      );
}
