import 'package:carrerk/core/helpers/enums.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/routing/company_router/jobs_post_router.dart';
import 'package:carrerk/core/widgets/pdf_viewer_screen.dart';
import 'package:carrerk/features/authentication/reset_password/logic/reset_password_cubit.dart';
import 'package:carrerk/features/authentication/verify_code/logic/verify_code_cubit.dart';
import 'package:carrerk/features/authentication/verify_code/ui/verify_code_screen.dart';
import 'package:carrerk/features/customer/logic/customer_jobs_post_cubit.dart';
import 'package:carrerk/features/customer/ui/applied/logic/first_screen_logic/applications_cubit.dart';
import 'package:carrerk/features/customer/ui/applied/logic/secound_screen_logic/application_details_cubit.dart';
import 'package:carrerk/features/customer/ui/applied/ui/first/customer_applied_first_screen.dart';
import 'package:carrerk/features/customer/ui/applied/ui/secound/customer_applied_secound_screen.dart';
import 'package:carrerk/features/customer/ui/home/logic/customer_home_cubit.dart';
import 'package:carrerk/features/customer/ui/home/ui/customer_home_main_page.dart';
import 'package:carrerk/features/customer/ui/jobs_post/customer_jobs_post.dart';
import 'package:carrerk/features/customer/ui/profile/customer_profile_screen.dart';
import 'package:carrerk/features/customer/ui/sign_up/compulsory_data/customer_sign_up_compulsory_data_screen.dart';
import 'package:carrerk/features/developer/ui/community/chat/ui/developer_community_chat_screen.dart';
import 'package:carrerk/features/developer/ui/jobs/all_categories/developer_jobs_all_categories_screen.dart';
import 'package:carrerk/features/developer/ui/jobs/application_submitted/developer_jobs_application_submitted_screen.dart';
import 'package:carrerk/features/developer/ui/jobs/apply/logic/developer_jobs_apply_cubit.dart';
import 'package:carrerk/features/developer/ui/jobs/apply/ui/developer_jobs_apply_screen.dart';
import 'package:carrerk/features/developer/ui/jobs/main_page/developer_jobs_main_page_screen.dart';
import 'package:carrerk/features/developer/ui/profile/ui/bookmarks/data/repos/developer_profile_services_bookmarked_repo.dart';
import 'package:carrerk/features/developer/ui/profile/ui/bookmarks/logic/developer_profile_services_bookmarked_logic/developer_profile_services_bookmarked_cubit.dart';
import 'package:carrerk/features/developer/ui/profile/ui/main_page/logic/profile_skills_logic/developer_profile_main_page_skills_cubit.dart';
import 'package:carrerk/features/developer/ui/profile/ui/my_cv/logic/developer_profile_settings_delete_cv_logic/developer_profile_settings_delete_cv_cubit.dart';
import 'package:carrerk/features/developer/ui/profile/ui/my_cv/logic/developer_profile_settings_get_my_cv_logic/developer_profile_sittings_get_my_cv_cubit.dart';
import 'package:carrerk/features/developer/ui/profile/ui/my_cv/ui/developer_profile_my_cv_screen.dart';
import 'package:carrerk/features/developer/ui/sign_up/logic/developer_sign_up_cubit.dart';
import 'package:carrerk/features/developer/ui/sign_up_completed/cv_downloaded/developer_sign_up_completed_cv_downloaded.dart';
import 'package:carrerk/features/developer/ui/sign_up_completed/cv_is_done/developer_sign_up_completed_cv_is_done.dart';
import 'package:carrerk/features/developer/ui/sign_up_completed/ready_to_go/developer_sign_up_completed_ready_to_go.dart';
import 'package:carrerk/features/search/logic/search_courses_cubit.dart';
import 'package:carrerk/features/search/ui/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/authentication/change_password/logic/change_password_cubit.dart';
import '../../features/authentication/change_password/ui/change_password_screen.dart';
import '../../features/authentication/login/logic/login_cubit.dart';
import '../../features/authentication/login/ui/login_screen.dart';
import '../../features/authentication/onboarding/on_boarding_screen.dart';
import '../../features/authentication/reset_password/ui/reset_password_screen.dart';
import '../../features/authentication/successful_change_password/successful_change_password.dart';
import '../../features/chat_bot/logic/chat_bot_cubit.dart';
import '../../features/chat_bot/ui/chat_bot_screen.dart';
import '../../features/chats/all_chats/logic/chats_all_chats_cubit.dart';
import '../../features/chats/all_chats/ui/chats_all_chats.dart';
import '../../features/chats/contact_list/all_chats/logic/contact_list_all_chats_cubit.dart';
import '../../features/chats/contact_list/all_chats/ui/customer_chats_screen.dart';
import '../../features/chats/person_chat/data/repo/start_chat_room_repo.dart';
import '../../features/chats/person_chat/logic/get_chat_messages/get_chat_messages_cubit.dart';
import '../../features/chats/person_chat/logic/send_messages/send_messages_cubit.dart';
import '../../features/chats/person_chat/logic/start_chat/start_chat_room_cubit.dart';
import '../../features/chats/person_chat/ui/chats_person_chat_screen.dart';
import '../../features/company/logic/company_jobs_delete_post_cubit.dart';
import '../../features/company/ui/home/logic/update_application_status_logic/company_update_application_status_cubit.dart';
import '../../features/company/ui/home/ui/main_page/data/repo/company_home_main_page_repo.dart';
import '../../features/company/ui/home/ui/main_page/logic/company_home_main_page_cubit.dart';
import '../../features/company/ui/home/ui/main_page/ui/company_home_main_page_screen.dart';
import '../../features/company/ui/home/ui/see_details/logic/company_home_see_details_cubit.dart';
import '../../features/company/ui/home/ui/see_details/ui/company_home_see_details_screen.dart';
import '../../features/company/ui/home/ui/see_resume/data/repo/company_home_see_resume_repo.dart';
import '../../features/company/ui/home/ui/see_resume/logic/company_home_see_resume_cubit.dart';
import '../../features/company/ui/home/ui/see_resume/ui/company_home_see_resume_screen.dart';
import '../../features/company/ui/home/ui/send_offer/company_home_send_offer_screen.dart';
import '../../features/company/ui/jobs/company_jobs_screen.dart';
import '../../features/company/ui/jobs_post/logic/company_jobs_post_cubit.dart';
import '../../features/company/ui/jobs_post/ui/success/company_job_post_success_screen.dart';
import '../../features/company/ui/profile/logic/company_profile_all_job_posts_logic/company_profile_all_job_posts_cubit.dart';
import '../../features/company/ui/profile/logic/company_profile_applicants_number_logic/company_profile_applicants_number_cubit.dart';
import '../../features/company/ui/profile/logic/company_profile_edit_logic/company_profile_edit_cubit.dart';
import '../../features/company/ui/profile/logic/company_profile_info_logic/company_profile_info_cubit.dart';
import '../../features/company/ui/profile/ui/company_profile_screen.dart';
import '../../features/company/ui/sign_up/logic/company_sign_up_cubit.dart';
import '../../features/customer/ui/sign_up/logic/customer_sign_up_cubit.dart';
import '../../features/developer/logic/developer_courses_and_jobs_main_page_profile_logic/developer_courses_and_jobs_main_page_profile_cubit.dart';
import '../../features/developer/logic/developer_recommendations_logic/developer_recommendations_cubit.dart';
import '../../features/developer/logic/developer_single_job_bookmark_logic/developer_single_job_bookmark_cubit.dart';
import '../../features/developer/ui/community/all_communities/logic/by_interest_logic/developer_community_by_interest_cubit.dart';
import '../../features/developer/ui/community/all_communities/logic/community_tags_logic/developer_community_tags_cubit.dart';
import '../../features/developer/ui/community/all_communities/logic/for_you_logic/developer_community_for_you_cubit.dart';
import '../../features/developer/ui/community/all_communities/ui/developer_community_all_communities_screen.dart';
import '../../features/developer/ui/community/chat/logic/specific_community_logic/specific_community_cubit.dart';
import '../../features/developer/ui/courses/logic/ongoing_courses_logic/developer_courses_ongoing_cubit.dart';
import '../../features/developer/ui/courses/logic/related_courses_logic/developer_courses_related_courses_cubit.dart';
import '../../features/developer/ui/courses/ui/cv_updated/download_cv/developer_courses_cv_updated_download_cv_screen.dart';
import '../../features/developer/ui/courses/ui/cv_updated/successful_update/developer_courses_cv_updated_successful_update_screen.dart';
import '../../features/developer/ui/courses/ui/main_page/logic/main_page_roadmaps_logic/developer_courses_main_page_roadmaps_cubit.dart';
import '../../features/developer/ui/courses/ui/main_page/ui/developer_courses_main_page_screen.dart';
import '../../features/developer/ui/courses/ui/my_courses/logic/developer_courses_completed_logic/developer_courses_completed_cubit.dart';
import '../../features/developer/ui/courses/ui/my_courses/ui/developer_courses_my_courses_screen.dart';
import '../../features/developer/ui/courses/ui/related_courses/developer_courses_related_courses_screen.dart';
import '../../features/developer/ui/courses/ui/roadmaps/logic/developer_courses_roadmaps_cubit.dart';
import '../../features/developer/ui/courses/ui/roadmaps/ui/developer_courses_roadmaps_screen.dart';
import '../../features/developer/ui/courses/ui/specific_category/logic/developer_courses_specific_category_cubit.dart';
import '../../features/developer/ui/courses/ui/specific_category/ui/developer_courses_specific_category_screen.dart';
import '../../features/developer/ui/courses/ui/specific_course/logic/specific_course_enroll_logic/specific_course_enroll_cubit.dart';
import '../../features/developer/ui/courses/ui/specific_course/logic/specific_course_header_logic/specific_course_header_cubit.dart';
import '../../features/developer/ui/courses/ui/specific_course/logic/specific_course_lectures_logic/specific_course_lectures_cubit.dart';
import '../../features/developer/ui/courses/ui/specific_course/logic/specific_course_lesson_complete_logic/specific_course_lesson_complete_cubit.dart';
import '../../features/developer/ui/courses/ui/specific_course/logic/specific_course_overview_logic/specific_course_overview_cubit.dart';
import '../../features/developer/ui/courses/ui/specific_course/logic/specific_course_reviews_logic/specific_course_reviews_cubit.dart';
import '../../features/developer/ui/courses/ui/specific_course/ui/developer_courses_specific_course_screen.dart';
import '../../features/developer/ui/home_main_page/logic/developer_courses_home_main_page_logic/developer_courses_home_main_page_cubit.dart';
import '../../features/developer/ui/home_main_page/logic/developer_name_home_main_page_logic/developer_name_home_main_page_cubit.dart';
import '../../features/developer/ui/home_main_page/logic/developer_tags_home_main_page_logic/developer_tags_home_main_page_cubit.dart';
import '../../features/developer/ui/home_main_page/ui/developer_home_main_page_screen.dart';
import '../../features/developer/ui/jobs/search/logic/developer_jobs_recently_posted_logic/developer_jobs_recently_posted_cubit.dart';
import '../../features/developer/ui/jobs/search/logic/developer_services_recently_posted_logic/developer_services_recently_posted_cubit.dart';
import '../../features/developer/ui/jobs/search/ui/developer_jobs_search_screen.dart';
import '../../features/developer/ui/jobs/service_details/logic/developer_jobs_service_details_cubit.dart';
import '../../features/developer/ui/jobs/service_details/ui/developer_jobs_service_details_screen.dart';
import '../../features/developer/ui/profile/logic/developer_profile_edit_cubit.dart';
import '../../features/developer/ui/profile/ui/bookmarks/data/repos/developer_profile_courses_bookmarked_repo.dart';
import '../../features/developer/ui/profile/ui/bookmarks/data/repos/developer_profile_jobs_bookmarked_repo.dart';
import '../../features/developer/ui/profile/ui/bookmarks/developer_profile_bookmarks_screen.dart';
import '../../features/developer/ui/profile/ui/bookmarks/logic/developer_profile_courses_bookmarked_logic/developer_profile_courses_bookmarked_cubit.dart';
import '../../features/developer/ui/profile/ui/bookmarks/logic/developer_profile_jobs_logic/developer_profile_jobs_bookmarked_cubit.dart';
import '../../features/developer/ui/profile/ui/cv_generate/data/models/generate_models/developer_profile_cv_generate_generated_request_body.dart';
import '../../features/developer/ui/profile/ui/cv_generate/logic/generate_logic/developer_profile_cv_generate_generated_cubit.dart';
import '../../features/developer/ui/profile/ui/cv_generate/logic/send_data_logic/developer_profile_cv_generate_send_data_cubit.dart';
import '../../features/developer/ui/profile/ui/cv_generate/ui/cv_generated_view/developer_profile_cv_generated_view_screen.dart';
import '../../features/developer/ui/profile/ui/cv_generate/ui/send_data/developer_profile_cv_generate_screen.dart';
import '../../features/developer/ui/profile/ui/edit_profile/developer_profile_edit_profile_screen.dart';
import '../../features/developer/ui/profile/ui/jobs_applied/data/repo/developer_job_withdraw_repo.dart';
import '../../features/developer/ui/profile/ui/jobs_applied/data/repo/developer_profile_applied_jobs_repo.dart';
import '../../features/developer/ui/profile/ui/jobs_applied/data/repo/developer_service_delete_repo.dart';
import '../../features/developer/ui/profile/ui/jobs_applied/logic/developer_job_withdraw_logic/developer_job_withdraw_cubit.dart';
import '../../features/developer/ui/profile/ui/jobs_applied/logic/developer_profile_applied_jobs_logic/developer_profile_applied_jobs_cubit.dart';
import '../../features/developer/ui/profile/ui/jobs_applied/logic/developer_service_delete_logic/developer_service_delete_cubit.dart';
import '../../features/developer/ui/profile/ui/jobs_applied/ui/developer_profile_jobs_and_services_applied_screen.dart';
import '../../features/developer/ui/profile/ui/main_page/logic/profile_info_logic/developer_profile_main_page_info_cubit.dart';
import '../../features/developer/ui/profile/ui/main_page/ui/developer_profile_main_page_screen.dart';
import '../../features/developer/ui/profile/ui/my_cv/logic/developer_profile_settings_update_uploaded_cv_logic/developer_profile_settings_update_uploaded_cv_cubit.dart';
import '../../features/developer/ui/profile/ui/settings/logic/developer_generate_cv_start_session_logic/developer_generate_cv_start_session_cubit.dart';
import '../../features/developer/ui/profile/ui/settings/ui/developer_profile_settings_screen.dart';
import '../../features/notifications/ui/notifications_screen.dart';
import '../../features/post_details/logic/post_details_logic/job_details_cubit.dart';
import '../../features/post_details/ui/job_details/job_details_screen.dart';
import '../../features/sign_up_user_type/sign_up_user_type_screen.dart';
import '../di/dependency_injection.dart';
import 'company_router/signup_router.dart';
import 'customer_router/signup_router.dart';
import 'developer_router/signup_router.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;
    switch (settings.name) {
      // ---------------- Authentication ----------------
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.signUpUserTypeScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpUserTypeScreen(),
        );
      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ResetPasswordCubit>(),
            child: const ResetPasswordScreen(),
          ),
        );
      case Routes.verifyCodeScreen:
        return MaterialPageRoute(
          builder: (context) {
            return MultiBlocProvider(
              providers: [
                BlocProvider.value(value: getIt<ResetPasswordCubit>()),
                BlocProvider(create: (_) => getIt<VerifyCodeCubit>()),
              ],
              child: const VerifyCodeScreen(),
            );
          },
        );
      case Routes.changePasswordScreen:
        return MaterialPageRoute(
          builder: (context) {
            return MultiBlocProvider(
              providers: [
                BlocProvider.value(value: getIt<ResetPasswordCubit>()),
                BlocProvider.value(value: getIt<VerifyCodeCubit>()),
                BlocProvider(create: (_) => getIt<ChangePasswordCubit>()),
              ],
              child: const ChangePasswordScreen(),
            );
          },
        );
      case Routes.successfulChangePasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const SuccessfulChangePasswordScreen(),
        );
      // ---------------- Company ----------------
      // Sign Up
      case Routes.companySignUpFlow:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<CompanySignupCubit>(),
            child: const CompanySignUpFlow(),
          ),
        );
      // Home
      case Routes.companyHomeMainPageScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) =>
                    CompanyHomeMainPageCubit(getIt<CompanyHomeMainPageRepo>())
                      ..getCompanyHomeMainPageData(),
              ),
              BlocProvider(
                create: (_) => StartChatRoomCubit(getIt<StartChatRoomRepo>()),
              ),
            ],
            child: const CompanyHomeMainPageScreen(),
          ),
        );

      case Routes.companyHomeSendOfferScreen:
        return MaterialPageRoute(
          builder: (_) => const CompanyHomeSendOfferScreen(),
        );
      case Routes.companyHomeSeeDetailsScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) =>
                    getIt<CompanyUpdateApplicationStatusCubit>(),
              ),
              BlocProvider(
                create: (context) => getIt<CompanyHomeSeeDetailsCubit>()
                  ..getCompanyHomeSeeDetailsData(
                      applicationId: args.applicationId!),
              ),
            ],
            child: CompanyHomeSeeDetailsScreen(
              applicationId: args.applicationId!,
            ),
          ),
        );
      case Routes.companyHomeSeeResumeScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) =>
                CompanyHomeSeeResumeCubit(getIt<CompanyHomeSeeResumeRepo>())
                  ..getCompanyHomeSeeResumeData(developerId: args.developerId!),
            child: const CompanyHomeSeeResumeScreen(),
          ),
        );
      // Jobs
      case Routes.companyJobsScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => getIt<CompanyProfileAllJobPostsCubit>()
                  ..getCompanyAllJobPosts(),
              ),
              BlocProvider(
                create: (_) => getIt<CompanyJobsDeletePostCubit>(),
              ),
            ],
            child: const CompanyJobsScreen(),
          ),
        );
    // Profile
      case Routes.companyProfileScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) =>
                    getIt<CompanyProfileInfoCubit>()..getCompanyProfileInfo(),
              ),
              BlocProvider(
                create: (_) => getIt<CompanyProfileAllJobPostsCubit>()
                  ..getCompanyAllJobPosts(),
              ),
              BlocProvider(
                create: (_) => getIt<CompanyProfileApplicantsNumberCubit>()
                  ..getApplicantsNumber(),
              ),
              BlocProvider(create: (_) => getIt<CompanyJobsDeletePostCubit>()),
              BlocProvider(
                create: (_) => getIt<CompanyProfileEditCubit>(),
              ),
            ],
            child: const CompanyProfileScreen(),
          ),
        );

      // Jobs Post
      case Routes.companyJobsPostFlow:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<CompanyJobsPostCubit>(),
            child: const CompanyJobsPostFlow(),
          ),
        );
      case Routes.companyJobPostSuccessScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<CompanyJobsDeletePostCubit>(),
            child: CompanyJobPostSuccessScreen(jobId: args.jobId!),
          ),
        );

      // ---------------- Developer ----------------
      // Sign Up
      case Routes.developerSignUpFlow:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<DeveloperSignupCubit>(),
            child: const DeveloperSignUpFlow(),
          ),
        );
      // Sign Up Completed
      case Routes.developerSignUpCompletedCvIsDone:
        return MaterialPageRoute(
          builder: (_) => const DeveloperSignUpCompletedCvIsDone(),
        );
      case Routes.developerSignUpCompletedCvDownloaded:
        return MaterialPageRoute(
          builder: (_) => const DeveloperSignUpCompletedCvDownloaded(),
        );
      case Routes.developerSignUpCompletedReadyToGo:
        return MaterialPageRoute(
          builder: (_) => const DeveloperSignUpCompletedReadyToGo(),
        );
      // Home
      case Routes.developerHomeMainPageScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<DeveloperNameHomeMainPageCubit>()
                  ..fetchDeveloperName(),
              ),
              BlocProvider(
                create: (context) => getIt<DeveloperTagsHomeMainPageCubit>()
                  ..fetchDeveloperTags(),
              ),
              BlocProvider(
                create: (context) => getIt<DeveloperCoursesHomeMainPageCubit>(),
              ),
              BlocProvider(
                create: (_) => getIt<DeveloperRecommendationsCubit>()
                  ..fetchRecommendations(),
              ),
              BlocProvider(
                create: (_) => getIt<DeveloperRecommendationsCubit>()
                  ..fetchRecommendations(),
              ),
            ],
            child: const DeveloperHomeMainPageScreen(),
          ),
        );

      // Community
      case Routes.developerCommunityAllCommunitiesScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) =>
                    getIt<DeveloperCommunityForYouCubit>()..getCommunities(),
              ),
              BlocProvider(
                create: (_) => getIt<DeveloperCommunityByInterestCubit>(),
              ),
              BlocProvider(
                create: (_) =>
                    getIt<DeveloperCommunityTagsCubit>()..getCommunityTags(),
              ),
            ],
            child: const DeveloperCommunityAllCommunitiesScreen(),
          ),
        );
      case Routes.developerCommunityChatScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => BlocProvider<SpecificCommunityCubit>(
            create: (_) => getIt<SpecificCommunityCubit>()
              ..getSpecificCommunity(args.groupId!),
            child: const DeveloperCommunityChatScreen(),
          ),
        );

      // Notification
      case Routes.notificationsScreen:
        return MaterialPageRoute(
          builder: (_) => NotificationsScreen(),
        );
      // Search
      case Routes.searchScreen:
        final args = settings.arguments as AppArgument?;
        final query = args?.query ?? '';
        final searchType = args?.searchType ?? SearchType.courses;
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                  create: (_) =>
                      getIt<SearchCoursesCubit>()..searchCourses(query)),
            ],
            child: SearchScreen(
              query: query,
              searchType: searchType,
            ),
          ),
        );
      // All Chats
      case Routes.chatsAllChatsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<ChatsAllChatsCubit>()..getAllChats(),
            child: const ChatsAllChats(),
          ),
        );
      // Chats
      case Routes.chatsPersonChatScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<GetChatMessagesCubit>()
                  ..getMessages(args.chatRoomId!),
              ),
              BlocProvider(
                create: (context) => getIt<SendMessagesCubit>(),
              ),
            ],
            child: ChatsPersonChatScreen(
              chatRoomId: args.chatRoomId!,
              isExisting: args.isExisting!,
            ),
          ),
        );
      // Courses
      case Routes.developerCoursesMainPageScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) =>
                    getIt<DeveloperCoursesAndJobsMainPageProfileCubit>()
                      ..getDeveloperCoursesMainPageProfile(),
              ),
              BlocProvider(
                create: (_) => getIt<DeveloperCoursesMainPageRoadmapsCubit>()
                  ..getDeveloperCoursesMainPageRoadmaps(),
              ),
              BlocProvider(
                create: (_) =>
                    getIt<DeveloperCoursesOngoingCubit>()..getOngoingCourses(),
              ),
              BlocProvider(
                create: (_) => getIt<DeveloperCoursesRelatedCoursesCubit>()
                  ..getRelatedCourses(),
              ),
            ],
            child: const DeveloperCoursesMainPageScreen(),
          ),
        );

      case Routes.developerCoursesRelatedCoursesScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<DeveloperCoursesRelatedCoursesCubit>()
              ..getRelatedCourses(),
            child: const DeveloperCoursesRelatedCoursesScreen(),
          ),
        );

      case Routes.developerCoursesSpecificCategoryScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<DeveloperCoursesSpecificCategoryCubit>()
              ..getDeveloperCoursesSpecificCategory(args.trackId!),
            child: const DeveloperCoursesSpecificCategoryScreen(),
          ),
        );

      case Routes.developerCoursesSpecificCourseScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<SpecificCourseHeaderCubit>()
                  ..getSpecificCourseHeader(args.courseId!),
              ),
              BlocProvider(
                create: (context) => getIt<SpecificCourseOverviewCubit>()
                  ..getSpecificCourseOverview(args.courseId!),
              ),
              BlocProvider(
                create: (context) => getIt<SpecificCourseLecturesCubit>()
                  ..getSpecificCourseLectures(args.courseId!),
              ),
              BlocProvider(
                create: (context) => getIt<SpecificCourseReviewsCubit>()
                  ..getSpecificCourseReviews(args.courseId!),
              ),
              BlocProvider(
                create: (context) => getIt<SpecificCourseEnrollCubit>(),
              ),
              BlocProvider(
                create: (context) => getIt<SpecificCourseLessonCompleteCubit>(),
              ),
            ],
            child:
                DeveloperCoursesSpecificCourseScreen(courseId: args.courseId!),
          ),
        );

      case Routes.developerCoursesRoadmapsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<DeveloperCoursesRoadmapsCubit>()
              ..getDeveloperCoursesRoadmaps(),
            child: const DeveloperCoursesRoadmapsScreen(),
          ),
        );
      case Routes.developerCoursesMyCoursesScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) =>
                    getIt<DeveloperCoursesOngoingCubit>()..getOngoingCourses(),
              ),
              BlocProvider(
                create: (_) => getIt<DeveloperCoursesCompletedCubit>()
                  ..getCompletedCourses(),
              ),
            ],
            child: const DeveloperCoursesMyCoursesScreen(),
          ),
        );
      // Courses --> CvUpdated
      case Routes.developerCoursesCvUpdatedUpdateCvScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperCoursesCvUpdatedUpdateCvScreen(),
        );
      case Routes.developerCoursesCvUpdatedSuccessfulUpdateScreen:
        return MaterialPageRoute(
          builder: (_) =>
              const DeveloperCoursesCvUpdatedSuccessfulUpdateScreen(),
        );
      //---> Jobs
      case Routes.developerJobsMainPageScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) =>
                    getIt<DeveloperCoursesAndJobsMainPageProfileCubit>()
                      ..getDeveloperCoursesMainPageProfile(),
              ),
            ],
            child: const DeveloperJobsMainPageScreen(),
          ),
        );
      case Routes.developerJobsSearchScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => getIt<DeveloperJobsRecentlyPostedCubit>()
                  ..fetchRecentlyPostedJobs(),
              ),
              BlocProvider(
                create: (_) => getIt<DeveloperServicesRecentlyPostedCubit>()
                  ..fetchRecentlyPostedServices(),
              ),
              BlocProvider(
                create: (_) => getIt<DeveloperRecommendationsCubit>()
                  ..fetchRecommendations(),
              ),
            ],
            child: const DeveloperJobsSearchScreen(),
          ),
        );
      case Routes.developerJobsJobDetailsScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) =>
                    getIt<JobDetailsCubit>()..fetchJobDetails(args.jobId!),
              ),
              BlocProvider(
                create: (_) => getIt<DeveloperSingleJobBookmarkCubit>()
                  ..bookmarkJob(args.jobId!),
              ),
              BlocProvider(create: (_) => getIt<CompanyJobsDeletePostCubit>()),
            ],
            child: JobDetailsScreen(
              jobId: args.jobId!,
              isCompany: args.isCompany ?? false,
            ),
          ),
        );
      case Routes.developerJobsServiceDetailsScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (_) => getIt<DeveloperJobsServiceDetailsCubit>()
                        ..fetchServiceDetails(args.serviceId!),
                    ),
                    BlocProvider(
                      create: (_) => getIt<DeveloperSingleJobBookmarkCubit>()
                        ..bookmarkJob(args.serviceId!),
                    ),
                  ],
                  child: DeveloperJobsServiceDetailsScreen(
                      serviceId: args.serviceId!),
                ));
      // Apply
      case Routes.developerJobsApplyScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<DeveloperJobsApplyCubit>(),
            child: DeveloperJobsApplyScreen(jobId: args.jobId!),
          ),
        );
      case Routes.developerJobsApplicationSubmittedScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperJobsApplicationSubmittedScreen(),
        );
      case Routes.developerJobsAllCategoriesScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperJobsAllCategoriesScreen(),
        );

      // Profile
      case Routes.developerProfileMainPageScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => getIt<DeveloperProfileMainPageInfoCubit>()
                  ..fetchDeveloperProfileMainPageInfo(),
              ),
              BlocProvider(
                create: (_) => getIt<DeveloperProfileEditCubit>(),
              ),
              BlocProvider(
                create: (_) => getIt<DeveloperProfileMainPageSkillsCubit>()
                  ..fetchDeveloperProfileMainPageSkills(),
              ),
            ],
            child: const DeveloperProfileMainPageScreen(),
          ),
        );

      case Routes.developerProfileSettingsScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => getIt<DeveloperGenerateCVStartSessionCubit>(),
              ),
              BlocProvider(
                create: (_) => getIt<DeveloperProfileEditCubit>(),
              ),
              BlocProvider(
                create: (_) => getIt<DeveloperProfileMainPageInfoCubit>()
                  ..fetchDeveloperProfileMainPageInfo(),
              ),
            ],
            child: const DeveloperProfileSettingsScreen(),
          ),
        );

      case Routes.developerProfileEditProfileScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<DeveloperProfileEditCubit>(),
            child: const DeveloperProfileEditProfileScreen(),
          ),
        );
      case Routes.developerProfileMyCVScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) =>
                    getIt<DeveloperProfileSettingsGetMyCVCubit>()..getMyCV(),
              ),
              BlocProvider(
                create: (_) =>
                    getIt<DeveloperProfileSettingsUpdateUploadedCVCubit>(),
              ),
              BlocProvider(
                create: (_) => getIt<DeveloperProfileSettingsDeleteCVCubit>(),
              ),
            ],
            child: const DeveloperProfileMyCvScreen(),
          ),
        );
      case Routes.developerProfileCVGenerateScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                getIt<DeveloperProfileCVGenerateSendDataCubit>(),
            child: DeveloperProfileCVGenerateScreen(sessionId: args.sessionId!),
          ),
        );
      case Routes.developerProfileCvGeneratedViewScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<DeveloperProfileCVGenerateGeneratedCubit>()
              ..generateCV(
                  sessionId: args.sessionId!,
                  requestBody:
                      DeveloperProfileCVGenerateGeneratedRequestBody()),
            child: DeveloperProfileCvGeneratedViewScreen(
                sessionId: args.sessionId!),
          ),
        );
      case Routes.developerProfileBookmarksScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              // Jobs Bookmarked
              BlocProvider(
                create: (context) => DeveloperProfileJobsBookmarkedCubit(
                  getIt<DeveloperProfileJobsBookmarkedRepo>(),
                )..getBookmarkedJobs(),
              ),

              // Services Bookmarked
              BlocProvider(
                create: (context) => DeveloperProfileServicesBookmarkedCubit(
                  getIt<DeveloperProfileServicesBookmarkedRepo>(),
                )..getBookmarkedServices(),
              ),

              // Courses Bookmarked
              BlocProvider(
                create: (context) => DeveloperProfileCoursesBookmarkedCubit(
                  getIt<DeveloperProfileCoursesBookmarkedRepo>(),
                )..getBookmarkedCourses(),
              ),
            ],
            child: const DeveloperProfileBookmarksScreen(),
          ),
        );
      case Routes.developerProfileJobsAppliedScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => DeveloperProfileAppliedJobsCubit(
                  getIt<DeveloperProfileAppliedJobsRepo>(),
                )..fetchAppliedJobs(),
              ),
              BlocProvider(
                create: (context) => DeveloperJobWithdrawCubit(
                  getIt<DeveloperJobWithdrawRepo>(),
                ),
              ),
              BlocProvider(
                create: (context) => DeveloperServiceDeleteCubit(
                  getIt<DeveloperServiceDeleteRepo>(),
                ),
              ),
            ],
            child: const DeveloperProfileJobsAndServicesAppliedScreen(),
          ),
        );
      // ---------------- Customer ----------------
      // sign up
      case Routes.customerSignUpFlow:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<CustomerSignupCubit>(),
            child: const CustomerSignupFlow(),
          ),
        );

      // Profile

      case Routes.customerProfileScreen:
        return MaterialPageRoute(
          builder: (_) => const CustomerProfileScreen(),
        );
      //jobs_post
      case Routes.customerJobPostScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<CustomerJobsPostCubit>(),
            child: const CustomerJobPostScreen(),
          ),
        );

      // applied
      case Routes.customerAppliedFirstScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<ApplicationsCubit>()
              ..getApplications(args.applicationId!),
            child: const CustomerAppliedFirstScreen(),
          ),
        );

      // applied details
      case Routes.customerAppliedSecoundScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<ApplicationDetailsCubit>()
              ..getApplicationDetails(args.applicationId!),
            child: const CustomerAppliedSecoundScreen(),
          ),
        );

      // chats

      case Routes.customerChatsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<ContactListAllChatsCubit>()..getAllChats(),
            child: const CustomerChatsScreen(),
          ),
        );

      // sign up
      case Routes.customerSignUpCompulsoryDataScreen:
        return MaterialPageRoute(
          builder: (_) => const CustomerSignUpCompulsoryDataScreen(),
        );
      case Routes.customerSignUpFillProfileScreen:
      // home
      case Routes.customerHomeMainPageScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<CustomerHomeCubit>()..getCustomerHomeData(),
            child: const CustomerHomeMainPageScreen(),
          ),
        );
      // ---------------- PDF View ----------------
      case Routes.pdfViewerScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => PdfViewerScreen(url: args.fileUrl!),
        );
      // ---------------- ChatBot ----------------
      case Routes.chatBotScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<ChatBotCubit>(),
            child: ChatBotScreen(id: args.developerId!),
          ),
        );
      default:
        return null;
    }
  }
}
