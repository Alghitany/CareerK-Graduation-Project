class ApiConstants {
  static const String apiBaseUrl =
      "https://3e6a-197-166-238-191.ngrok-free.app/";
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

  //-----> Jobs
  //-> Apply
  static const String developerJobsApply = "api/job-applications/apply";

  //-----> Courses
  //-> Developer Profile
  static const String developerCoursesMainPageProfile =
      "api/courses-page/developer/profile";

  //------ customer ------------
  //->Sign up
  static const String customerSignup = "api/customer/register";

  //------ company ------------
  //->Sign up
  static const String companySignup = "api/company/register";

  //->Post Job
  static const String companyJobsPost = "api/jobs/create-job-post";

  //->Delete Post
  static const String companyJobsDeletePost = "api/jobs/delete-job-post";

  //------ Search ------------
  static const String searchCourses = "api/courses-page/search-courses";
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
