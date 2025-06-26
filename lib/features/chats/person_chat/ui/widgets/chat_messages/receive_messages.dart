import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../core/helpers/date_formatter.dart';
import '../../../../../../core/networking/api_constants.dart';
import '../../../../../../core/routing/app_argument.dart';
import '../../../../../../core/routing/routes.dart';

class ReceiveMessage extends StatelessWidget {
  final String messageText;
  final DateTime time;
  final bool isSender;
  final String? fileUrl;
  final String? fileType;

  const ReceiveMessage({
    super.key,
    required this.messageText,
    required this.time,
    required this.isSender,
    this.fileUrl,
    this.fileType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 16.h),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isSender) const CircleAvatar(backgroundColor: Colors.redAccent),
          if (!isSender) horizontalSpace(4),
          Container(
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
            decoration: BoxDecoration(
              color: isSender
                  ? ColorsManager.blueJay.withOpacity(0.2)
                  : ColorsManager.mercury,
              borderRadius: BorderRadius.circular(16),
            ),
            width: 224.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (fileUrl != null) ...[
                  GestureDetector(
                    onTap: () async {
                      // Fix potential double slashes in the URL
                      final cleanedPath = fileUrl!.replaceFirst('//', '/');
                      final fullUrl = Uri.parse(cleanedPath.startsWith('http')
                          ? cleanedPath
                          : '${ApiConstants.apiBaseUrl}$cleanedPath');

                      if (fileType == 'pdf') {
                        // Open inside your app using the PDF Viewer route
                        if (context.mounted) {
                          context.pushNamed(
                            Routes.pdfViewerScreen,
                            arguments: AppArgument(fileUrl: fullUrl.toString()),
                          );
                        }
                      } else {
                        // Open using external app (e.g. browser, file viewer)
                        final launched = await launchUrl(
                          fullUrl,
                          mode: LaunchMode.externalApplication,
                        );

                        if (!launched && context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text('No app available to open this file')),
                          );
                        }
                      }
                    },
                    child: fileType == 'image'
                        ? Image.network(
                            fileUrl!,
                            height: 100.h,
                            width: 100.w,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) =>
                                Icon(Icons.broken_image, size: 40.sp),
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return SizedBox(
                                height: 100.h,
                                width: 100.w,
                                child: const Center(
                                    child: CircularProgressIndicator()),
                              );
                            },
                          )
                        : Text(
                            '📎 File: $fileType',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                  ),
                  verticalSpace(8),
                ],
                if (messageText.isNotEmpty)
                  Text(
                    messageText,
                    style: AppTextStyles.font12BlackPoppinsRegular,
                  ),
                verticalSpace(12),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    formatDateTime(time.toString()),
                    style: AppTextStyles.font12BlackPoppinsRegular,
                  ),
                ),
              ],
            ),
          ),
          if (isSender) horizontalSpace(4),
          if (isSender) const CircleAvatar(backgroundColor: Colors.blueAccent),
        ],
      ),
    );
  }
}
