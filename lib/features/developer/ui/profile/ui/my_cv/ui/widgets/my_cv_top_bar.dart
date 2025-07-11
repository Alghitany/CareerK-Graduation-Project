import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/features/developer/ui/profile/ui/my_cv/data/models/developer_profile_settings_delete_cv/developer_profile_settings_delete_cv_request_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/theming/styles.dart';
import '../../logic/developer_profile_settings_delete_cv_logic/developer_profile_settings_delete_cv_cubit.dart';

class MyCVTopBar extends StatelessWidget {
  final VoidCallback onSwapPressed;
  final bool isUploadedCV;
  final DeveloperProfileSettingsDeleteCVCubit deleteCvCubit;

  const MyCVTopBar({
    super.key,
    required this.onSwapPressed,
    required this.isUploadedCV,
    required this.deleteCvCubit,
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
            isUploadedCV ? 'Uploaded CV' : 'Generated CV',
            style: AppTextStyles.font24RangoonGreenPoppinsMedium,
          ),
          const Spacer(),
          IconButton(
            onPressed: onSwapPressed,
            icon: const Icon(Icons.swap_horiz),
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
                deleteCvCubit.deleteCV(
                    DeveloperProfileSettingsDeleteCVRequestBody(
                        type: "uploaded"));
              },
              child: const Text('Delete Uploaded CV'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                deleteCvCubit.deleteCV(
                    DeveloperProfileSettingsDeleteCVRequestBody(
                        type: "generated"));
              },
              child: const Text('Delete Generated CV'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                deleteCvCubit.deleteCV(
                    DeveloperProfileSettingsDeleteCVRequestBody(type: "both"));
              },
              child: const Text('Delete Both CVs'),
            ),
          ],
        );
      },
    );
  }
}
