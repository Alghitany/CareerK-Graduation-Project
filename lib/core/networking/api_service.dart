import 'package:carrerk/features/customer/data/models/customer_jobs_post_request_body.dart';
import 'package:carrerk/features/customer/data/models/customer_jobs_post_response.dart';
import 'package:carrerk/features/customer/ui/home/data/model/customer_home_response_body.dart';
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
import '../../features/chats/contact_list/all_chats/data/model/conact_list_all_chats_response_body.dart';
import '../../features/chats/person_chat/data/models/get_chat_messages/get_chat_messages_response_body.dart';
import '../../features/chats/person_chat/data/models/start_chat/start_chat_room_request_body.dart';
import '../../features/chats/person_chat/data/models/start_chat/start_chat_room_response.dart';
import '../../features/company/data/model/company_jobs_delete_post_response.dart';
import '../../features/company/jobs_post/data/models/company_jobs_post_request_body.dart';
import '../../features/company/jobs_post/data/models/company_jobs_post_response.dart';

import '../../features/company/ui/home/data/models/update_application_status_model/company_update_application_status_request_body.dart';
import '../../features/company/ui/home/data/models/update_application_status_model/company_update_application_status_response.dart';
import '../../features/developer/data/models/developer_courses_and_jobs_main_page_profile_models/developer_courses_and_jobs_main_page_profile_response_model.dart';
import '../../features/developer/data/models/developer_single_job_bookmark_models/developer_single_job_bookmark_response_model.dart';
import '../../features/developer/ui/courses/main_page/data/models/developer_courses_main_page_roadmaps_response_model.dart';
import '../../features/developer/ui/courses/roadmaps/data/models/developer_courses_roadmaps_response_body.dart';
import '../../features/developer/ui/courses/specific_category/data/models/developer_courses_specific_category_response_body.dart';
import '../../features/developer/ui/jobs/job_details/data/models/developer_jobs_job_details_response_body.dart';
import '../../features/developer/ui/jobs/search/data/models/developer_jobs_recently_posted_models/developer_jobs_recently_posted_response_body.dart';
import '../../features/developer/ui/jobs/search/data/models/developer_services_recently_posted_models/developer_services_recently_posted_response_body.dart';
import '../../features/developer/ui/jobs/service_details/data/model/developer_jobs_service_details_response_body.dart';
import '../../features/developer/ui/profile/jobs_applied/data/models/developer_profile_applied_jobs_models/developer_profile_applied_jobs_response_body.dart';
import '../../features/developer/ui/profile/jobs_applied/data/models/job_withdraw/developer_job_withdraw_response_body.dart';
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

  //-> Job Details
  @GET(ApiConstants.developerJobsJobDetails)
  Future<DeveloperJobsJobDetailsResponseBody> getDeveloperJobDetails(
    @Path("jobId") String jobId,
  );

  //-> Service Details
  @GET(ApiConstants.developerJobsServiceDetails)
  Future<DeveloperJobsServiceDetailsResponseBody> getDeveloperServiceDetails(
    @Path("serviceId") String serviceId,
  );

  //-> Single Bookmark
  @GET(ApiConstants.developerSingleJobBookmark)
  Future<DeveloperSingleJobBookmarkResponseModel> bookmarkJob(
    @Path("jobId") String jobId,
  );

  // -> Recently Posted Jobs
  @GET(ApiConstants.developerJobsRecentlyPosted)
  Future<List<DeveloperJobsRecentlyPostedResponseBody>>
      getDeveloperRecentlyPostedJobs();

  // -> Recently Posted Services
  @GET(ApiConstants.developerServicesRecentlyPosted)
  Future<List<DeveloperServicesRecentlyPostedResponseBody>>
      getDeveloperRecentlyPostedServices();

  //-> Profile Applied Jobs
  @GET(ApiConstants.developerProfileAppliedJobs)
  Future<DeveloperProfileAppliedJobsResponseBody>
      getDeveloperProfileAppliedJobs();

  // Delete Job Application by ID
  @DELETE(ApiConstants.developerJobWithdraw)
  Future<DeveloperJobWithdrawResponseBody> deleteJobApplication(
    @Path("applicationId") String applicationId,
  );

  //----------------- Company
  // Company Sign up Handled with dio
  //->Post Job
  @POST(ApiConstants.companyJobsPost)
  Future<CompanyJobsPostResponse> companyJobsPost(
    @Body() CompanyJobsPostRequestBody companyJobsPostRequestBody,
  );

  //-> Update Application Status
  @PUT(ApiConstants.companyUpdateApplicationStatus)
  Future<CompanyUpdateApplicationStatusResponseBody> updateApplicationStatus(
    @Path('applicationId') String applicationId,
    @Body() CompanyUpdateStatusRequestBody requestBody,
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

//----------------- Customer
  //->Post Job
  @POST(ApiConstants.customerJobsPost)
  Future<CustomerJobsPostResponse> customerJobsPost(
    @Body() CustomerJobsPostRequestBody customerJobsPostRequestBody,
  );

  //----------------- contact list
  @GET(ApiConstants.contactList)
  Future<ContactListAllChatsResponseBody> getContactListAllChats();
  // -----------------Home

  @GET(ApiConstants.customerHome)
  Future<CustomerHomeResponseBody> getCustomerHomeMainPage();

  @POST(ApiConstants.startChatRoom)
  Future<StartChatRoomResponse> startPrivateChat(
    @Body() StartChatRoomRequestBody body,
  );

  @GET(ApiConstants.sendAndReceiveMessages)
  Future<GetChatMessagesResponseBody> getChatMessages(
    @Path('chatRoomId') String chatRoomId,
  );

//----------------- Customer
// Customer Sign up Handled with dio
}
