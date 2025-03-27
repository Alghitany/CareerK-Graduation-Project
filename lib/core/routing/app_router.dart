import 'package:flutter/material.dart';
import '../../features/authentication/login/login_screen.dart';
import '../../features/onboarding/on_boarding_screen.dart';
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
      default:
        return null;
    }
  }
}