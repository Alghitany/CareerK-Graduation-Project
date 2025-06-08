import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/authentication/change_password/data/repos/change_password_repo.dart';
import '../../features/authentication/change_password/logic/change_password_cubit.dart';
import '../../features/authentication/login/data/repos/login_repo.dart';
import '../../features/authentication/login/logic/login_cubit.dart';
import '../../features/authentication/reset_password/data/repos/reset_password_repo.dart';
import '../../features/authentication/reset_password/logic/reset_password_cubit.dart';
import '../../features/authentication/verify_code/data/repo/verify_code_repo.dart';
import '../../features/authentication/verify_code/logic/verify_code_cubit.dart';
import '../../features/developer/sign_up/data/repos/developer_sign_up_repo.dart';
import '../../features/developer/sign_up/logic/developer_sign_up_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & Api Service
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<Dio>(() => dio);
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Authentication
  // -> Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
  // -> Reset Password
  getIt.registerLazySingleton<ResetPasswordRepo>(
      () => ResetPasswordRepo(getIt()));
  getIt.registerLazySingleton<ResetPasswordCubit>(
      () => ResetPasswordCubit(getIt()));
  // -> Verify Code
  getIt.registerLazySingleton<VerifyCodeRepo>(() => VerifyCodeRepo(getIt()));
  getIt.registerLazySingleton<VerifyCodeCubit>(() => VerifyCodeCubit(getIt()));
  // -> Change Password
  getIt.registerLazySingleton<ChangePasswordRepo>(
      () => ChangePasswordRepo(getIt()));
  getIt.registerLazySingleton<ChangePasswordCubit>(
      () => ChangePasswordCubit(getIt()));

  // Developer -> Signup
  getIt.registerLazySingleton<DeveloperSignupRepo>(
    () => DeveloperSignupRepo(getIt<Dio>()),
  );
  getIt.registerFactory<DeveloperSignupCubit>(
    () => DeveloperSignupCubit(getIt<DeveloperSignupRepo>()),
  );
}
