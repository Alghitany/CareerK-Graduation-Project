import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReceiveMessage extends StatelessWidget {
  final String messageText;
  final DateTime time;
  final bool isSender;
  final String senderName;

  const ReceiveMessage({
    super.key,
    required this.messageText,
    required this.time,
    required this.isSender,
    required this.senderName,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4.h),
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: isSender ? Colors.blueAccent : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          crossAxisAlignment:
          isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            if (!isSender)
              Text(
                senderName,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            Text(
              messageText,
              style: TextStyle(fontSize: 14.sp, color: isSender ? Colors.white : Colors.black),
            ),
            SizedBox(height: 4.h),
            Text(
              "${time.hour}:${time.minute.toString().padLeft(2, '0')}",
              style: TextStyle(fontSize: 10.sp, color: isSender ? Colors.white70 : Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
