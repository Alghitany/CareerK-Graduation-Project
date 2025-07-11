import 'package:carrerk/features/customer/data/models/customer_jobs_post_request_body.dart';
import 'package:carrerk/features/customer/data/models/customer_jobs_post_response.dart';
import 'package:carrerk/features/customer/ui/applied/data/model/first_screen_model/applications_response_body.dart';
import 'package:carrerk/features/customer/ui/applied/data/model/reject_applications_model/reject_application_response.dart';
import 'package:carrerk/features/customer/ui/applied/data/model/secound_screen_model/application_details_response_body.dart';
import 'package:carrerk/features/developer/ui/profile/ui/bookmarks/data/models/developer_profile_courses_bookmarked_models/developer_profile_courses_bookmarked_response_body.dart';
import 'package:carrerk/features/developer/ui/profile/ui/bookmarks/data/models/developer_profile_jobs_bookmarked_models/developer_profile_jobs_bookmarked_response_body.dart';
import 'package:carrerk/features/developer/ui/profile/ui/bookmarks/data/models/developer_profile_services_bookmarked_models/developer_profile_services_bookmarked_response_body.dart';
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
import '../../features/company/ui/profile/data/models/company_profile_all_jobs_posts_models/company_profile_all_job_posts_response_body.dart';
import '../../features/company/ui/profile/data/models/company_profile_applicants_number_models/company_profile_applicants_number_response_body.dart';
import '../../features/company/ui/profile/data/models/company_profile_info_models/company_profile_info_response_body.dart';
import '../../features/customer/ui/home/model/model/customer_home_response_body.dart';
import '../../features/developer/data/models/developer_add_course_bookmark_models/developer_add_course_bookmark_request_body.dart';
import '../../features/developer/data/models/developer_add_course_bookmark_models/developer_add_course_bookmark_response.dart';
import '../../features/developer/data/models/developer_add_job_bookmark_models/developer_add_job_bookmark_request_body.dart';
import '../../features/developer/data/models/developer_add_job_bookmark_models/developer_add_job_bookmark_response.dart';
import '../../features/developer/data/models/developer_courses_and_jobs_main_page_profile_models/developer_courses_and_jobs_main_page_profile_response_model.dart';
import '../../features/developer/data/models/developer_recommendtions_models/developer_recommendations_response_body.dart';
import '../../features/developer/data/models/developer_single_course_bookmark_models/developer_single_course_bookmark_response_model.dart';
import '../../features/developer/data/models/developer_single_job_bookmark_models/developer_single_job_bookmark_response_model.dart';
import '../../features/developer/ui/courses/data/models/ongoing_courses/developer_courses_ongoing_response_body.dart';
import '../../features/developer/ui/courses/data/models/related_courses/developer_courses_related_courses_response_body.dart';
import '../../features/developer/ui/courses/ui/main_page/data/models/main_page_roadmaps_models/developer_courses_main_page_roadmaps_response_model.dart';
import '../../features/developer/ui/courses/ui/my_courses/data/models/developer_courses_completed_response_body.dart';
import '../../features/developer/ui/courses/ui/roadmaps/data/models/developer_courses_roadmaps_response_body.dart';
import '../../features/developer/ui/courses/ui/specific_category/data/models/developer_courses_specific_category_response_body.dart';
import '../../features/developer/ui/courses/ui/specific_course/data/model/specific_course_enroll_models/specific_course_enroll_request_body.dart';
import '../../features/developer/ui/courses/ui/specific_course/data/model/specific_course_enroll_models/specific_course_enroll_response.dart';
import '../../features/developer/ui/courses/ui/specific_course/data/model/specific_course_header_models/specific_course_header_response_body.dart';
import '../../features/developer/ui/courses/ui/specific_course/data/model/specific_course_lectures_models/specific_course_lectures_response_body.dart';
import '../../features/developer/ui/courses/ui/specific_course/data/model/specific_course_lesson_complete_models/specific_course_lesson_complete_request_body.dart';
import '../../features/developer/ui/courses/ui/specific_course/data/model/specific_course_lesson_complete_models/specific_course_lesson_complete_response.dart';
import '../../features/developer/ui/courses/ui/specific_course/data/model/specific_course_overview_models/specific_course_overview_response_body.dart';
import '../../features/developer/ui/courses/ui/specific_course/data/model/specific_course_reviews_models/specific_course_reviews_response_body.dart';
import '../../features/developer/ui/home_main_page/data/models/developer_courses_home_main_page_models/developer_courses_home_main_page_response_body.dart';
import '../../features/developer/ui/home_main_page/data/models/developer_name_home_main_page_models/developer_name_home_main_page_response_body.dart';
import '../../features/developer/ui/home_main_page/data/models/developer_tags_home_main_page_models/developer_tags_home_main_page_response_body.dart';
import '../../features/developer/ui/jobs/search/data/models/developer_jobs_recently_posted_models/developer_jobs_recently_posted_response_body.dart';
import '../../features/developer/ui/jobs/search/data/models/developer_services_recently_posted_models/developer_services_recently_posted_response_body.dart';
import '../../features/developer/ui/jobs/service_details/data/model/developer_jobs_service_details_response_body.dart';
import '../../features/developer/ui/profile/ui/cv_generate/data/models/generate_models/developer_profile_cv_generate_generated_request_body.dart';
import '../../features/developer/ui/profile/ui/cv_generate/data/models/generate_models/developer_profile_cv_generate_generated_response.dart';
import '../../features/developer/ui/profile/ui/cv_generate/data/models/send_data_models/developer_profile_cv_generate_send_data_request_body.dart';
import '../../features/developer/ui/profile/ui/cv_generate/data/models/send_data_models/developer_profile_cv_generate_send_data_response.dart';
import '../../features/developer/ui/profile/ui/jobs_applied/data/models/developer_profile_applied_jobs_models/developer_profile_applied_jobs_response_body.dart';
import '../../features/developer/ui/profile/ui/jobs_applied/data/models/job_withdraw/developer_job_withdraw_response_body.dart';
import '../../features/developer/ui/profile/ui/jobs_applied/data/models/service_delete/developer_service_delete_response_body.dart';
import '../../features/developer/ui/profile/ui/main_page/data/models/profile_info_models/developer_profile_main_page_info_response_body.dart';
import '../../features/developer/ui/profile/ui/my_cv/data/models/developer_profile_settings_delete_cv/developer_profile_settings_delete_cv_request_body.dart';
import '../../features/developer/ui/profile/ui/my_cv/data/models/developer_profile_settings_delete_cv/developer_profile_settings_delete_cv_response.dart';
import '../../features/developer/ui/profile/ui/my_cv/data/models/developer_profile_settings_get_my_cv_models/developer_profile_settings_get_my_cv_response_body.dart';
import '../../features/developer/ui/profile/ui/settings/data/models/developer_generate_cv_start_session_models/developer_generate_cv_start_session_response.dart';
import '../../features/post_details/data/models/post_details_models/job_details_response_body.dart';
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

  // Courses Main Page
  //-> Profile
  @GET(ApiConstants.developerCoursesMainPageProfile)
  Future<DeveloperCoursesAndJobsMainPageProfileResponseModel>
      getDeveloperCoursesMainPageProfile();

  //-> Roadmaps
  @GET(ApiConstants.developerCoursesMainPageRoadmaps)
  Future<List<DeveloperCoursesMainPageRoadmapsResponseModel>>
      getDeveloperCoursesMainPageRoadmaps();

  //-> Completed Courses
  @GET(ApiConstants.developerCoursesCompleted)
  Future<List<DeveloperCoursesCompletedResponseBody>>
      getDeveloperCompletedCourses(
    @Query('status') String status,
  );

  //-> Ongoing Courses
  @GET(ApiConstants.developerCoursesOngoing)
  Future<List<DeveloperCoursesOngoingResponseBody>>
      getDeveloperOngoingCourses();

  //-> Related Courses
  @GET(ApiConstants.developerCoursesMainPageRelatedCourses)
  Future<List<DeveloperCoursesRelatedCoursesResponseBody>>
      getDeveloperRelatedCourses();

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

  //Enroll
  @PATCH(ApiConstants.developerSpecificCourseEnroll)
  Future<SpecificCourseEnrollResponse> enrollInSpecificCourse(
    @Body() SpecificCourseEnrollRequestBody requestBody,
    @Path('courseId') String courseId,
  );

  // Lesson Complete
  @PATCH(ApiConstants.developerSpecificCourseLessonComplete)
  Future<SpecificCourseLessonCompleteResponse> completeLesson(
    @Body() SpecificCourseLessonCompleteRequestBody requestBody,
  );

  // -> Reviews
  @GET(ApiConstants.developerSpecificCourseReviews)
  Future<SpecificCourseReviewsResponseBody> getSpecificCourseReviews(
    @Path('courseId') String courseId,
  );

  //-> Job Details
  @GET(ApiConstants.jobDetails)
  Future<JobDetailsResponseBody> jobDetails(
    @Path("jobId") String jobId,
  );

  //-> Service Details
  @GET(ApiConstants.developerJobsServiceDetails)
  Future<DeveloperJobsServiceDetailsResponseBody> getDeveloperServiceDetails(
    @Path("serviceId") String serviceId,
  );

  //-> Add Job Bookmark
  @PATCH(ApiConstants.developerAddJobBookmark)
  Future<DeveloperAddJobBookmarkResponse> addJobBookmark(
    @Path("jobId") String jobId,
    @Body()
    DeveloperAddJobBookmarkRequestBody developerAddJobBookmarkRequestBody,
  );

  //-> Single Job Bookmark
  @GET(ApiConstants.developerSingleJobBookmark)
  Future<DeveloperSingleJobBookmarkResponseModel> bookmarkJob(
    @Path("jobId") String jobId,
  );

  //-> Add Course Bookmark
  @PATCH(ApiConstants.developerAddCourseBookmark)
  Future<DeveloperAddCourseBookmarkResponse> addCourseBookmark(
    @Path("courseId") String courseId,
    @Body() DeveloperAddCourseBookmarkRequestBody body,
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
  // Info
  @GET(ApiConstants.developerProfileInfo)
  Future<DeveloperProfileMainPageInfoResponseBody>
      getDeveloperProfileMainPageInfo();

  // Edit Profile Use Dio Directly

  //-> Settings
  // Applied Jobs
  @GET(ApiConstants.developerProfileAppliedJobs)
  Future<DeveloperProfileAppliedJobsResponseBody>
      getDeveloperProfileAppliedJobs();

  // Get My CV
  @GET(ApiConstants.developerProfileSettingsGetMyCV)
  Future<DeveloperProfileSettingsGetMyCVResponseBody> getDeveloperMyCV();

  // Edit My CV is done direct with dio
  // Delete My CV
  @DELETE(ApiConstants.developerDeleteMyCV)
  Future<DeveloperProfileSettingsDeleteCVResponseBody> deleteMyCV(
    @Body()
    DeveloperProfileSettingsDeleteCVRequestBody
        developerProfileSettingsDeleteCVRequestBody,
  );

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

  // Edit Profile done with dio directly
  //-> Bookmarked
  // Posts
  @GET(ApiConstants.developerProfilePostsBookmarked)
  Future<List<DeveloperProfileJobsBookmarkedResponseBody>>
      getDeveloperJobBookmarks(
    @Query("postType") String postType,
  );

  // Services
  @GET(ApiConstants.developerProfilePostsBookmarked)
  Future<List<DeveloperProfileServicesBookmarkedResponseBody>>
      getDeveloperBookmarkedServices(
    @Query("postType") String postType,
  );

  // Courses
  @GET(ApiConstants.developerProfileCoursesBookmarked)
  Future<List<DeveloperProfileCoursesBookmarkedResponseBody>>
      getDeveloperProfileBookmarkedCourses();

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

  //-> Profile
  // Profile Info
  @GET(ApiConstants.companyProfileInfo)
  Future<CompanyProfileInfoResponseBody> getCompanyProfileInfo();

  // Company All Job Posts
  @GET(ApiConstants.companyProfileAllJobPosts)
  Future<CompanyProfileAllJobPostsResponseBody> getCompanyProfileAllJobPosts();

  // Company Get Applicants Number
  @GET(ApiConstants.companyProfileApplicantsNumber)
  Future<CompanyProfileApplicantsNumberResponseBody>
      companyProfileGetApplicantsNumber();

  //-> Delete Job
  @DELETE(ApiConstants.companyJobsDeletePost)
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
  Future<RejectApplicationResponse> rejectApplication(
    @Path('applicantId') String applicantId,
    @Body() Map<String, dynamic> body,
  );

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
