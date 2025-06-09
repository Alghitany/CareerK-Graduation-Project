import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'careerk_app.dart';
import 'core/di/dependency_injection.dart';
import 'core/helpers/constants.dart';
import 'core/helpers/shared_pref_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedUser();
  runApp(CareerkApp(
    appRouter: AppRouter(),
  ));
}
checkIfLoggedUser() async{
  String? userToken = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userAccessToken);
  String? role = await SharedPrefHelper.getString(SharedPrefKeys.userRole);
  if(!userToken.isNullOrEmpty()){
    isLoggedInUser = true;
  } else{
    isLoggedInUser = false;
  }
  loggedInUserRole = role;
}
