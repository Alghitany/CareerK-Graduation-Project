import 'package:carrerk/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'careerk_app.dart';
import 'core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(CareerkApp(
    appRouter: AppRouter(),
  ));
}
