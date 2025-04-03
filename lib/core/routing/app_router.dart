import 'package:carrerk/features/authentication/verify_code/verify_code_screen.dart';
import 'package:carrerk/features/company/home/main_page/company_home_main_page_screen.dart';
import 'package:carrerk/features/customer/sign_up/compulsory_data/customer_sign_up_compulsory_data_screen.dart';
import 'package:carrerk/features/developer/notifications/developer_notifications_screen.dart';
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
import '../../features/developer/courses/categories/developer_courses_categories_screen.dart';
import '../../features/developer/courses/main_page/developer_courses_main_page_screen.dart';
import '../../features/developer/home_main_page/developer_home_main_page_screen.dart';
import '../../features/developer/jobs/main_page/developer_jobs_main_page_screen.dart';
import '../../features/developer/profile/main_page/developer_profile_main_page_screen.dart';
import '../../features/developer/search/developer_search_screen.dart';
import '../../features/developer/sign_up/bio_and_skills/developer_sign_up_bio_and_skills_screen.dart';
import '../../features/developer/sign_up/enter_location/developer_sign_up_enter_location_screen.dart';
import '../../features/developer/sign_up/fill_profile/developer_sign_up_fill_profile_screen.dart';
import '../../features/developer/sign_up/optional_data/developer_sign_up_optional_data_screen.dart';
import '../../features/developer/sign_up/selected_courses/developer_sign_up_selected_courses.dart';
import '../../features/developer/sign_up_completed/cv_downloaded/developer_sign_up_completed_cv_downloaded.dart';
import '../../features/developer/sign_up_completed/cv_is_done/developer_sign_up_completed_cv_is_done.dart';
import '../../features/developer/sign_up_completed/ready_to_go/developer_sign_up_completed_ready_to_go.dart';
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
          builder: (_) => const DeveloperHomeCommunityAllCommunitiesScreen(),
        );
      // Notification
      case Routes.developerNotificationsScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperNotificationsScreen(),
        );
      // Search
      case Routes.developerSearchScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperSearchScreen(),
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
      // Jobs
      case Routes.developerJobsMainPageScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperJobsMainPageScreen(),
        );
      // Profile
      case Routes.developerProfileMainPageScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperProfileMainPageScreen(),
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
