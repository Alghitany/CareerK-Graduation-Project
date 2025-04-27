import 'package:carrerk/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'careerk_app.dart';

void main() async {
  // To fix texts being hid
  //den bug in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(CareerkApp(
    appRouter: AppRouter(),
  ));
}
