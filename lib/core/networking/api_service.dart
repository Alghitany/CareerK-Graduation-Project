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
import '../../features/chats/all_chats/data/model/chats_all_chats_response_body.dart';
import '../../features/chats/person_chat/data/models/start_chat/start_chat_room_request_body.dart';
import '../../features/chats/person_chat/data/models/start_chat/start_chat_room_response.dart';
import '../../features/company/data/model/company_jobs_delete_post_response.dart';
import '../../features/company/ui/jobs_post/data/models/company_jobs_post_request_body.dart';
import '../../features/company/ui/jobs_post/data/models/company_jobs_post_response.dart';
import '../../features/developer/data/model/developer_courses_and_jobs_main_page_profile_response_model.dart';
import '../../features/developer/ui/courses/main_page/data/models/developer_courses_main_page_roadmaps_response_model.dart';
import '../../features/developer/ui/courses/roadmaps/data/models/developer_courses_roadmaps_response_body.dart';
import '../../features/developer/ui/courses/specific_category/data/models/developer_courses_specific_category_response_body.dart';
import '../../features/search/data/model/search_courses_response_body.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  //----------------- Authentication
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

  //----------------- Developer
  // Developer Sign up Handled with dio
  // Developer Jobs Apply Handled with dio
  //->Courses Main Page Profile
  @GET(ApiConstants.developerCoursesMainPageProfile)
  Future<DeveloperCoursesAndJobsMainPageProfileResponseModel>
      getDeveloperCoursesMainPageProfile();

  //->Courses Main Page Roadmaps
  @GET(ApiConstants.developerCoursesMainPageRoadmaps)
  Future<List<DeveloperCoursesMainPageRoadmapsResponseModel>>
      getDeveloperCoursesMainPageRoadmaps();

  //->Courses Roadmaps
  @GET(ApiConstants.developerTracksBasePath)
  Future<List<DeveloperCoursesRoadmapsResponseBody>>
      getDeveloperCoursesRoadmaps();

  //-> Specific Category
  @GET("${ApiConstants.developerTracksBasePath}/{trackId}/courses")
  Future<List<DeveloperCoursesSpecificCategoryResponseBody>>
      getDeveloperCoursesSpecificCategory(
    @Path("trackId") String trackId,
  );

  //----------------- Company
  //->Post Job
  @POST(ApiConstants.companyJobsPost)
  Future<CompanyJobsPostResponse> companyJobsPost(
    @Body() CompanyJobsPostRequestBody companyJobsPostRequestBody,
  );

  //-> Delete Job
  @DELETE("${ApiConstants.companyJobsDeletePost}/{jobId}")
  Future<CompanyJobsDeletePostResponse> deleteCompanyJobPost(
    @Path("jobId") String jobId,
  );

  //----------------- Search
  @GET(ApiConstants.searchCourses)
  Future<List<SearchCoursesResponseBody>> searchCourses(
    @Query("search") String searchQuery,
  );

  //----------------- Chats
  @GET(ApiConstants.allChats)
  Future<ChatsAllChatsResponseBody> getAllChats();
  @POST(ApiConstants.startChatRoom)
  Future<StartChatRoomResponse> startPrivateChat(
      @Body() StartChatRoomRequestBody body,
      );

}
