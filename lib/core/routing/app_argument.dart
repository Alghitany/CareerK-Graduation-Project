import '../helpers/enums.dart';

class AppArgument {
  final String? jobId;
  final String? serviceId;
  final String? applicationId;
  final String? developerId;
  final String? query;
  final SearchType? searchType;
  final String? courseId;
  final String? trackId;
  final String? chatRoomId;
  final String? sessionId;
  final bool? isExisting;
  final String? fileUrl;
  final bool? isCustomer;


  AppArgument({
    this.isCustomer,
    this.applicationId,
    this.developerId,
    this.jobId,
    this.serviceId,
    this.query,
    this.searchType,
    this.courseId,
    this.trackId,
    this.chatRoomId,
    this.sessionId,
    this.isExisting,
    this.fileUrl,
  });
}
