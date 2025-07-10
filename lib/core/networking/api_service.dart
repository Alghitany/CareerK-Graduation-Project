import 'package:carrerk/features/customer/data/models/customer_jobs_post_request_body.dart';
import 'package:carrerk/features/customer/data/models/customer_jobs_post_response.dart';
import 'package:carrerk/features/customer/ui/applied/data/model/first_screen_model/applications_response_body.dart';
import 'package:carrerk/features/customer/ui/applied/data/model/reject_applications_model/reject_application_response.dart';
import 'package:carrerk/features/customer/ui/applied/data/model/reject_applications_model/reject_applications_request_model.dart';
import 'package:carrerk/features/customer/ui/applied/data/model/secound_screen_model/application_details_response_body.dart';
import 'package:carrerk/features/notifications/data/model/get_all/all_notifications_response_model.dart';
import 'package:carrerk/features/notifications/data/model/mark_one/mark_notification_read_request_model.dart';
import 'package:carrerk/features/notifications/data/model/mark_one/mark_notification_read_response_model.dart';

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

import '../../features/company/ui/home/data/models/update_application_status_model/company_update_application_status_request_body.dart';
import '../../features/company/ui/home/data/models/update_application_status_model/company_update_application_status_response.dart';
import '../../features/company/ui/home/ui/main_page/data/model/company_home_main_page_response_body.dart';
import '../../features/company/ui/home/ui/see_details/data/model/company_home_see_details_response_body.dart';
import '../../features/company/ui/home/ui/see_resume/data/model/company_home_see_resume_response_body.dart';
import '../../features/company/ui/jobs_post/data/models/company_jobs_post_request_body.dart';
import '../../features/company/ui/jobs_post/data/models/company_jobs_post_response.dart';
import '../../features/customer/ui/home/model/model/customer_home_response_body.dart';
import '../../features/developer/data/models/developer_courses_and_jobs_main_page_profile_models/developer_courses_and_jobs_main_page_profile_response_model.dart';
import '../../features/developer/data/models/developer_recommendtions_models/developer_recommendations_response_body.dart';
import '../../features/developer/data/models/developer_single_course_bookmark_models/developer_single_course_bookmark_response_model.dart';
import '../../features/developer/data/models/developer_single_job_bookmark_models/developer_single_job_bookmark_response_model.dart';
import '../../features/developer/ui/courses/main_page/data/models/developer_courses_main_page_roadmaps_response_model.dart';
import '../../features/developer/ui/courses/roadmaps/data/models/developer_courses_roadmaps_response_body.dart';
import '../../features/developer/ui/courses/specific_category/data/models/developer_courses_specific_category_response_body.dart';
import '../../features/developer/ui/courses/specific_course/data/model/specific_course_header_models/specific_course_header_response_body.dart';
import '../../features/developer/ui/courses/specific_course/data/model/specific_course_lectures_models/specific_course_lectures_response_body.dart';
import '../../features/developer/ui/courses/specific_course/data/model/specific_course_overview_models/specific_course_overview_response_body.dart';
import '../../features/developer/ui/courses/specific_course/data/model/specific_course_reviews_models/specific_course_reviews_response_body.dart';
import '../../features/developer/ui/home_main_page/data/models/developer_courses_home_main_page_models/developer_courses_home_main_page_response_body.dart';
import '../../features/developer/ui/home_main_page/data/models/developer_name_home_main_page_models/developer_name_home_main_page_response_body.dart';
import '../../features/developer/ui/home_main_page/data/models/developer_tags_home_main_page_models/developer_tags_home_main_page_response_body.dart';
import '../../features/developer/ui/jobs/job_details/data/models/developer_jobs_job_details_response_body.dart';
import '../../features/developer/ui/jobs/search/data/models/developer_jobs_recently_posted_models/developer_jobs_recently_posted_response_body.dart';
import '../../features/developer/ui/jobs/search/data/models/developer_services_recently_posted_models/developer_services_recently_posted_response_body.dart';
import '../../features/developer/ui/jobs/service_details/data/model/developer_jobs_service_details_response_body.dart';
import '../../features/developer/ui/profile/cv_generate/data/models/generate_models/developer_profile_cv_generate_generated_request_body.dart';
import '../../features/developer/ui/profile/cv_generate/data/models/generate_models/developer_profile_cv_generate_generated_response.dart';
import '../../features/developer/ui/profile/cv_generate/data/models/send_data_models/developer_profile_cv_generate_send_data_request_body.dart';
import '../../features/developer/ui/profile/cv_generate/data/models/send_data_models/developer_profile_cv_generate_send_data_response.dart';
import '../../features/developer/ui/profile/jobs_applied/data/models/developer_profile_applied_jobs_models/developer_profile_applied_jobs_response_body.dart';
import '../../features/developer/ui/profile/jobs_applied/data/models/job_withdraw/developer_job_withdraw_response_body.dart';
import '../../features/developer/ui/profile/jobs_applied/data/models/service_delete/developer_service_delete_response_body.dart';
import '../../features/developer/ui/profile/settings/data/models/developer_generate_cv_start_session_models/developer_generate_cv_start_session_response.dart';
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

  //---------> Home Main Page
  //-> Developer Name
  @GET(ApiConstants.developerHomeName)
  Future<DeveloperNameHomeMainPageResponseBody> getDeveloperNameHomeMainPage();

  // -> Developer Tracks (Tags)
  @GET(ApiConstants.developerHomeTags)
  Future<List<DeveloperTagsHomeMainPageResponseBody>> getDeveloperTracks();

  // -> Developer Courses (Courses List)
  @GET(ApiConstants.developerHomeCourses)
  Future<List<DeveloperCoursesHomeMainPageResponseBody>> getDeveloperCourses(
    @Path('developerId') String developerId,
  );

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
  Future<DeveloperCoursesSpecificCategoryResponseBody>
      getDeveloperCoursesSpecificCategory(
    @Path("trackId") String trackId,
  );

  //-> Specific Course
  //-> Header
  @GET(ApiConstants.developerSpecificCourseHeader)
  Future<SpecificCourseHeaderResponseBody> getSpecificCourseHeader(
    @Path("courseId") String courseId,
  );

  //-> Overview
  @GET(ApiConstants.developerSpecificCourseOverview)
  Future<SpecificCourseOverviewResponseBody> getSpecificCourseOverview(
    @Path("courseId") String courseId,
  );

  // -> Lectures
  @GET(ApiConstants.developerSpecificCourseLectures)
  Future<List<SpecificCourseLecturesResponseBody>> getSpecificCourseLectures(
    @Path('courseId') String courseId,
  );

  // -> Reviews
  @GET(ApiConstants.developerSpecificCourseReviews)
  Future<SpecificCourseReviewsResponseBody> getSpecificCourseReviews(
    @Path('courseId') String courseId,
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

  //-> Single Job Bookmark
  @GET(ApiConstants.developerSingleJobBookmark)
  Future<DeveloperSingleJobBookmarkResponseModel> bookmarkJob(
    @Path("jobId") String jobId,
  );

  //-> Single Course Bookmark
  @GET(ApiConstants.developerSingleCourseBookmark)
  Future<DeveloperSingleCourseBookmarkResponseModel> bookmarkCourse(
    @Path("courseId") String courseId,
  );

  // -> Recently Posted Jobs
  @GET(ApiConstants.developerJobsRecentlyPosted)
  Future<List<DeveloperJobsRecentlyPostedResponseBody>>
      getDeveloperRecentlyPostedJobs();

  // -> Recently Posted Services
  @GET(ApiConstants.developerServicesRecentlyPosted)
  Future<List<DeveloperServicesRecentlyPostedResponseBody>>
      getDeveloperRecentlyPostedServices();

  // -> Recommendations
  @GET(ApiConstants.developerRecommendations)
  Future<DeveloperRecommendationsResponseBody> getDeveloperRecommendations();

  //-> Profile
  // Applied Jobs
  @GET(ApiConstants.developerProfileAppliedJobs)
  Future<DeveloperProfileAppliedJobsResponseBody>
      getDeveloperProfileAppliedJobs();

  // Generate CV With Ai Start Session
  @POST(ApiConstants.developerProfileGenerateCVStartSession)
  Future<DeveloperGenerateCVStartSessionResponseBody>
      startDeveloperGenerateCVSession();

  // Generate CV With Ai Send Data
  @PUT(ApiConstants.developerProfileGenerateCVSendData)
  Future<DeveloperProfileCVGenerateSendDataResponse> sendDeveloperCVData(
    @Path('sessionId') String sessionId,
    @Body() DeveloperProfileCVGenerateSendDataRequestBody requestBody,
  );

  // Generate CV With Ai Generated
  @POST(ApiConstants.developerProfileGenerateCVGenerated)
  Future<DeveloperProfileCVGenerateGeneratedResponse> generateCV(
    @Path('sessionId') String sessionId,
    @Body() DeveloperProfileCVGenerateGeneratedRequestBody requestBody,
  );

  // Delete Job Application by ID
  @DELETE(ApiConstants.developerJobWithdraw)
  Future<DeveloperJobWithdrawResponseBody> deleteJobApplication(
    @Path("applicationId") String applicationId,
  );

  // Delete Service Application by ID
  @DELETE(ApiConstants.developerServiceDelete)
  Future<DeveloperProfileAppliedServicesResponseBody> deleteServiceApplication(
    @Path("applicationId") String applicationId,
  );

  //----------------- Company
  // Company Sign up Handled with dio
  //-> Home Main Page
  @GET(ApiConstants.companyHomeMainPage)
  Future<CompanyHomeMainPageResponseBody> getCompanyHomeMainPage();

  //-> Home See Resume
  @GET(ApiConstants.companyHomeSeeResume)
  Future<CompanyHomeSeeResumeResponseBody> getCompanyHomeSeeResume(
    @Path('developerId') String developerId,
  );

  //-> Home See Details
  @GET(ApiConstants.companyHomeSeeDetails)
  Future<CompanyHomeSeeDetailsResponseBody> getCompanyHomeSeeDetails(
    @Path('applicationId') String applicationId,
  );

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

// notification
// get all
  @GET(ApiConstants.allNotification)
  Future<AllNotificationsResponseModel> getAllNotifications();
// mark one
  @PATCH(ApiConstants.markOneNotification)
  Future<MarkNotificationReadResponseModel> markNotificationAsRead(
    @Path('notificationId') String notificationId,
    @Body() MarkNotificationReadRequestModel request,
  );
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

  //--------------- apiilied
  @GET(ApiConstants.customerApplied)
  Future<ApplicationsResponseBody> getCustomerAppliedScreen(
    @Path("applicantId") String applicantId,
  );

  //--------------- apiilied details
  @GET(ApiConstants.customerAppliedDetails)
  Future<ApplicationDetailsResponseBody> getApplicationDetails(
    @Path("applicantId") String applicantId,
  );

  // -------------reject
  @PATCH(ApiConstants.rejectApplications)
  Future<RejectApplicationResponseBody> rejectApplication(
    @Path('applicantId') String applicantId,
    @Body() RejectApplicationRequestBody request,
  );
  @POST(ApiConstants.startChatRoom)
  Future<StartChatRoomResponse> startPrivateChat(
    @Body() StartChatRoomRequestBody body,
  );

  @GET(ApiConstants.sendAndReceiveMessages)
  Future<GetChatMessagesResponseBody> getChatMessages(
    @Path('chatRoomId') String chatRoomId,
  );
// // View customer profile

//----------------- Customer
// Customer Sign up Handled with dio
}
