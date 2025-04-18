import 'package:carrerk/features/authentication/verify_code/verify_code_screen.dart';
import 'package:carrerk/features/company/home/main_page/company_home_main_page_screen.dart';
import 'package:carrerk/features/customer/sign_up/compulsory_data/customer_sign_up_compulsory_data_screen.dart';
import 'package:carrerk/features/developer/sign_up/compoulsory_data/developer_sign_up_compulsory_data_screen.dart';
import 'package:flutter/material.dart';

import '../../features/authentication/change_password/change_password_screen.dart';
import '../../features/authentication/login/login_screen.dart';
import '../../features/authentication/onboarding/on_boarding_screen.dart';
import '../../features/authentication/reset_password/reset_password_screen.dart';
import '../../features/authentication/successful_change_password/successful_change_password.dart';
import '../../features/company/sign_up/compulsory_data/company_sign_up_compulsory_data_screen.dart';
import '../../features/company/sign_up/contact_information/company_sign_up_contact_information.dart';
import '../../features/company/sign_up/enter_location/company_sign_up_enter_location_screen.dart';
import '../../features/company/sign_up/fill_profile/company_sign_up_fill_profile_screen.dart';
import '../../features/customer/sign_up/fill_profile/customer_sign_up_fill_profile_screen.dart';
import '../../features/developer/community/all_communities/developer_community_all_communities_screen.dart';
import '../../features/developer/community/chat/developer_community_chat_screen.dart';
import '../../features/developer/courses/categories/developer_courses_categories_screen.dart';
import '../../features/developer/courses/certification/developer_courses_certification_screen.dart';
import '../../features/developer/courses/main_page/developer_courses_main_page_screen.dart';
import '../../features/developer/courses/my_courses/developer_courses_my_courses_screen.dart';
import '../../features/developer/courses/roadmaps/developer_courses_roadmaps_screen.dart';
import '../../features/developer/courses/specific_category/developer_courses_course_screen.dart';
import '../../features/developer/home_main_page/developer_home_main_page_screen.dart';
import '../../features/developer/jobs/all_categories/developer_jobs_all_categories_screen.dart';
import '../../features/developer/jobs/application_submitted/developer_jobs_application_submitted_screen.dart';
import '../../features/developer/jobs/apply/developer_jobs_apply_screen.dart';
import '../../features/developer/jobs/job_details/developer_jobs_job_details_screen.dart';
import '../../features/developer/jobs/main_page/developer_jobs_main_page_screen.dart';
import '../../features/developer/jobs/search/developer_jobs_search_screen.dart';
import '../../features/developer/jobs/service_details/developer_jobs_service_details_screen.dart';
import '../../features/developer/profile/edit_profile/developer_profile_edit_profile_screen.dart';
import '../../features/developer/profile/jobs_applied/developer_profile_jobs_applied_screen.dart';
import '../../features/developer/profile/logout/developer_profile_logout_screen.dart';
import '../../features/developer/profile/main_page/developer_profile_main_page_screen.dart';
import '../../features/developer/profile/payment/option/developer_profile_payment_option_screen.dart';
import '../../features/developer/profile/saved_jobs/developer_profile_saved_jobs_screen.dart';
import '../../features/developer/profile/settings/developer_profile_settings_screen.dart';
import '../../features/developer/sign_up/bio_and_skills/developer_sign_up_bio_and_skills_screen.dart';
import '../../features/developer/sign_up/enter_location/developer_sign_up_enter_location_screen.dart';
import '../../features/developer/sign_up/fill_profile/developer_sign_up_fill_profile_screen.dart';
import '../../features/developer/sign_up/optional_data/developer_sign_up_optional_data_screen.dart';
import '../../features/developer/sign_up/selected_courses/developer_sign_up_selected_courses.dart';
import '../../features/developer/sign_up_completed/cv_downloaded/developer_sign_up_completed_cv_downloaded.dart';
import '../../features/developer/sign_up_completed/cv_is_done/developer_sign_up_completed_cv_is_done.dart';
import '../../features/developer/sign_up_completed/ready_to_go/developer_sign_up_completed_ready_to_go.dart';
import '../../features/notifications/notifications_screen.dart';
import '../../features/search/search_screen.dart';
import '../../features/sign_up_user_type/sign_up_user_type_screen.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // Maybe used later But it is unnecessary now.
    // final arguments = settings.arguments;
    switch (settings.name) {
      // ---------------- Authentication ----------------
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signUpUserTypeScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpUserTypeScreen(),
        );
      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordScreen(),
        );
      case Routes.verifyCodeScreen:
        return MaterialPageRoute(
          builder: (_) => const VerifyCodeScreen(),
        );
      case Routes.changePasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ChangePasswordScreen(),
        );
      case Routes.successfulChangePasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const SuccessfulChangePasswordScreen(),
        );
      // ---------------- Company ----------------
      // Sign Up
      case Routes.companySignUpCompulsoryDataScreen:
        return MaterialPageRoute(
          builder: (_) => const CompanySignUpCompulsoryDataScreen(),
        );
      case Routes.companySignUpFillProfileScreen:
        return MaterialPageRoute(
          builder: (_) => const CompanySignUpFillProfileScreen(),
        );
      case Routes.companySignUpEnterLocationScreen:
        return MaterialPageRoute(
          builder: (_) => const CompanySignUpEnterLocationScreen(),
        );
      case Routes.companySignUpContactInformation:
        return MaterialPageRoute(
          builder: (_) => const CompanySignUpContactInformation(),
        );
      // Home
      case Routes.companyHomeMainPageScreen:
        return MaterialPageRoute(
          builder: (_) => const CompanyHomeMainPageScreen(),
        );
      // ---------------- Developer ----------------
      // Sign Up
      case Routes.developerSignUpCompulsoryDataScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperSignUpCompulsoryDataScreen(),
        );
      case Routes.developerSignUpFillProfileScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperSignUpFillProfileScreen(),
        );
      case Routes.developerSignUpEnterLocationScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperSignUpEnterLocationScreen(),
        );
      case Routes.developerSignUpBioAndSkillsScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperSignUpBioAndSkillsScreen(),
        );
      case Routes.developerSignUpOptionalDataScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperSignUpOptionalDataScreen(),
        );
      case Routes.developerSignUpSelectedCourses:
        return MaterialPageRoute(
          builder: (_) => const DeveloperSignUpSelectedCourses(),
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
        return MaterialPageRoute(
          builder: (_) => const SearchScreen(),
        );
      // Courses
      case Routes.developerCoursesMainPageScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperCoursesMainPageScreen(),
        );
      case Routes.developerCoursesCategoriesScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperCoursesCategoriesScreen(),
        );
      case Routes.developerCoursesSpecificCategoryScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperCoursesSpecificCategoryScreen(),
        );
      case Routes.developerCoursesRoadmapsScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperCoursesRoadmapsScreen(),
        );
      case Routes.developerCoursesMyCoursesScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperCoursesMyCoursesScreen(),
        );
      case Routes.developerCoursesCertificationScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperCoursesCertificationScreen(),
        );
      // Jobs
      case Routes.developerJobsMainPageScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperJobsMainPageScreen(),
        );
      case Routes.developerJobsSearchScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperJobsSearchScreen(),
        );
      case Routes.developerJobsServiceDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperJobsServiceDetailsScreen(),
        );
      case Routes.developerJobsApplyScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperJobsApplyScreen(),
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
        return MaterialPageRoute(
          builder: (_) => const DeveloperJobsJobDetailsScreen(),
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
      case Routes.developerProfileLogoutScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperProfileLogoutScreen(),
        );
      // Profile --> Payment
      case Routes.developerProfilePaymentOptionScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperProfilePaymentOptionScreen(),
        );
      // ---------------- Customer ----------------
      case Routes.customerSignUpCompulsoryDataScreen:
        return MaterialPageRoute(
          builder: (_) => const CustomerSignUpCompulsoryDataScreen(),
        );
      case Routes.customerSignUpFillProfileScreen:
        return MaterialPageRoute(
          builder: (_) => const CustomerSignUpFillProfileScreen(),
        );
      default:
        return null;
    }
  }
}
