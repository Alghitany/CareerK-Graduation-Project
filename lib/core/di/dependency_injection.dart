import 'package:carrerk/features/chats/person_chat/data/repo/get_chat_messages_repo.dart';
import 'package:carrerk/features/chats/person_chat/logic/get_chat_messages/get_chat_messages_cubit.dart';
import 'package:carrerk/features/company/data/repo/company_jobs_delete_post_repo.dart';
import 'package:carrerk/features/company/logic/company_jobs_delete_post_cubit.dart';
import 'package:carrerk/features/company/sign_up/data/repo/company_sign_up_repo.dart';
import 'package:carrerk/features/company/sign_up/logic/company_sign_up_cubit.dart';
import 'package:carrerk/features/developer/data/repo/developer_single_job_bookmark_repo.dart';
import 'package:carrerk/features/developer/logic/developer_single_job_bookmark_logic/developer_single_job_bookmark_cubit.dart';
import 'package:carrerk/features/developer/ui/courses/main_page/data/repo/developer_courses_main_page_roadmaps_repo.dart';
import 'package:carrerk/features/developer/ui/courses/specific_category/data/repo/developer_courses_specific_category_repo.dart';
import 'package:carrerk/features/developer/ui/courses/specific_category/logic/developer_courses_specific_category_cubit.dart';
import 'package:carrerk/features/developer/ui/jobs/job_details/data/repo/developer_jobs_job_details_repo.dart';
import 'package:carrerk/features/developer/ui/jobs/job_details/logic/developer_jobs_job_details_cubit.dart';
import 'package:carrerk/features/developer/ui/jobs/search/data/repo/developer_jobs_recently_posted_repo.dart';
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
import '../../features/chats/all_chats/data/repo/chats_all_chats_repo.dart';
import '../../features/chats/all_chats/logic/chats_all_chats_cubit.dart';
import '../../features/chats/person_chat/data/repo/send_messages_repo.dart';
import '../../features/chats/person_chat/data/repo/start_chat_room_repo.dart';
import '../../features/chats/person_chat/logic/send_messages/send_messages_cubit.dart';
import '../../features/chats/person_chat/logic/start_chat/start_chat_room_cubit.dart';
import '../../features/company/jobs_post/data/repos/company_jobs_post_repo.dart';
import '../../features/company/jobs_post/logic/company_jobs_post_cubit.dart';
import '../../features/customer/sign_up/data/repo/customer_sign_up_repo.dart';
import '../../features/customer/sign_up/logic/customer_sign_up_cubit.dart';
import '../../features/developer/data/repo/developer_courses_and_jobs_main_page_profile_repo.dart';
import '../../features/developer/logic/developer_courses_and_jobs_main_page_profile_logic/developer_courses_and_jobs_main_page_profile_cubit.dart';
import '../../features/developer/ui/courses/main_page/logic/developer_courses_main_page_roadmaps_cubit.dart';
import '../../features/developer/ui/courses/roadmaps/data/repo/developer_courses_roadmaps_repo.dart';
import '../../features/developer/ui/courses/roadmaps/logic/developer_courses_roadmaps_cubit.dart';
import '../../features/developer/ui/jobs/apply/data/repo/developer_jobs_apply_repo.dart';
import '../../features/developer/ui/jobs/apply/logic/developer_jobs_apply_cubit.dart';
import '../../features/developer/ui/jobs/search/logic/developer_jobs_recently_posted_logic/developer_jobs_recently_posted_cubit.dart';
import '../../features/developer/ui/sign_up/data/repos/developer_sign_up_repo.dart';
import '../../features/developer/ui/sign_up/logic/developer_sign_up_cubit.dart';
import '../../features/search/data/repo/search_courses_repo.dart';
import '../../features/search/logic/search_courses_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';
import '../networking/socket_service.dart';

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
  // -> Jobs
  // Apply
  getIt.registerLazySingleton<DeveloperJobsApplyRepo>(
    () => DeveloperJobsApplyRepo(getIt<Dio>()),
  );
  getIt.registerFactory<DeveloperJobsApplyCubit>(
    () => DeveloperJobsApplyCubit(getIt<DeveloperJobsApplyRepo>()),
  );
  // Job Details
  getIt.registerLazySingleton<DeveloperJobsJobDetailsRepo>(
    () => DeveloperJobsJobDetailsRepo(getIt()),
  );
  getIt.registerFactory<DeveloperJobsJobDetailsCubit>(
    () => DeveloperJobsJobDetailsCubit(getIt()),
  );
  // Single Job
  getIt.registerLazySingleton<DeveloperSingleJobBookmarkRepo>(
    () => DeveloperSingleJobBookmarkRepo(getIt()),
  );
  getIt.registerFactory<DeveloperSingleJobBookmarkCubit>(
    () => DeveloperSingleJobBookmarkCubit(getIt()),
  );
  // Jobs Recently Posted
  getIt.registerLazySingleton<DeveloperJobsRecentlyPostedRepo>(
    () => DeveloperJobsRecentlyPostedRepo(getIt()),
  );
  getIt.registerFactory<DeveloperJobsRecentlyPostedCubit>(
    () => DeveloperJobsRecentlyPostedCubit(getIt()),
  );
  // -> Courses Main Page
  // -> Profile
  getIt.registerLazySingleton<DeveloperCoursesAndJobsMainPageProfileRepo>(
    () => DeveloperCoursesAndJobsMainPageProfileRepo(getIt()),
  );
  getIt.registerFactory<DeveloperCoursesAndJobsMainPageProfileCubit>(
    () => DeveloperCoursesAndJobsMainPageProfileCubit(getIt()),
  );
  //-> Roadmaps
  getIt.registerLazySingleton<DeveloperCoursesMainPageRoadmapsRepo>(
    () => DeveloperCoursesMainPageRoadmapsRepo(getIt()),
  );
  getIt.registerFactory<DeveloperCoursesMainPageRoadmapsCubit>(
    () => DeveloperCoursesMainPageRoadmapsCubit(getIt()),
  );
  //-> Courses Roadmaps
  getIt.registerLazySingleton<DeveloperCoursesRoadmapsRepo>(
    () => DeveloperCoursesRoadmapsRepo(getIt()),
  );
  getIt.registerFactory<DeveloperCoursesRoadmapsCubit>(
    () => DeveloperCoursesRoadmapsCubit(getIt()),
  );
  //-> Specific Category
  getIt.registerLazySingleton<DeveloperCoursesSpecificCategoryRepo>(
    () => DeveloperCoursesSpecificCategoryRepo(getIt()),
  );
  getIt.registerFactory<DeveloperCoursesSpecificCategoryCubit>(
    () => DeveloperCoursesSpecificCategoryCubit(getIt()),
  );
  // Company
  // company -> Signup
  getIt.registerLazySingleton<CompanySignupRepo>(
    () => CompanySignupRepo(getIt<Dio>()),
  );
  getIt.registerFactory<CompanySignupCubit>(
    () => CompanySignupCubit(getIt<CompanySignupRepo>()),
  );
  // -> Jobs Post
  getIt.registerLazySingleton<CompanyJobsPostRepo>(
      () => CompanyJobsPostRepo(getIt()));
  getIt.registerLazySingleton<CompanyJobsPostCubit>(
      () => CompanyJobsPostCubit(getIt()));
  // -> Delete Job
  getIt.registerLazySingleton<CompanyJobsDeletePostRepo>(
      () => CompanyJobsDeletePostRepo(getIt()));
  getIt.registerLazySingleton<CompanyJobsDeletePostCubit>(
      () => CompanyJobsDeletePostCubit(getIt()));
  // Search
  getIt.registerLazySingleton<SearchCoursesRepo>(
    () => SearchCoursesRepo(getIt()),
  );
  getIt.registerFactory<SearchCoursesCubit>(
    () => SearchCoursesCubit(getIt()),
  );
  // Chats
  //-> All Chats
  getIt.registerLazySingleton<ChatsAllChatsRepo>(
    () => ChatsAllChatsRepo(getIt()),
  );
  getIt.registerFactory<ChatsAllChatsCubit>(
    () => ChatsAllChatsCubit(getIt()),
  );
  //-> Start Chat Room
  getIt.registerLazySingleton<StartChatRoomRepo>(
    () => StartChatRoomRepo(getIt()),
  );
  getIt.registerFactory<StartChatRoomCubit>(
    () => StartChatRoomCubit(getIt()),
  );
  //-> Get Chat Messages
  getIt.registerLazySingleton<GetChatMessagesRepo>(
    () => GetChatMessagesRepo(getIt()),
  );
  getIt.registerFactory<GetChatMessagesCubit>(
    () => GetChatMessagesCubit(getIt()),
  );
  //-> Send Message
  getIt.registerLazySingleton<SendMessagesRepo>(
      () => SendMessagesRepo(getIt<Dio>()));
  getIt.registerFactory<SendMessagesCubit>(
      () => SendMessagesCubit(getIt<SendMessagesRepo>()));
  //-> Socket
  getIt.registerLazySingleton<SocketService>(() => SocketService());

  // Customer
  // Customer -> Signup
  getIt.registerLazySingleton<CustomerSignupRepo>(
    () => CustomerSignupRepo(getIt<Dio>()),
  );
  getIt.registerFactory<CustomerSignupCubit>(
    () => CustomerSignupCubit(getIt<CustomerSignupRepo>()),
  );
}
