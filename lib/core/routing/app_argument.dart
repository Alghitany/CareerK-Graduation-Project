import '../helpers/enums.dart';

class AppArgument {
  final String? jobId;
  final String? query;
  final SearchType? searchType;
  final String? trackId;
  final String? chatRoomId;
  final bool? isExisting;
  final String? fileUrl;
  final String? courseId;


  AppArgument({
    this.jobId,
    this.query,
    this.searchType,
    this.trackId,
    this.chatRoomId,
    this.isExisting,
    this.fileUrl,
    this.courseId,
  });
}
