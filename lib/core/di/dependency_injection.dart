import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/authentication/login/data/repos/login_repo.dart';
import '../../features/authentication/login/logic/login_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async{
  // Dio & Api Service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(()=> ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(()=> LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(()=> LoginCubit(getIt()));
}