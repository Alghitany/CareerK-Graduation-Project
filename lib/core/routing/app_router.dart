import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/routing/company_router/jobs_post_router.dart';
import 'package:carrerk/core/routing/customer_router/jobs_post_router.dart';
import 'package:carrerk/core/widgets/pdf_viewer_screen.dart';
import 'package:carrerk/features/authentication/reset_password/logic/reset_password_cubit.dart';
import 'package:carrerk/features/authentication/verify_code/logic/verify_code_cubit.dart';
import 'package:carrerk/features/authentication/verify_code/ui/verify_code_screen.dart';
import 'package:carrerk/features/customer/applied/first/customer_applied_first_screen.dart';
import 'package:carrerk/features/customer/applied/secound/customer_applied_secound_screen.dart';
import 'package:carrerk/features/customer/chats/customer_chats_screen.dart';
import 'package:carrerk/features/customer/chats/person_chat/customer_chats_person_chat_screen.dart';
import 'package:carrerk/features/customer/home/customer_home_main_page.dart';
import 'package:carrerk/features/customer/jobs_post/customer_jobs_post.dart';
import 'package:carrerk/features/customer/profile/customer_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/authentication/change_password/logic/change_password_cubit.dart';
import '../../features/authentication/change_password/ui/change_password_screen.dart';
import '../../features/authentication/login/logic/login_cubit.dart';
import '../../features/authentication/login/ui/login_screen.dart';
import '../../features/authentication/onboarding/on_boarding_screen.dart';
import '../../features/authentication/reset_password/ui/reset_password_screen.dart';
import '../../features/authentication/successful_change_password/successful_change_password.dart';
import '../../features/chats/all_chats/logic/chats_all_chats_cubit.dart';
import '../../features/chats/all_chats/ui/chats_all_chats.dart';
import '../../features/chats/person_chat/data/repo/start_chat_room_repo.dart';
import '../../features/chats/person_chat/logic/get_chat_messages/get_chat_messages_cubit.dart';
import '../../features/chats/person_chat/logic/send_messages/send_messages_cubit.dart';
import '../../features/chats/person_chat/logic/start_chat/start_chat_room_cubit.dart';
import '../../features/chats/person_chat/ui/chats_person_chat_screen.dart';
import '../../features/company/jobs_post/logic/company_jobs_post_cubit.dart';
import '../../features/company/jobs_post/ui/success/company_job_post_success_screen.dart';
import '../../features/company/logic/company_jobs_delete_post_cubit.dart';
import '../../features/company/sign_up/logic/company_sign_up_cubit.dart';
import '../../features/company/ui/home/main_page/company_home_main_page_screen.dart';
import '../../features/company/ui/home/see_details/company_home_see_details_screen.dart';
import '../../features/company/ui/home/see_resume/company_home_see_resume_screen.dart';
import '../../features/company/ui/jobs/company_jobs_screen.dart';
import '../../features/company/ui/profile/company_profile_screen.dart';
import '../../features/company/ui/send_to_applicants/message-applicant/company_send_to_applicants_message_applicant_screen.dart';
import '../../features/customer/sign_up/fill_profile/customer_sign_up_fill_profile_screen.dart';
import '../../features/developer/logic/developer_courses_and_jobs_main_page_profile_logic/developer_courses_and_jobs_main_page_profile_cubit.dart';
import '../../features/developer/logic/developer_single_job_bookmark_logic/developer_single_job_bookmark_cubit.dart';
import '../../features/customer/sign_up/logic/customer_sign_up_cubit.dart';
import '../../features/developer/logic/developer_courses_and_jobs_main_page_profile_cubit.dart';
import '../../features/developer/ui/community/all_communities/developer_community_all_communities_screen.dart';
import '../../features/developer/ui/community/chat/developer_community_chat_screen.dart';
import '../../features/developer/ui/courses/categories/developer_courses_categories_screen.dart';
import '../../features/developer/ui/courses/certification/developer_courses_certification_screen.dart';
import '../../features/developer/ui/courses/cv_updated/download_cv/developer_courses_cv_updated_download_cv_screen.dart';
import '../../features/developer/ui/courses/cv_updated/successful_update/developer_courses_cv_updated_successful_update_screen.dart';
import '../../features/developer/ui/courses/main_page/logic/developer_courses_main_page_roadmaps_cubit.dart';
import '../../features/developer/ui/courses/main_page/ui/developer_courses_main_page_screen.dart';
import '../../features/developer/ui/courses/my_courses/developer_courses_my_courses_screen.dart';
import '../../features/developer/ui/courses/roadmaps/logic/developer_courses_roadmaps_cubit.dart';
import '../../features/developer/ui/courses/roadmaps/ui/developer_courses_roadmaps_screen.dart';
import '../../features/developer/ui/courses/specific_category/logic/developer_courses_specific_category_cubit.dart';
import '../../features/developer/ui/courses/specific_category/ui/developer_courses_specific_category_screen.dart';
import '../../features/developer/ui/courses/specific_course/ui/developer_courses_course_details_screen.dart';
import '../../features/developer/ui/home_main_page/developer_home_main_page_screen.dart';
import '../../features/developer/ui/jobs/all_categories/developer_jobs_all_categories_screen.dart';
import '../../features/developer/ui/jobs/application_submitted/developer_jobs_application_submitted_screen.dart';
import '../../features/developer/ui/jobs/apply/logic/developer_jobs_apply_cubit.dart';
import '../../features/developer/ui/jobs/apply/ui/developer_jobs_apply_screen.dart';
import '../../features/developer/ui/jobs/job_details/logic/developer_jobs_job_details_cubit.dart';
import '../../features/developer/ui/jobs/job_details/ui/developer_jobs_job_details_screen.dart';
import '../../features/developer/ui/jobs/main_page/developer_jobs_main_page_screen.dart';
import '../../features/developer/ui/jobs/search/developer_jobs_search_screen.dart';
import '../../features/developer/ui/jobs/service_details/developer_jobs_service_details_screen.dart';
import '../../features/developer/ui/profile/edit_profile/developer_profile_edit_profile_screen.dart';
import '../../features/developer/ui/profile/jobs_applied/developer_profile_jobs_applied_screen.dart';
import '../../features/developer/ui/profile/main_page/developer_profile_main_page_screen.dart';
import '../../features/developer/ui/profile/payment/add_new_cart/developer_profile_payment_add_new_card_screen.dart';
import '../../features/developer/ui/profile/payment/option/developer_profile_payment_option_screen.dart';
import '../../features/developer/ui/profile/saved_jobs/developer_profile_saved_jobs_screen.dart';
import '../../features/developer/ui/profile/settings/developer_profile_settings_screen.dart';
import '../../features/developer/ui/sign_up/logic/developer_sign_up_cubit.dart';
import '../../features/developer/ui/sign_up_completed/cv_downloaded/developer_sign_up_completed_cv_downloaded.dart';
import '../../features/developer/ui/sign_up_completed/cv_is_done/developer_sign_up_completed_cv_is_done.dart';
import '../../features/developer/ui/sign_up_completed/ready_to_go/developer_sign_up_completed_ready_to_go.dart';
import '../../features/notifications/notifications_screen.dart';
import '../../features/search/logic/search_courses_cubit.dart';
import '../../features/search/ui/search_screen.dart';
import '../../features/sign_up_user_type/sign_up_user_type_screen.dart';
import '../di/dependency_injection.dart';
import '../helpers/enums.dart';
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
          builder: (_) => BlocProvider(
            create: (_) => StartChatRoomCubit(getIt<StartChatRoomRepo>()),
            child: const CompanyHomeMainPageScreen(),
          ),
        );
      case Routes.companyHomeSeeDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const CompanyHomeSeeDetailsScreen(),
        );
      case Routes.companyHomeSeeResumeScreen:
        return MaterialPageRoute(
          builder: (_) => const CompanyHomeSeeResumeScreen(),
        );
      // Jobs
      case Routes.companyJobsScreen:
        return MaterialPageRoute(
          builder: (_) => const CompanyJobsScreen(),
        );
      // Profile
      case Routes.companyProfileScreen:
        return MaterialPageRoute(
          builder: (_) => const CompanyProfileScreen(),
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
      // Send To Clients
      case Routes.companySendToClientsScreen:
        return MaterialPageRoute(
          builder: (_) => const CompanySendToApplicantsMessageApplicantScreen(),
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
          builder: (_) => const DeveloperHomeMainPageScreen(),
        );
      // Community
      case Routes.developerCommunityAllCommunitiesScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperCommunityAllCommunitiesScreen(),
        );
      case Routes.developerCommunityChatScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperCommunityChatScreen(),
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
            ],
            child: const DeveloperCoursesMainPageScreen(),
          ),
        );
      case Routes.developerCoursesCategoriesScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperCoursesCategoriesScreen(),
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
      case Routes.developerCoursesCourseDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperCoursesCourseDetailsScreen(),
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
          builder: (_) => const DeveloperCoursesMyCoursesScreen(),
        );
      case Routes.developerCoursesCertificationScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperCoursesCertificationScreen(),
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
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<DeveloperSingleJobBookmarkCubit>()
              ..bookmarkJob(args.jobId!),
            child: const DeveloperJobsSearchScreen(),
          ),
        );
      case Routes.developerJobsServiceDetailsScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => getIt<DeveloperSingleJobBookmarkCubit>()
              ..bookmarkJob(args.jobId!),
            child: const DeveloperJobsServiceDetailsScreen(),
          ),
        );
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
      case Routes.developerJobsJobDetailsScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => getIt<DeveloperJobsJobDetailsCubit>()
                  ..fetchJobDetails(args.jobId!),
              ),
              BlocProvider(
                create: (_) => getIt<DeveloperSingleJobBookmarkCubit>()
                  ..bookmarkJob(args.jobId!),
              ),
            ],
            child: DeveloperJobsJobDetailsScreen(jobId: args.jobId!),
          ),
        );

      // Profile
      case Routes.developerProfileMainPageScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperProfileMainPageScreen(),
        );
      case Routes.developerProfileSettingsScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperProfileSettingsScreen(),
        );
      case Routes.developerProfileEditProfileScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperProfileEditProfileScreen(),
        );
      case Routes.developerProfileSavedJobsScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperProfileSavedJobsScreen(),
        );
      case Routes.developerProfileJobsAppliedScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperProfileJobsAppliedScreen(),
        );
      // Profile --> Payment
      case Routes.developerProfilePaymentOptionScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperProfilePaymentOptionScreen(),
        );
      case Routes.developerProfilePaymentAddNewCartScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperProfilePaymentAddNewCardScreen(),
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
          builder: (_) => const CustomerJobPostScreen(),
        );

      case Routes.customerJobsPostFlow:
        return MaterialPageRoute(builder: (_) => const CustomerJobsPostFlow());
      // applied
      case Routes.customerAppliedFirstScreen:
        return MaterialPageRoute(
            builder: (_) => const CustomerAppliedFirstScreen());
      case Routes.customerAppliedSecoundScreen:
        return MaterialPageRoute(
            builder: (_) => const CustomerAppliedSecoundScreen());
      // chats
      case Routes.customerChatsScreen:
        return MaterialPageRoute(
          builder: (_) => const CustomerChatsScreen(),
        );

      case Routes.customerChatsPersonChatScreen:
        return MaterialPageRoute(
          builder: (_) => const CustomerChatsPersonChatScreen(),
        );
      // home
      case Routes.customerHomeMainPageScreen:
        return MaterialPageRoute(
          builder: (_) => const CustomerHomeMainPageScreen(),
        );
      // ---------------- PDF View ----------------
      case Routes.pdfViewerScreen:
        final args = settings.arguments as AppArgument;
        return MaterialPageRoute(
          builder: (_) => PdfViewerScreen(url: args.fileUrl!),
        );
      default:
        return null;
    }
  }
}
