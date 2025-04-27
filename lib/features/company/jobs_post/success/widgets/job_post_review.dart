import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobPostReview extends StatelessWidget {
  const JobPostReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.w, 11.h, 24.w, 3.h),
      width: double.infinity.w,
      height: 75.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: ColorsManager.pastelGrey)),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24.r,
            backgroundImage: const AssetImage('assets/images/company_logo.png'),
          ),
          horizontalSpace(12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Company name',
                  style: AppTextStyles.font10LiverPoppinsRegular),
              verticalSpace(2),
              Text(
                'UI Designer',
                style: AppTextStyles.font16BlackPoppinsMedium,
              ),
              verticalSpace(2),
              Text(
                'Mansoura,Egypt.',
                style: AppTextStyles.font10RangoonGreenPoppinsRegular,
              )
            ],
          ),
          const Spacer(),
          Text(
            'Posted',
            style: AppTextStyles.font10DuskyBluePoppinsMedium,
          )
        ],
      ),
    );
  }
}
