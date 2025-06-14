import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/styles.dart';

class NameTitleAndImage extends StatelessWidget {
  const NameTitleAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Client Name',
              style: AppTextStyles.font20RangoonGreenPoppinsSemiBold,
            ),
            verticalSpace(12),
            Text(
              'UI/UX Designer.',
              style: AppTextStyles.font14LiverPoppinsMedium,
            ),
          ],
        ),
        const Spacer(),
        Container(
          width: 64.w,
          height: 64.h,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(
                      'assets/images/company_home_developer_logo.png'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(16.r)),
        )
      ],
    );
  }
}
