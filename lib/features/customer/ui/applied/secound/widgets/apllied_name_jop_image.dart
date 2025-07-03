import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AplliedNameJopImage extends StatelessWidget {
  const AplliedNameJopImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30.r,
          backgroundImage: const AssetImage('assets/images/company_logo.png'),
        ),
        horizontalSpace(12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mahmoud Ali',
                style: AppTextStyles.font16BlackPoppinsSemiBold),
            verticalSpace(4),
            Text('Senior UI/UX Designer',
                style: AppTextStyles.font14GranitePoppinsRegular),
          ],
        )
      ],
    );
  }
}
