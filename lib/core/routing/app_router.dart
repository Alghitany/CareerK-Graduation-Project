import 'package:carrerk/features/company/home/main_page/company_home_main_page.dart';
import 'package:carrerk/features/developer/home/main_page/developer_home_main_page.dart';
import 'package:flutter/material.dart';
import '../../features/authentication/login/login_screen.dart';
import '../../features/authentication/onboarding/on_boarding_screen.dart';
import '../../features/authentication/reset_password/reset_password_screen.dart';
import '../../features/sign_up_user_type/sign_up_user_type.dart';
import 'routes.dart';

class AppRouter{

  Route? generateRoute(RouteSettings settings){
    // Maybe used later But it is unnecessary now.
    // final arguments = settings.arguments;
    switch(settings.name){
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
          builder: (_) => const SignUpUserType(),
        );
      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordScreen(),
        );
      case Routes.companyHomeMainPage:
        return MaterialPageRoute(
          builder: (_) => const CompanyHomeMainPage(),
        );
      case Routes.developerHomeMainPage:
        return MaterialPageRoute(
          builder: (_) => const DeveloperHomeMainPage(),
        );
      default:
        return null;
    }
  }
}