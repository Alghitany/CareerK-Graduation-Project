import '../helpers/enums.dart';

class AppArgument {
  final String? jobId;
  final String? query;
  final SearchType? searchType;

  AppArgument({
    this.jobId,
    this.query,
    this.searchType,
  });
}