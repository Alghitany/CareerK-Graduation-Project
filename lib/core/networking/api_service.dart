import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/authentication/login/data/model/login_request_body.dart';
import '../../features/authentication/login/data/model/login_response.dart';
import 'api_constants.dart';


part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.authenticationLogin)
  Future<LoginResponse> login(
      @Body() LoginRequestBody loginRequestBody,
      );

// @POST(ApiConstants.signup)
// Future<SignupResponse> signup(
//     @Body() SignupRequestBody signupRequestBody,
//     );
}