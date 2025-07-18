import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/widgets/job_bookmark/developer_job_bookmark_bloc_builder.dart';

class BackIconDetailsAndBookmarkIcon extends StatelessWidget {
  final String jobId;
  final bool isCompany;

  const BackIconDetailsAndBookmarkIcon(
      {super.key, required this.jobId, required this.isCompany});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0.w),
      child: Row(
        children: [
          const AppBackIcon(),
          horizontalSpace(16),
          Text(
            'Details',
            style: AppTextStyles.font24RangoonGreenPoppinsSemiBold,
          ),
          const Spacer(),
          isCompany == true
              ? const SizedBox.shrink()
              : DeveloperJobBookmarkBlocBuilder(postId: jobId),
        ],
      ),
    );
  }
}
