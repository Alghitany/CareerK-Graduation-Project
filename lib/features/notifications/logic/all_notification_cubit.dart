// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../data/repo/all_notifications_repo.dart';
// import 'all_notification_state.dart';

// class AllNotificationCubit extends Cubit<AllNotificationState> {
//   final AllNotificationsRepo _repo;

//   AllNotificationCubit(this._repo)
//       : super(const AllNotificationState.initial());

//   void getAllNotifications() async {
//     emit(const AllNotificationState.loading());
//     final response = await _repo.getAllNotifications();

//     response.when(
//       success: (notifications) {
//         emit(AllNotificationState.success(notifications));
//       },
//       failure: (errorHandler) {
//         emit(AllNotificationState.error(errorHandler));
//       },
//     );
//   }
// }
