class ApiConstants {
  static const String apiBaseUrl = "https://e419-197-164-8-153.ngrok-free.app/";
  static const String baseImageUrl =
      "https://3e6a-197-166-238-191.ngrok-free.app/uploads/profile_pictures/";

  //------ Authentication -------
  static const String authenticationLogin = "api/auth/login";
  static const String authenticationResetPassword =
      "api/password/forgot-password";
  static const String authenticationVerifyCode = "api/password/verify-otp";
  static const String authenticationChangePassword =
      "api/password/reset-password";

  //------ Developer ------------
  //-> Sign up
  static const String developerSignup = "api/developer/register";

  //-----> Home
  //-> Developer Name
  static const String developerHomeName = "api/developer/name";

  //-> Developer Tracks (Tags)
  static const String developerHomeTags = "api/developer/tracks";

  // -> Developer Courses (Courses List)
  static const String developerHomeCourses =
      "api/developer/{developerId}/courses";

  //-----> Jobs
  //-> Apply
  static const String developerJobsApply = "api/job-applications/apply";

  //-> Job Details
  static const String developerJobsJobDetails = "api/job-post/{jobId}";

  //-> Job Details
  static const String developerJobsServiceDetails =
      "api/service-post/{serviceId}";

  //-> Single Job Bookmark
  static const String developerSingleJobBookmark =
      "/api/bookmarks/bookmark/{jobId}";

  //-> Single Course Bookmark
  static const String developerSingleCourseBookmark =
      "/api/course-bookmarks/{courseId}/is-bookmarked";

  //-> Jobs Recently Posted
  static const String developerJobsRecentlyPosted =
      "api/job-post/filter/recently-posted";

  //-> Jobs Recently Posted
  static const String developerServicesRecentlyPosted =
      "api/service-post/filter/recently-posted";

  //-> Recommendations
  static const String developerRecommendations = 'api/recommendations';

  //-----> Courses
  //-> Developer Profile
  static const String developerCoursesMainPageProfile =
      "api/courses-page/developer-name";

  //-> Roadmaps List
  static const String developerCoursesMainPageRoadmaps =
      "api/courses-page/roadmaps/preview";

  //-----> Roadmaps & Track Courses Base Path
  static const String developerTracksBasePath = "api/tracks-page/tracks";

  //-----> Roadmaps & Track Courses Base Path
  static const String developerSpecificCourseHeader =
      "api/course-details/{courseId}/header";

  //-----> Profile
  //-> Applied Jobs
  static const String developerProfileAppliedJobs =
      "api/developer/my-applications";

  //-> Job Withdraw
  static const String developerJobWithdraw =
      "api/job-application/{applicationId}";

  //-> Service Delete
  static const String developerServiceDelete =
      "api/service-application/{applicationId}";

  //------ customer ------------
  //->Sign up
  static const String customerSignup = "api/customer/register";

  //------ company ------------
  //->Sign up
  static const String companySignup = "api/company/register";

  //->Company Home Main Page
  static const String companyHomeMainPage = "api/company/homepage";

  //->Company Home See Resume
  static const String companyHomeSeeResume = "api/company/{developerId}/cv";

  //->Company Home See Resume
  static const String companyHomeSeeDetails =
      "api/company/application/{applicationId}";

  //->Post Job
  static const String companyJobsPost = "api/jobs/create-job-post";

  //->Post Job
  static const String companyUpdateApplicationStatus =
      "/api/job-application/{applicationId}/status";

  //->Delete Post
  static const String companyJobsDeletePost = "api/jobs/delete-job-post";

  //------ Search ------------
  static const String searchCourses = "api/courses-page/search-courses";

  //------ chats ------------
  static const String allChats = "api/private-chats";
  static const String startChatRoom = "api/private-chats/start";
  static const String sendAndReceiveMessages = "api/private-chats/{chatRoomId}";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
