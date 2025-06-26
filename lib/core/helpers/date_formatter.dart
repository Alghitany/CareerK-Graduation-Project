import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

String formatTime(String? isoTime) {
  if (isoTime == null) return 'Now';
  final dateTime = DateTime.tryParse(isoTime);
  if (dateTime == null) return 'Unknown';
  return timeago.format(dateTime, allowFromNow: true);
}

String formatDateTime(String isoString) {
  final dateTime = DateTime.tryParse(isoString);
  if (dateTime == null) return 'Invalid date';

  final formatter = DateFormat('MMM d, yyyy – hh:mm a');
  return formatter.format(dateTime.toLocal());
}
