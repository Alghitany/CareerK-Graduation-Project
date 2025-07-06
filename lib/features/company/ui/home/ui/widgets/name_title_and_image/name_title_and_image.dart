import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/theming/styles.dart';

class NameTitleAndImage extends StatelessWidget {
  final String applicantName;
  final String trackTitle;
  final String profileImageUrl;

  const NameTitleAndImage({
    super.key,
    required this.applicantName,
    required this.trackTitle,
    required this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 64.w,
          height: 64.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Image.network(
              profileImageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Image.asset(
                  'assets/images/company_home_developer_logo.png',
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ),
        horizontalSpace(16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              applicantName,
              style: AppTextStyles.font20RangoonGreenPoppinsSemiBold,
            ),
            verticalSpace(12),
            Text(
              trackTitle,
              style: AppTextStyles.font14LiverPoppinsMedium,
            ),
          ],
        ),
      ],
    );
  }
}
