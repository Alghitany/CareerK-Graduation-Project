import 'package:timeago/timeago.dart' as timeago;

String formatTime(String? isoTime) {
  if (isoTime == null) return 'Now';
  final dateTime = DateTime.tryParse(isoTime);
  if (dateTime == null) return 'Unknown';
  return timeago.format(dateTime, allowFromNow: true);
}
