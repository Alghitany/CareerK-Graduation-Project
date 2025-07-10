import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/theming/styles.dart';

class MyCVTopBar extends StatelessWidget {
  final VoidCallback onSwapPressed;
  final bool isUploadedCV;

  const MyCVTopBar({
    super.key,
    required this.onSwapPressed,
    required this.isUploadedCV,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      child: Row(
        children: [
          const AppBackIcon(),
          const Spacer(),
          Text(
            isUploadedCV ? 'Uploaded CV' : 'Generated CV', // Dynamic title
            style: AppTextStyles.font24RangoonGreenPoppinsMedium,
          ),
          const Spacer(),
          IconButton(
            onPressed: onSwapPressed,
            icon: const Icon(Icons.swap_horiz), // Swap icon to toggle CVs
          ),
          IconButton(
            onPressed: () {
              _showDeleteOptionsDialog(context);
            },
            icon: const Icon(Icons.delete_outline),
          ),
        ],
      ),
    );
  }

  void _showDeleteOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          titlePadding: EdgeInsets.only(left: 16.w, top: 16.h, right: 8.w),
          title: Row(
            children: [
              const Expanded(
                child: Text('Delete CV'),
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          content: const Text('Select what you want to delete:'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                // TODO: Delete uploaded CV logic
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Uploaded CV deleted')),
                );
              },
              child: const Text('Delete Uploaded CV'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                // TODO: Delete generated CV logic
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Generated CV deleted')),
                );
              },
              child: const Text('Delete Generated CV'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                // TODO: Delete both CVs logic
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Both CVs deleted')),
                );
              },
              child: const Text('Delete Both CVs'),
            ),
          ],
        );
      },
    );
  }
}
