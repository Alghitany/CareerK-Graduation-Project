import '../helpers/enums.dart';

class AppArgument {
  final String? jobId;
  final String? applicationId;
  final String? query;
  final SearchType? searchType;
  final String? trackId;
  final String? chatRoomId;
  final bool? isExisting;
  final String? fileUrl;

  AppArgument({
    this.applicationId,
    this.jobId,
    this.query,
    this.searchType,
    this.trackId,
    this.chatRoomId,
    this.isExisting,
    this.fileUrl,
  });
}
