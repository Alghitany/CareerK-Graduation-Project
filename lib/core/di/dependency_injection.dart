import 'package:carrerk/features/chats/contact_list/all_chats/data/repo/contact_list_all_chats_repo.dart';
import 'package:carrerk/features/chats/contact_list/all_chats/logic/contact_list_all_chats_cubit.dart';
import 'package:carrerk/features/chats/person_chat/data/repo/get_chat_messages_repo.dart';
import 'package:carrerk/features/chats/person_chat/logic/get_chat_messages/get_chat_messages_cubit.dart';
import 'package:carrerk/features/company/data/repo/company_jobs_delete_post_repo.dart';
import 'package:carrerk/features/company/logic/company_jobs_delete_post_cubit.dart';

import 'package:carrerk/features/company/ui/home/ui/main_page/data/repo/company_home_main_page_repo.dart';
import 'package:carrerk/features/company/ui/home/ui/see_details/data/repo/company_home_see_details_repo.dart';
import 'package:carrerk/features/customer/data/repos/customer_jobs_post_repo.dart';
import 'package:carrerk/features/customer/logic/customer_jobs_post_cubit.dart';
import 'package:carrerk/features/customer/profile/data/repo/customer_jobs_delete_post_repo.dart';
import 'package:carrerk/features/customer/profile/data/repo/customer_profile_all_service_posts_repo.dart';
import 'package:carrerk/features/customer/profile/data/repo/customer_profile_applicants_number_repo.dart';
import 'package:carrerk/features/customer/profile/data/repo/customer_profile_edit_repo.dart';
import 'package:carrerk/features/customer/profile/data/repo/customer_profile_info_repo.dart';
import 'package:carrerk/features/customer/profile/logic/customer_jobs_delete_post_logic/customer_jobs_delete_post_cubit.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_all_job_posts_logic/customer_profile_all_job_posts_cubit.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_applicants_number_logic/customer_profile_applicants_number_cubit.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_edit_logic/customer_profile_edit_cubit.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_info_logic/customer_profile_info_cubit.dart';
import 'package:carrerk/features/customer/ui/applied/data/repo/first_screen_repo/applications_repo.dart';
import 'package:carrerk/features/customer/ui/applied/data/repo/reject_applications_repo/reject_applications_repo.dart';
import 'package:carrerk/features/customer/ui/applied/data/repo/secound_screen_repo/application_details_repo.dart';
import 'package:carrerk/features/customer/ui/applied/logic/first_screen_logic/applications_cubit.dart';
import 'package:carrerk/features/customer/ui/applied/logic/reject_applications_logic/reject_applications_cubit.dart';
import 'package:carrerk/features/customer/ui/applied/logic/secound_screen_logic/application_details_cubit.dart';
import 'package:carrerk/features/customer/ui/home/logic/customer_home_cubit.dart';

import 'package:carrerk/features/customer/ui/sign_up/data/repo/customer_sign_up_repo.dart';
import 'package:carrerk/features/customer/ui/sign_up/logic/customer_sign_up_cubit.dart';
import 'package:carrerk/features/developer/data/repo/developer_single_job_bookmark_repo.dart';
import 'package:carrerk/features/developer/logic/developer_single_job_bookmark_logic/developer_single_job_bookmark_cubit.dart';
import 'package:carrerk/features/developer/ui/home_main_page/data/repos/developer_courses_home_main_page_repo.dart';
import 'package:carrerk/features/developer/ui/home_main_page/data/repos/developer_name_home_main_page_repo.dart';
import 'package:carrerk/features/developer/ui/home_main_page/data/repos/developer_tags_home_main_page_repo.dart';
import 'package:carrerk/features/developer/ui/home_main_page/logic/developer_courses_home_main_page_logic/developer_courses_home_main_page_cubit.dart';
import 'package:carrerk/features/developer/ui/jobs/search/data/repo/developer_jobs_recently_posted_repo.dart';
import 'package:carrerk/features/developer/ui/profile/ui/bookmarks/data/repos/developer_profile_services_bookmarked_repo.dart';
import 'package:carrerk/features/developer/ui/profile/ui/main_page/data/repos/developer_profile_main_page_skills_repo.dart';
import 'package:carrerk/features/notifications/data/repo/get_all/all_notifications_repo.dart';
import 'package:carrerk/features/notifications/data/repo/mark_one/mark_notification_read_repo.dart';
import 'package:carrerk/features/notifications/logic/get_all/all_notification_cubit.dart';
import 'package:carrerk/features/notifications/logic/mark_one/mark_notification_read_cubit.dart';
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
import '../../features/chat_bot/data/repo/chat_bot_repo.dart';
import '../../features/chat_bot/logic/chat_bot_cubit.dart';

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
import '../../features/company/ui/profile/data/repos/company_profile_all_job_posts_repo.dart';
import '../../features/company/ui/profile/data/repos/company_profile_applicants_number_repo.dart';
import '../../features/company/ui/profile/data/repos/company_profile_edit_repo.dart';
import '../../features/company/ui/profile/data/repos/company_profile_info_repo.dart';
import '../../features/company/ui/profile/logic/company_profile_all_job_posts_logic/company_profile_all_job_posts_cubit.dart';
import '../../features/company/ui/profile/logic/company_profile_applicants_number_logic/company_profile_applicants_number_cubit.dart';
import '../../features/company/ui/profile/logic/company_profile_edit_logic/company_profile_edit_cubit.dart';
import '../../features/company/ui/profile/logic/company_profile_info_logic/company_profile_info_cubit.dart';
import '../../features/company/ui/sign_up/data/repo/company_sign_up_repo.dart';
import '../../features/company/ui/sign_up/logic/company_sign_up_cubit.dart';
import '../../features/customer/ui/home/model/repo/customer_home_repo.dart';
import '../../features/developer/data/repo/developer_add_course_bookmark_repo.dart';
import '../../features/developer/data/repo/developer_add_job_bookmark_repo.dart';

import '../../features/developer/data/repo/developer_courses_and_jobs_main_page_profile_repo.dart';
import '../../features/developer/data/repo/developer_recommendations_repo.dart';
import '../../features/developer/data/repo/developer_single_course_bookmark_repo.dart';
import '../../features/developer/logic/developer_add_course_bookmark_logic/developer_add_course_bookmark_cubit.dart';
import '../../features/developer/logic/developer_add_job_bookmark_logic/developer_add_job_bookmark_cubit.dart';
import '../../features/developer/logic/developer_courses_and_jobs_main_page_profile_logic/developer_courses_and_jobs_main_page_profile_cubit.dart';
import '../../features/developer/logic/developer_recommendations_logic/developer_recommendations_cubit.dart';
import '../../features/developer/logic/developer_single_course_bookmark_logic/developer_single_course_bookmark_cubit.dart';
import '../../features/developer/ui/community/all_communities/data/repos/developer_community_by_interest_repo.dart';
import '../../features/developer/ui/community/all_communities/data/repos/developer_community_for_you_repo.dart';
import '../../features/developer/ui/community/all_communities/data/repos/developer_community_tags_repo.dart';
import '../../features/developer/ui/community/all_communities/logic/by_interest_logic/developer_community_by_interest_cubit.dart';
import '../../features/developer/ui/community/all_communities/logic/community_tags_logic/developer_community_tags_cubit.dart';
import '../../features/developer/ui/community/all_communities/logic/for_you_logic/developer_community_for_you_cubit.dart';
import '../../features/developer/ui/community/chat/apis/community_socket_service.dart';
import '../../features/developer/ui/community/chat/data/repos/specific_community_repo.dart';
import '../../features/developer/ui/community/chat/logic/specific_community_logic/specific_community_cubit.dart';
import '../../features/developer/ui/courses/data/repos/developer_courses_ongoing_repo.dart';
import '../../features/developer/ui/courses/data/repos/developer_courses_related_courses_repo.dart';
import '../../features/developer/ui/courses/logic/ongoing_courses_logic/developer_courses_ongoing_cubit.dart';
import '../../features/developer/ui/courses/logic/related_courses_logic/developer_courses_related_courses_cubit.dart';
import '../../features/developer/ui/courses/ui/main_page/data/repo/developer_courses_main_page_roadmaps_repo.dart';
import '../../features/developer/ui/courses/ui/main_page/logic/main_page_roadmaps_logic/developer_courses_main_page_roadmaps_cubit.dart';
import '../../features/developer/ui/courses/ui/my_courses/data/repos/developer_courses_completed_repo.dart';
import '../../features/developer/ui/courses/ui/my_courses/logic/developer_courses_completed_logic/developer_courses_completed_cubit.dart';
import '../../features/developer/ui/courses/ui/roadmaps/data/repo/developer_courses_roadmaps_repo.dart';
import '../../features/developer/ui/courses/ui/roadmaps/logic/developer_courses_roadmaps_cubit.dart';
import '../../features/developer/ui/courses/ui/specific_category/data/repo/developer_courses_specific_category_repo.dart';
import '../../features/developer/ui/courses/ui/specific_category/logic/developer_courses_specific_category_cubit.dart';
import '../../features/developer/ui/courses/ui/specific_course/data/repo/specific_course_enroll_repo.dart';
import '../../features/developer/ui/courses/ui/specific_course/data/repo/specific_course_header_repo.dart';
import '../../features/developer/ui/courses/ui/specific_course/data/repo/specific_course_lectures_repo.dart';
import '../../features/developer/ui/courses/ui/specific_course/data/repo/specific_course_lesson_complete_repo.dart';
import '../../features/developer/ui/courses/ui/specific_course/data/repo/specific_course_overview_repo.dart';
import '../../features/developer/ui/courses/ui/specific_course/data/repo/specific_course_reviews_repo.dart';
import '../../features/developer/ui/courses/ui/specific_course/logic/specific_course_enroll_logic/specific_course_enroll_cubit.dart';
import '../../features/developer/ui/courses/ui/specific_course/logic/specific_course_header_logic/specific_course_header_cubit.dart';
import '../../features/developer/ui/courses/ui/specific_course/logic/specific_course_lectures_logic/specific_course_lectures_cubit.dart';
import '../../features/developer/ui/courses/ui/specific_course/logic/specific_course_lesson_complete_logic/specific_course_lesson_complete_cubit.dart';
import '../../features/developer/ui/courses/ui/specific_course/logic/specific_course_overview_logic/specific_course_overview_cubit.dart';
import '../../features/developer/ui/courses/ui/specific_course/logic/specific_course_reviews_logic/specific_course_reviews_cubit.dart';
import '../../features/developer/ui/home_main_page/logic/developer_name_home_main_page_logic/developer_name_home_main_page_cubit.dart';
import '../../features/developer/ui/home_main_page/logic/developer_tags_home_main_page_logic/developer_tags_home_main_page_cubit.dart';
import '../../features/developer/ui/jobs/apply/data/repo/developer_jobs_apply_repo.dart';
import '../../features/developer/ui/jobs/apply/logic/developer_jobs_apply_cubit.dart';
import '../../features/developer/ui/jobs/search/data/repo/developer_services_recently_posted_repo.dart';
import '../../features/developer/ui/jobs/search/logic/developer_jobs_recently_posted_logic/developer_jobs_recently_posted_cubit.dart';
import '../../features/developer/ui/jobs/search/logic/developer_services_recently_posted_logic/developer_services_recently_posted_cubit.dart';
import '../../features/developer/ui/jobs/service_details/data/repo/developer_jobs_service_details_repo.dart';
import '../../features/developer/ui/jobs/service_details/logic/developer_jobs_service_details_cubit.dart';
import '../../features/developer/ui/profile/data/repos/developer_profile_edit_repo.dart';
import '../../features/developer/ui/profile/logic/developer_profile_edit_cubit.dart';
import '../../features/developer/ui/profile/ui/bookmarks/data/repos/developer_profile_courses_bookmarked_repo.dart';
import '../../features/developer/ui/profile/ui/bookmarks/data/repos/developer_profile_jobs_bookmarked_repo.dart';
import '../../features/developer/ui/profile/ui/bookmarks/logic/developer_profile_courses_bookmarked_logic/developer_profile_courses_bookmarked_cubit.dart';
import '../../features/developer/ui/profile/ui/bookmarks/logic/developer_profile_jobs_logic/developer_profile_jobs_bookmarked_cubit.dart';
import '../../features/developer/ui/profile/ui/bookmarks/logic/developer_profile_services_bookmarked_logic/developer_profile_services_bookmarked_cubit.dart';
import '../../features/developer/ui/profile/ui/cv_generate/data/repos/developer_profile_cv_generate_generated_repo.dart';
import '../../features/developer/ui/profile/ui/cv_generate/data/repos/developer_profile_cv_generate_send_data_repo.dart';
import '../../features/developer/ui/profile/ui/cv_generate/logic/generate_logic/developer_profile_cv_generate_generated_cubit.dart';
import '../../features/developer/ui/profile/ui/cv_generate/logic/send_data_logic/developer_profile_cv_generate_send_data_cubit.dart';
import '../../features/developer/ui/profile/ui/jobs_applied/data/repo/developer_job_withdraw_repo.dart';
import '../../features/developer/ui/profile/ui/jobs_applied/data/repo/developer_profile_applied_jobs_repo.dart';
import '../../features/developer/ui/profile/ui/jobs_applied/data/repo/developer_service_delete_repo.dart';
import '../../features/developer/ui/profile/ui/jobs_applied/logic/developer_job_withdraw_logic/developer_job_withdraw_cubit.dart';
import '../../features/developer/ui/profile/ui/jobs_applied/logic/developer_profile_applied_jobs_logic/developer_profile_applied_jobs_cubit.dart';
import '../../features/developer/ui/profile/ui/jobs_applied/logic/developer_service_delete_logic/developer_service_delete_cubit.dart';
import '../../features/developer/ui/profile/ui/main_page/data/repos/developer_profile_main_page_info_repo.dart';
import '../../features/developer/ui/profile/ui/main_page/logic/profile_info_logic/developer_profile_main_page_info_cubit.dart';
import '../../features/developer/ui/profile/ui/main_page/logic/profile_skills_logic/developer_profile_main_page_skills_cubit.dart';
import '../../features/developer/ui/profile/ui/my_cv/data/repos/developer_profile_settings_delete_cv_repo.dart';
import '../../features/developer/ui/profile/ui/my_cv/data/repos/developer_profile_settings_update_uploaded_my_cv_repo.dart';
import '../../features/developer/ui/profile/ui/my_cv/data/repos/developer_profile_sittings_get_my_cv_repo.dart';
import '../../features/developer/ui/profile/ui/my_cv/logic/developer_profile_settings_delete_cv_logic/developer_profile_settings_delete_cv_cubit.dart';
import '../../features/developer/ui/profile/ui/my_cv/logic/developer_profile_settings_get_my_cv_logic/developer_profile_sittings_get_my_cv_cubit.dart';
import '../../features/developer/ui/profile/ui/my_cv/logic/developer_profile_settings_update_uploaded_cv_logic/developer_profile_settings_update_uploaded_cv_cubit.dart';
import '../../features/developer/ui/profile/ui/settings/data/repos/developer_generate_cv_start_session_repo.dart';
import '../../features/developer/ui/profile/ui/settings/logic/developer_generate_cv_start_session_logic/developer_generate_cv_start_session_cubit.dart';
import '../../features/developer/ui/sign_up/data/repos/developer_sign_up_repo.dart';
import '../../features/developer/ui/sign_up/logic/developer_sign_up_cubit.dart';
import '../../features/post_details/data/repo/job_details_repo.dart';
import '../../features/post_details/logic/post_details_logic/job_details_cubit.dart';
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

  //--------------> Job Details
  getIt.registerLazySingleton<JobDetailsRepo>(
    () => JobDetailsRepo(getIt()),
  );
  getIt.registerFactory<JobDetailsCubit>(
    () => JobDetailsCubit(getIt()),
  );

  // Developer -> Signup
  getIt.registerLazySingleton<DeveloperSignupRepo>(
    () => DeveloperSignupRepo(getIt<Dio>()),
  );
  getIt.registerFactory<DeveloperSignupCubit>(
    () => DeveloperSignupCubit(getIt<DeveloperSignupRepo>()),
  );
  //-> Community
  // All Communities
  getIt.registerLazySingleton<DeveloperCommunityForYouRepo>(
    () => DeveloperCommunityForYouRepo(getIt()),
  );

  getIt.registerFactory<DeveloperCommunityForYouCubit>(
    () => DeveloperCommunityForYouCubit(getIt()),
  );
  // Specific Community
  getIt.registerLazySingleton<SpecificCommunityRepo>(
    () => SpecificCommunityRepo(getIt()),
  );

  getIt.registerFactory<SpecificCommunityCubit>(
    () => SpecificCommunityCubit(getIt()),
  );
  // Community By Interest
  getIt.registerLazySingleton<DeveloperCommunityByInterestRepo>(
    () => DeveloperCommunityByInterestRepo(getIt()),
  );
  getIt.registerFactory<DeveloperCommunityByInterestCubit>(
    () => DeveloperCommunityByInterestCubit(getIt()),
  );
  // Community Tags
  getIt.registerLazySingleton<DeveloperCommunityTagsRepo>(
    () => DeveloperCommunityTagsRepo(getIt()),
  );
  getIt.registerFactory<DeveloperCommunityTagsCubit>(
    () => DeveloperCommunityTagsCubit(getIt()),
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
  // Service Details
  getIt.registerLazySingleton<DeveloperJobsServiceDetailsRepo>(
    () => DeveloperJobsServiceDetailsRepo(getIt()),
  );
  getIt.registerFactory<DeveloperJobsServiceDetailsCubit>(
    () => DeveloperJobsServiceDetailsCubit(getIt()),
  );
  // Add Job Bookmark
  getIt.registerLazySingleton<DeveloperAddJobBookmarkRepo>(
    () => DeveloperAddJobBookmarkRepo(getIt()),
  );

  getIt.registerFactory<DeveloperAddJobBookmarkCubit>(
    () => DeveloperAddJobBookmarkCubit(getIt()),
  );
  // Single Job Bookmark
  getIt.registerLazySingleton<DeveloperSingleJobBookmarkRepo>(
    () => DeveloperSingleJobBookmarkRepo(getIt()),
  );
  getIt.registerFactory<DeveloperSingleJobBookmarkCubit>(
    () => DeveloperSingleJobBookmarkCubit(getIt()),
  );
  // Add Course Bookmark
  getIt.registerLazySingleton<DeveloperAddCourseBookmarkRepo>(
    () => DeveloperAddCourseBookmarkRepo(getIt()),
  );
  getIt.registerFactory<DeveloperAddCourseBookmarkCubit>(
    () => DeveloperAddCourseBookmarkCubit(getIt()),
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
  //->Ongoing Courses
  getIt.registerLazySingleton<DeveloperCoursesOngoingRepo>(
    () => DeveloperCoursesOngoingRepo(getIt()),
  );
  getIt.registerFactory<DeveloperCoursesOngoingCubit>(
    () => DeveloperCoursesOngoingCubit(getIt()),
  );
  //->Completed Courses
  getIt.registerLazySingleton<DeveloperCoursesCompletedRepo>(
    () => DeveloperCoursesCompletedRepo(getIt()),
  );
  getIt.registerFactory<DeveloperCoursesCompletedCubit>(
    () => DeveloperCoursesCompletedCubit(getIt()),
  );
  //->Related Courses
  getIt.registerLazySingleton<DeveloperCoursesRelatedCoursesRepo>(
    () => DeveloperCoursesRelatedCoursesRepo(getIt()),
  );

  getIt.registerFactory<DeveloperCoursesRelatedCoursesCubit>(
    () => DeveloperCoursesRelatedCoursesCubit(getIt()),
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
  // -> Enroll
  getIt.registerLazySingleton<SpecificCourseEnrollRepo>(
    () => SpecificCourseEnrollRepo(getIt()),
  );
  getIt.registerFactory<SpecificCourseEnrollCubit>(
    () => SpecificCourseEnrollCubit(getIt()),
  );
  // -> Lesson Complete
  getIt.registerLazySingleton<SpecificCourseLessonCompleteRepo>(
    () => SpecificCourseLessonCompleteRepo(getIt()),
  );
  getIt.registerFactory<SpecificCourseLessonCompleteCubit>(
    () => SpecificCourseLessonCompleteCubit(getIt()),
  );
  //-> Lectures
  getIt.registerLazySingleton<SpecificCourseLecturesRepo>(
    () => SpecificCourseLecturesRepo(getIt()),
  );
  getIt.registerFactory<SpecificCourseLecturesCubit>(
    () => SpecificCourseLecturesCubit(getIt()),
  );
  //-> Reviews
  getIt.registerLazySingleton<SpecificCourseReviewsRepo>(
    () => SpecificCourseReviewsRepo(getIt()),
  );
  getIt.registerFactory<SpecificCourseReviewsCubit>(
    () => SpecificCourseReviewsCubit(getIt()),
  );
  //-> Profile
  //-> Info
  getIt.registerLazySingleton<DeveloperProfileMainPageInfoRepo>(
    () => DeveloperProfileMainPageInfoRepo(getIt()),
  );
  getIt.registerFactory<DeveloperProfileMainPageInfoCubit>(
    () => DeveloperProfileMainPageInfoCubit(getIt()),
  );
  //-> Skills
  getIt.registerLazySingleton<DeveloperProfileMainPageSkillsRepo>(
    () => DeveloperProfileMainPageSkillsRepo(getIt()),
  );
  getIt.registerFactory<DeveloperProfileMainPageSkillsCubit>(
    () => DeveloperProfileMainPageSkillsCubit(getIt()),
  );
  //-> Edit
  getIt.registerLazySingleton<DeveloperProfileEditRepo>(
    () => DeveloperProfileEditRepo(getIt()),
  );
  getIt.registerFactory<DeveloperProfileEditCubit>(
    () => DeveloperProfileEditCubit(getIt()),
  );
  //-> Get My CV
  getIt.registerLazySingleton<DeveloperProfileSettingsGetMyCVRepo>(
    () => DeveloperProfileSettingsGetMyCVRepo(getIt()),
  );
  getIt.registerFactory<DeveloperProfileSettingsGetMyCVCubit>(
    () => DeveloperProfileSettingsGetMyCVCubit(getIt()),
  );
  //-> Update Uploaded CV
  getIt.registerLazySingleton<DeveloperProfileSettingsUpdateUploadedCVRepo>(
    () => DeveloperProfileSettingsUpdateUploadedCVRepo(getIt()),
  );
  getIt.registerFactory<DeveloperProfileSettingsUpdateUploadedCVCubit>(
    () => DeveloperProfileSettingsUpdateUploadedCVCubit(getIt()),
  );
  //-> Delete My CV
  getIt.registerLazySingleton<DeveloperProfileSettingsDeleteCVRepo>(
    () => DeveloperProfileSettingsDeleteCVRepo(getIt()),
  );

  getIt.registerFactory<DeveloperProfileSettingsDeleteCVCubit>(
    () => DeveloperProfileSettingsDeleteCVCubit(getIt()),
  );
  // All Job Posts
  getIt.registerLazySingleton<CompanyProfileAllJobPostsRepo>(
    () => CompanyProfileAllJobPostsRepo(getIt()),
  );

  getIt.registerFactory<CompanyProfileAllJobPostsCubit>(
    () => CompanyProfileAllJobPostsCubit(getIt()),
  );

  // -> Jobs Applied
  getIt.registerLazySingleton<DeveloperProfileAppliedJobsRepo>(
    () => DeveloperProfileAppliedJobsRepo(getIt()),
  );
  getIt.registerFactory<DeveloperProfileAppliedJobsCubit>(
    () => DeveloperProfileAppliedJobsCubit(getIt()),
  );
  // -> Bookmarked Jobs
  getIt.registerLazySingleton<DeveloperProfileJobsBookmarkedRepo>(
    () => DeveloperProfileJobsBookmarkedRepo(getIt()),
  );
  getIt.registerFactory<DeveloperProfileJobsBookmarkedCubit>(
    () => DeveloperProfileJobsBookmarkedCubit(getIt()),
  );
  // -> Bookmarked Services
  getIt.registerLazySingleton<DeveloperProfileServicesBookmarkedRepo>(
    () => DeveloperProfileServicesBookmarkedRepo(getIt()),
  );
  getIt.registerFactory<DeveloperProfileServicesBookmarkedCubit>(
    () => DeveloperProfileServicesBookmarkedCubit(getIt()),
  );
  // -> Bookmarked Courses
  getIt.registerLazySingleton<DeveloperProfileCoursesBookmarkedRepo>(
    () => DeveloperProfileCoursesBookmarkedRepo(getIt()),
  );
  getIt.registerFactory<DeveloperProfileCoursesBookmarkedCubit>(
    () => DeveloperProfileCoursesBookmarkedCubit(getIt()),
  );
  // -> Generate CV
  // Start Session
  getIt.registerLazySingleton<DeveloperGenerateCVStartSessionRepo>(
      () => DeveloperGenerateCVStartSessionRepo(getIt()));
  getIt.registerLazySingleton<DeveloperGenerateCVStartSessionCubit>(
      () => DeveloperGenerateCVStartSessionCubit(getIt()));
  // Send Data
  getIt.registerLazySingleton<DeveloperProfileCVGenerateSendDataRepo>(
      () => DeveloperProfileCVGenerateSendDataRepo(getIt()));
  getIt.registerLazySingleton<DeveloperProfileCVGenerateSendDataCubit>(
      () => DeveloperProfileCVGenerateSendDataCubit(getIt()));
  // Generated
  getIt.registerLazySingleton<DeveloperProfileCVGenerateGeneratedRepo>(
      () => DeveloperProfileCVGenerateGeneratedRepo(getIt()));
  getIt.registerLazySingleton<DeveloperProfileCVGenerateGeneratedCubit>(
      () => DeveloperProfileCVGenerateGeneratedCubit(getIt()));
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
  //-> Profile
  // Profile Info
  getIt.registerLazySingleton<CompanyProfileInfoRepo>(
    () => CompanyProfileInfoRepo(getIt()),
  );
  getIt.registerFactory<CompanyProfileInfoCubit>(
    () => CompanyProfileInfoCubit(getIt()),
  );

  // Company Applicants Number
  getIt.registerLazySingleton<CompanyProfileApplicantsNumberRepo>(
    () => CompanyProfileApplicantsNumberRepo(getIt()),
  );

  getIt.registerFactory<CompanyProfileApplicantsNumberCubit>(
    () => CompanyProfileApplicantsNumberCubit(getIt()),
  );

  // Company Profile Edit
  getIt.registerLazySingleton<CompanyProfileEditRepo>(
    () => CompanyProfileEditRepo(getIt()),
  );

  getIt.registerFactory<CompanyProfileEditCubit>(
    () => CompanyProfileEditCubit(getIt()),
  );
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
  // customer
  //jobs post

  getIt.registerLazySingleton<CustomerJobsPostRepo>(
      () => CustomerJobsPostRepo(getIt()));
  getIt.registerLazySingleton<CustomerJobsPostCubit>(
      () => CustomerJobsPostCubit(getIt()));
  // Contact List
  //-> All Chats
  getIt.registerLazySingleton<ContactListAllChatsRepo>(
    () => ContactListAllChatsRepo(getIt()),
  );

  getIt.registerFactory<ContactListAllChatsCubit>(
      () => ContactListAllChatsCubit(getIt()));
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
  getIt.registerLazySingleton<CommunitySocketService>(() => CommunitySocketService());

  // Customer home
  getIt.registerLazySingleton<CustomerHomeRepo>(
    () => CustomerHomeRepo(getIt()),
  );

  getIt.registerFactory<CustomerHomeCubit>(() => CustomerHomeCubit(getIt()));
  //  customer -- applied
  getIt.registerLazySingleton<ApplicationsRepo>(
    () => ApplicationsRepo(getIt()),
  );
  getIt.registerFactory<ApplicationsCubit>(() => ApplicationsCubit(getIt()));
  //  customer -- applied details
  getIt.registerLazySingleton<ApplicationDetailsRepo>(
    () => ApplicationDetailsRepo(getIt()),
  );

  getIt.registerFactory<ApplicationDetailsCubit>(
      () => ApplicationDetailsCubit(getIt()));

//  customer -- reject
  getIt.registerLazySingleton<RejectApplicationRepo>(
    () => RejectApplicationRepo(getIt()),
  );

  getIt.registerFactory<RejectApplicationCubit>(
    () => RejectApplicationCubit(getIt()),
  );
// notification
  getIt.registerLazySingleton<AllNotificationsRepo>(
    () => AllNotificationsRepo(getIt<ApiService>()),
  );

  getIt.registerFactory<AllNotificationCubit>(
    () => AllNotificationCubit(getIt<AllNotificationsRepo>()),
  );

  getIt.registerLazySingleton<MarkNotificationReadRepo>(
    () => MarkNotificationReadRepo(getIt<ApiService>()),
  );

  getIt.registerFactory<MarkNotificationReadCubit>(
    () => MarkNotificationReadCubit(getIt<MarkNotificationReadRepo>()),
  );

  // Customer -> Signup
  getIt.registerLazySingleton<CustomerSignupRepo>(
    () => CustomerSignupRepo(getIt<Dio>()),
  );
  getIt.registerFactory<CustomerSignupCubit>(
    () => CustomerSignupCubit(getIt<CustomerSignupRepo>()),
  );

  // ChatBot -> Send Message
  getIt.registerLazySingleton<ChatBotRepo>(
    () => ChatBotRepo(getIt<ApiService>()),
  );
  getIt.registerFactory<ChatBotCubit>(
    () => ChatBotCubit(getIt()),
  );
  // profile
  // Profile Info
  getIt.registerLazySingleton<CustomerProfileInfoRepo>(
    () => CustomerProfileInfoRepo(getIt()),
  );
  getIt.registerFactory<CustomerProfileInfoCubit>(
    () => CustomerProfileInfoCubit(getIt()),
  );
  // Company Applicants Number
  getIt.registerLazySingleton<CustomerProfileApplicantsNumberRepo>(
    () => CustomerProfileApplicantsNumberRepo(getIt()),
  );

  getIt.registerFactory<CustomerProfileApplicantsNumberCubit>(
    () => CustomerProfileApplicantsNumberCubit(getIt()),
  );
  // All Job Posts
  getIt.registerLazySingleton<CustomerProfileAllServicePostsRepo>(
    () => CustomerProfileAllServicePostsRepo(getIt()),
  );

  getIt.registerFactory<CustomerProfileAllServicePostsCubit>(
    () => CustomerProfileAllServicePostsCubit(getIt()),
  );

  // customer Profile Edit
  getIt.registerLazySingleton<CustomerProfileEditRepo>(
    () => CustomerProfileEditRepo(getIt()),
  );

  getIt.registerFactory<CustomerProfileEditCubit>(
    () => CustomerProfileEditCubit(getIt()),
  );

  getIt.registerLazySingleton<CustomerJobsDeletePostRepo>(
      () => CustomerJobsDeletePostRepo(getIt()));
  getIt.registerLazySingleton<CustomerJobsDeletePostCubit>(
      () => CustomerJobsDeletePostCubit(getIt()));
}
