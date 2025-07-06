import 'package:carrerk/features/chats/person_chat/data/repo/get_chat_messages_repo.dart';
import 'package:carrerk/features/chats/person_chat/logic/get_chat_messages/get_chat_messages_cubit.dart';
import 'package:carrerk/features/company/data/repo/company_jobs_delete_post_repo.dart';
import 'package:carrerk/features/company/logic/company_jobs_delete_post_cubit.dart';
import 'package:carrerk/features/company/ui/home/ui/main_page/data/repo/company_home_main_page_repo.dart';
import 'package:carrerk/features/company/ui/home/ui/see_details/data/repo/company_home_see_details_repo.dart';
import 'package:carrerk/features/developer/data/repo/developer_single_job_bookmark_repo.dart';
import 'package:carrerk/features/developer/logic/developer_single_job_bookmark_logic/developer_single_job_bookmark_cubit.dart';
import 'package:carrerk/features/developer/ui/courses/main_page/data/repo/developer_courses_main_page_roadmaps_repo.dart';
import 'package:carrerk/features/developer/ui/courses/specific_category/data/repo/developer_courses_specific_category_repo.dart';
import 'package:carrerk/features/developer/ui/courses/specific_category/logic/developer_courses_specific_category_cubit.dart';
import 'package:carrerk/features/developer/ui/courses/specific_course/data/repo/specific_course_header_repo.dart';
import 'package:carrerk/features/developer/ui/courses/specific_course/logic/specific_course_header_logic/specific_course_header_cubit.dart';
import 'package:carrerk/features/developer/ui/home_main_page/data/repos/developer_courses_home_main_page_repo.dart';
import 'package:carrerk/features/developer/ui/home_main_page/data/repos/developer_name_home_main_page_repo.dart';
import 'package:carrerk/features/developer/ui/home_main_page/data/repos/developer_tags_home_main_page_repo.dart';
import 'package:carrerk/features/developer/ui/home_main_page/logic/developer_courses_home_main_page_logic/developer_courses_home_main_page_cubit.dart';
import 'package:carrerk/features/developer/ui/jobs/job_details/data/repo/developer_jobs_job_details_repo.dart';
import 'package:carrerk/features/developer/ui/jobs/job_details/logic/developer_jobs_job_details_cubit.dart';
import 'package:carrerk/features/developer/ui/jobs/search/data/repo/developer_jobs_recently_posted_repo.dart';
import 'package:carrerk/features/developer/ui/profile/jobs_applied/data/repo/developer_job_withdraw_repo.dart';
import 'package:carrerk/features/developer/ui/profile/jobs_applied/data/repo/developer_profile_applied_jobs_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/authentication/change_password/data/repos/change_password_repo.dart';
import '../../features/authentication/change_password/logic/change_password_cubit.dart';
import '../../features/authentication/login/data/repos/login_repo.dart';
import '../../features/authentication/login/logic/login_cubit.dart';
import '../../features/authentication/reset_password/data/repos/reset_password_repo.dart';
import '../../features/authentication/reset_password/logic/reset_password_cubit.dart';
import '../../features/authentication/verify_code/data/repo/verify_code_repo.dart';
import '../../features/authentication/verify_code/logic/verify_code_cubit.dart';
import '../../features/chats/all_chats/data/repo/chats_all_chats_repo.dart';
import '../../features/chats/all_chats/logic/chats_all_chats_cubit.dart';
import '../../features/chats/person_chat/data/repo/send_messages_repo.dart';
import '../../features/chats/person_chat/data/repo/start_chat_room_repo.dart';
import '../../features/chats/person_chat/logic/send_messages/send_messages_cubit.dart';
import '../../features/chats/person_chat/logic/start_chat/start_chat_room_cubit.dart';
import '../../features/company/ui/home/data/repos/company_update_application_status_repo.dart';
import '../../features/company/ui/home/logic/update_application_status_logic/company_update_application_status_cubit.dart';
import '../../features/company/ui/home/ui/main_page/logic/company_home_main_page_cubit.dart';
import '../../features/company/ui/home/ui/see_details/logic/company_home_see_details_cubit.dart';
import '../../features/company/ui/home/ui/see_resume/data/repo/company_home_see_resume_repo.dart';
import '../../features/company/ui/home/ui/see_resume/logic/company_home_see_resume_cubit.dart';
import '../../features/company/ui/jobs_post/data/repos/company_jobs_post_repo.dart';
import '../../features/company/ui/jobs_post/logic/company_jobs_post_cubit.dart';
import '../../features/company/ui/sign_up/data/repo/company_sign_up_repo.dart';
import '../../features/company/ui/sign_up/logic/company_sign_up_cubit.dart';
import '../../features/customer/sign_up/data/repo/customer_sign_up_repo.dart';
import '../../features/customer/sign_up/logic/customer_sign_up_cubit.dart';
import '../../features/developer/data/repo/developer_courses_and_jobs_main_page_profile_repo.dart';
import '../../features/developer/data/repo/developer_recommendations_repo.dart';
import '../../features/developer/data/repo/developer_single_course_bookmark_repo.dart';
import '../../features/developer/logic/developer_courses_and_jobs_main_page_profile_logic/developer_courses_and_jobs_main_page_profile_cubit.dart';
import '../../features/developer/logic/developer_recommendations_logic/developer_recommendations_cubit.dart';
import '../../features/developer/logic/developer_single_course_bookmark_logic/developer_single_course_bookmark_cubit.dart';
import '../../features/developer/ui/courses/main_page/logic/developer_courses_main_page_roadmaps_cubit.dart';
import '../../features/developer/ui/courses/roadmaps/data/repo/developer_courses_roadmaps_repo.dart';
import '../../features/developer/ui/courses/roadmaps/logic/developer_courses_roadmaps_cubit.dart';
import '../../features/developer/ui/courses/specific_course/data/repo/specific_course_lectures_repo.dart';
import '../../features/developer/ui/courses/specific_course/data/repo/specific_course_overview_repo.dart';
import '../../features/developer/ui/courses/specific_course/logic/specific_course_lectures_logic/specific_course_lectures_cubit.dart';
import '../../features/developer/ui/courses/specific_course/logic/specific_course_overview_logic/specific_course_overview_cubit.dart';
import '../../features/developer/ui/home_main_page/logic/developer_name_home_main_page_logic/developer_name_home_main_page_cubit.dart';
import '../../features/developer/ui/home_main_page/logic/developer_tags_home_main_page_logic/developer_tags_home_main_page_cubit.dart';
import '../../features/developer/ui/jobs/apply/data/repo/developer_jobs_apply_repo.dart';
import '../../features/developer/ui/jobs/apply/logic/developer_jobs_apply_cubit.dart';
import '../../features/developer/ui/jobs/search/data/repo/developer_services_recently_posted_repo.dart';
import '../../features/developer/ui/jobs/search/logic/developer_jobs_recently_posted_logic/developer_jobs_recently_posted_cubit.dart';
import '../../features/developer/ui/jobs/search/logic/developer_services_recently_posted_logic/developer_services_recently_posted_cubit.dart';
import '../../features/developer/ui/jobs/service_details/data/repo/developer_jobs_service_details_repo.dart';
import '../../features/developer/ui/jobs/service_details/logic/developer_jobs_service_details_cubit.dart';
import '../../features/developer/ui/profile/jobs_applied/data/repo/developer_service_delete_repo.dart';
import '../../features/developer/ui/profile/jobs_applied/logic/developer_job_withdraw_logic/developer_job_withdraw_cubit.dart';
import '../../features/developer/ui/profile/jobs_applied/logic/developer_profile_applied_jobs_logic/developer_profile_applied_jobs_cubit.dart';
import '../../features/developer/ui/profile/jobs_applied/logic/developer_service_delete_logic/developer_service_delete_cubit.dart';
import '../../features/developer/ui/sign_up/data/repos/developer_sign_up_repo.dart';
import '../../features/developer/ui/sign_up/logic/developer_sign_up_cubit.dart';
import '../../features/search/data/repo/search_courses_repo.dart';
import '../../features/search/logic/search_courses_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';
import '../networking/socket_service.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & Api Service
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<Dio>(() => dio);
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Authentication
  // -> Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
  // -> Reset Password
  getIt.registerLazySingleton<ResetPasswordRepo>(
      () => ResetPasswordRepo(getIt()));
  getIt.registerLazySingleton<ResetPasswordCubit>(
      () => ResetPasswordCubit(getIt()));
  // -> Verify Code
  getIt.registerLazySingleton<VerifyCodeRepo>(() => VerifyCodeRepo(getIt()));
  getIt.registerLazySingleton<VerifyCodeCubit>(() => VerifyCodeCubit(getIt()));
  // -> Change Password
  getIt.registerLazySingleton<ChangePasswordRepo>(
      () => ChangePasswordRepo(getIt()));
  getIt.registerLazySingleton<ChangePasswordCubit>(
      () => ChangePasswordCubit(getIt()));

  // Developer -> Signup
  getIt.registerLazySingleton<DeveloperSignupRepo>(
    () => DeveloperSignupRepo(getIt<Dio>()),
  );
  getIt.registerFactory<DeveloperSignupCubit>(
    () => DeveloperSignupCubit(getIt<DeveloperSignupRepo>()),
  );
  //-> Home Main Page
  // Developer Name
  getIt.registerLazySingleton<DeveloperNameHomeMainPageRepo>(
    () => DeveloperNameHomeMainPageRepo(getIt()),
  );
  getIt.registerFactory<DeveloperNameHomeMainPageCubit>(
    () => DeveloperNameHomeMainPageCubit(getIt()),
  );
  // Tracks (Tags)
  getIt.registerLazySingleton<DeveloperTagsHomeMainPageRepo>(
    () => DeveloperTagsHomeMainPageRepo(getIt()),
  );
  getIt.registerFactory<DeveloperTagsHomeMainPageCubit>(
    () => DeveloperTagsHomeMainPageCubit(getIt()),
  );
  // Courses
  getIt.registerLazySingleton<DeveloperCoursesHomeMainPageRepo>(
    () => DeveloperCoursesHomeMainPageRepo(getIt()),
  );
  getIt.registerFactory<DeveloperCoursesHomeMainPageCubit>(
    () => DeveloperCoursesHomeMainPageCubit(getIt()),
  );
  // -> Jobs
  // Apply
  getIt.registerLazySingleton<DeveloperJobsApplyRepo>(
    () => DeveloperJobsApplyRepo(getIt<Dio>()),
  );
  getIt.registerFactory<DeveloperJobsApplyCubit>(
    () => DeveloperJobsApplyCubit(getIt<DeveloperJobsApplyRepo>()),
  );
  // Job Details
  getIt.registerLazySingleton<DeveloperJobsJobDetailsRepo>(
    () => DeveloperJobsJobDetailsRepo(getIt()),
  );
  getIt.registerFactory<DeveloperJobsJobDetailsCubit>(
    () => DeveloperJobsJobDetailsCubit(getIt()),
  );
  // Service Details
  getIt.registerLazySingleton<DeveloperJobsServiceDetailsRepo>(
    () => DeveloperJobsServiceDetailsRepo(getIt()),
  );
  getIt.registerFactory<DeveloperJobsServiceDetailsCubit>(
    () => DeveloperJobsServiceDetailsCubit(getIt()),
  );
  // Single Job Bookmark
  getIt.registerLazySingleton<DeveloperSingleJobBookmarkRepo>(
    () => DeveloperSingleJobBookmarkRepo(getIt()),
  );
  getIt.registerFactory<DeveloperSingleJobBookmarkCubit>(
    () => DeveloperSingleJobBookmarkCubit(getIt()),
  );
  // Single Course Bookmark
  getIt.registerLazySingleton<DeveloperSingleCourseBookmarkRepo>(
    () => DeveloperSingleCourseBookmarkRepo(getIt()),
  );
  getIt.registerFactory<DeveloperSingleCourseBookmarkCubit>(
    () => DeveloperSingleCourseBookmarkCubit(getIt()),
  );
  // Jobs Recently Posted
  getIt.registerLazySingleton<DeveloperJobsRecentlyPostedRepo>(
    () => DeveloperJobsRecentlyPostedRepo(getIt()),
  );
  getIt.registerFactory<DeveloperJobsRecentlyPostedCubit>(
    () => DeveloperJobsRecentlyPostedCubit(getIt()),
  );
  // Services Recently Posted
  getIt.registerLazySingleton<DeveloperServicesRecentlyPostedRepo>(
    () => DeveloperServicesRecentlyPostedRepo(getIt()),
  );
  getIt.registerFactory<DeveloperServicesRecentlyPostedCubit>(
    () => DeveloperServicesRecentlyPostedCubit(getIt()),
  );
  // Recommendations
  getIt.registerLazySingleton<DeveloperRecommendationsRepo>(
    () => DeveloperRecommendationsRepo(getIt()),
  );
  getIt.registerFactory<DeveloperRecommendationsCubit>(
    () => DeveloperRecommendationsCubit(getIt()),
  );
  // -> Courses Main Page
  // -> Profile
  getIt.registerLazySingleton<DeveloperCoursesAndJobsMainPageProfileRepo>(
    () => DeveloperCoursesAndJobsMainPageProfileRepo(getIt()),
  );
  getIt.registerFactory<DeveloperCoursesAndJobsMainPageProfileCubit>(
    () => DeveloperCoursesAndJobsMainPageProfileCubit(getIt()),
  );
  //-> Roadmaps
  getIt.registerLazySingleton<DeveloperCoursesMainPageRoadmapsRepo>(
    () => DeveloperCoursesMainPageRoadmapsRepo(getIt()),
  );
  getIt.registerFactory<DeveloperCoursesMainPageRoadmapsCubit>(
    () => DeveloperCoursesMainPageRoadmapsCubit(getIt()),
  );
  //-> Courses Roadmaps
  getIt.registerLazySingleton<DeveloperCoursesRoadmapsRepo>(
    () => DeveloperCoursesRoadmapsRepo(getIt()),
  );
  getIt.registerFactory<DeveloperCoursesRoadmapsCubit>(
    () => DeveloperCoursesRoadmapsCubit(getIt()),
  );
  //-> Specific Category
  getIt.registerLazySingleton<DeveloperCoursesSpecificCategoryRepo>(
    () => DeveloperCoursesSpecificCategoryRepo(getIt()),
  );
  getIt.registerFactory<DeveloperCoursesSpecificCategoryCubit>(
    () => DeveloperCoursesSpecificCategoryCubit(getIt()),
  );
  //-> Specific Course
  //-> Header
  getIt.registerLazySingleton<SpecificCourseHeaderRepo>(
    () => SpecificCourseHeaderRepo(getIt()),
  );
  getIt.registerFactory<SpecificCourseHeaderCubit>(
    () => SpecificCourseHeaderCubit(getIt()),
  );
  //-> Overview
  getIt.registerLazySingleton<SpecificCourseOverviewRepo>(
    () => SpecificCourseOverviewRepo(getIt()),
  );
  getIt.registerFactory<SpecificCourseOverviewCubit>(
    () => SpecificCourseOverviewCubit(getIt()),
  );
  //-> Lectures
  getIt.registerLazySingleton<SpecificCourseLecturesRepo>(
    () => SpecificCourseLecturesRepo(getIt()),
  );
  getIt.registerFactory<SpecificCourseLecturesCubit>(
    () => SpecificCourseLecturesCubit(getIt()),
  );
  // -> Profile
  // -> Jobs Applied
  getIt.registerLazySingleton<DeveloperProfileAppliedJobsRepo>(
    () => DeveloperProfileAppliedJobsRepo(getIt()),
  );
  getIt.registerFactory<DeveloperProfileAppliedJobsCubit>(
    () => DeveloperProfileAppliedJobsCubit(getIt()),
  );
  // -> Withdraw Job Application
  getIt.registerLazySingleton<DeveloperJobWithdrawRepo>(
      () => DeveloperJobWithdrawRepo(getIt()));
  getIt.registerLazySingleton<DeveloperJobWithdrawCubit>(
      () => DeveloperJobWithdrawCubit(getIt()));
  // -> Withdraw Service Application
  getIt.registerLazySingleton<DeveloperServiceDeleteRepo>(
      () => DeveloperServiceDeleteRepo(getIt()));
  getIt.registerLazySingleton<DeveloperServiceDeleteCubit>(
      () => DeveloperServiceDeleteCubit(getIt()));
  // Company
  // company -> Signup
  getIt.registerLazySingleton<CompanySignupRepo>(
    () => CompanySignupRepo(getIt<Dio>()),
  );
  getIt.registerFactory<CompanySignupCubit>(
    () => CompanySignupCubit(getIt<CompanySignupRepo>()),
  );
  //-> Home Main Page
  getIt.registerLazySingleton<CompanyHomeMainPageRepo>(
    () => CompanyHomeMainPageRepo(getIt()),
  );
  getIt.registerFactory<CompanyHomeMainPageCubit>(
    () => CompanyHomeMainPageCubit(getIt()),
  );
  //-> Home See Resume
  getIt.registerLazySingleton<CompanyHomeSeeResumeRepo>(
    () => CompanyHomeSeeResumeRepo(getIt()),
  );
  getIt.registerFactory<CompanyHomeSeeResumeCubit>(
    () => CompanyHomeSeeResumeCubit(getIt()),
  );
  //-> Home See Details
  getIt.registerLazySingleton<CompanyHomeSeeDetailsRepo>(
    () => CompanyHomeSeeDetailsRepo(getIt()),
  );
  getIt.registerFactory<CompanyHomeSeeDetailsCubit>(
    () => CompanyHomeSeeDetailsCubit(getIt()),
  );
  // -> Jobs Post
  getIt.registerLazySingleton<CompanyJobsPostRepo>(
      () => CompanyJobsPostRepo(getIt()));
  getIt.registerLazySingleton<CompanyJobsPostCubit>(
      () => CompanyJobsPostCubit(getIt()));
  // -> Update Application Status
  getIt.registerLazySingleton<CompanyUpdateApplicationStatusRepo>(
      () => CompanyUpdateApplicationStatusRepo(getIt()));
  getIt.registerLazySingleton<CompanyUpdateApplicationStatusCubit>(
      () => CompanyUpdateApplicationStatusCubit(getIt()));
  // -> Delete Job
  getIt.registerLazySingleton<CompanyJobsDeletePostRepo>(
      () => CompanyJobsDeletePostRepo(getIt()));
  getIt.registerLazySingleton<CompanyJobsDeletePostCubit>(
      () => CompanyJobsDeletePostCubit(getIt()));
  // Search
  getIt.registerLazySingleton<SearchCoursesRepo>(
    () => SearchCoursesRepo(getIt()),
  );
  getIt.registerFactory<SearchCoursesCubit>(
    () => SearchCoursesCubit(getIt()),
  );
  // Chats
  //-> All Chats
  getIt.registerLazySingleton<ChatsAllChatsRepo>(
    () => ChatsAllChatsRepo(getIt()),
  );
  getIt.registerFactory<ChatsAllChatsCubit>(
    () => ChatsAllChatsCubit(getIt()),
  );
  //-> Start Chat Room
  getIt.registerLazySingleton<StartChatRoomRepo>(
    () => StartChatRoomRepo(getIt()),
  );
  getIt.registerFactory<StartChatRoomCubit>(
    () => StartChatRoomCubit(getIt()),
  );
  //-> Get Chat Messages
  getIt.registerLazySingleton<GetChatMessagesRepo>(
    () => GetChatMessagesRepo(getIt()),
  );
  getIt.registerFactory<GetChatMessagesCubit>(
    () => GetChatMessagesCubit(getIt()),
  );
  //-> Send Message
  getIt.registerLazySingleton<SendMessagesRepo>(
      () => SendMessagesRepo(getIt<Dio>()));
  getIt.registerFactory<SendMessagesCubit>(
      () => SendMessagesCubit(getIt<SendMessagesRepo>()));
  //-> Socket
  getIt.registerLazySingleton<SocketService>(() => SocketService());

  // Customer
  // Customer -> Signup
  getIt.registerLazySingleton<CustomerSignupRepo>(
    () => CustomerSignupRepo(getIt<Dio>()),
  );
  getIt.registerFactory<CustomerSignupCubit>(
    () => CustomerSignupCubit(getIt<CustomerSignupRepo>()),
  );
}
