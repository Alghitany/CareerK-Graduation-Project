import 'package:flutter/material.dart';
import '../../features/onboarding/on_boarding_screen.dart';
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
      default:
        return null;
    }
  }
}