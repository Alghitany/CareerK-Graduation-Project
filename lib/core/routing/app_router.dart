import 'package:carrerk/features/authentication/verify_code/verify_code_screen.dart';
import 'package:carrerk/features/company/home/main_page/company_home_main_page_screen.dart';
import 'package:carrerk/features/company/home/sign_up/company_sign_up_compulsory_data_screen.dart';
import 'package:carrerk/features/customer/sign_up/customer_sign_up_compulsory_data_screen.dart';
import 'package:carrerk/features/developer/home/main_page/developer_home_main_page_screen.dart';
import 'package:carrerk/features/developer/sign_up/compoulsory_data/developer_sign_up_compulsory_data_screen.dart';
import 'package:flutter/material.dart';

import '../../features/authentication/change_password/change_password_screen.dart';
import '../../features/authentication/login/login_screen.dart';
import '../../features/authentication/onboarding/on_boarding_screen.dart';
import '../../features/authentication/reset_password/reset_password_screen.dart';
import '../../features/authentication/successful_change_password/successful_change_password.dart';
import '../../features/developer/sign_up/bio_and_skills/developer_sign_up_bio_and_skills.dart';
import '../../features/developer/sign_up/enter_location/developer_sign_up_enter_location_screen.dart';
import '../../features/developer/sign_up/fill_profile/developer_sign_up_fill_profile_screen.dart';
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
      case Routes.companySignUpCompulsoryDataScreen:
        return MaterialPageRoute(
          builder: (_) => const CompanySignUpCompulsoryDataScreen(),
        );
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
      case Routes.developerSignUpBioAndSkills:
        return MaterialPageRoute(
          builder: (_) => const DeveloperSignUpBioAndSkills(),
        );
      // Home
      case Routes.developerHomeMainPageScreen:
        return MaterialPageRoute(
          builder: (_) => const DeveloperHomeMainPageScreen(),
        );
      // ---------------- Customer ----------------
      case Routes.customerSignUpCompulsoryDataScreen:
        return MaterialPageRoute(
          builder: (_) => const CustomerSignUpCompulsoryDataScreen(),
        );
      default:
        return null;
    }
  }
}
