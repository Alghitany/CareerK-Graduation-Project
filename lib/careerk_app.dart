import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/helpers/constants.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class CareerkApp extends StatelessWidget {
  final AppRouter appRouter;

  const CareerkApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doc App',
        theme: ThemeData(
            primaryColor: ColorsManager.primaryWildBlueYonder,
            scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
        initialRoute: _getInitialRoute(),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
  String _getInitialRoute() {
    if (!isLoggedInUser) return Routes.onBoardingScreen;

    switch (loggedInUserRole?.toLowerCase()) {
      case 'customer':
      case 'company':
        return Routes.companyHomeMainPageScreen;
      case 'developer':
        return Routes.developerHomeMainPageScreen;
      default:
        return Routes.onBoardingScreen; // Fallback
    }
  }

}
