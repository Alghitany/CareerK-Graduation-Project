import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../../core/theming/colors.dart';

class CourseOverviewTab extends StatelessWidget {
  final VoidCallback onStartLearning;

  const CourseOverviewTab({super.key, required this.onStartLearning});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'assets/svgs/clock.svg',
                height: 28.h,
                width: 28.w,
                colorFilter: const ColorFilter.mode(
                  ColorsManager.liver,
                  BlendMode.srcIn,
                ),
              ),
              horizontalSpace(8),
              Text(
                '6 Hours',
                style: AppTextStyles.font16LiverPoppinsRegular,
              )
            ],
          ),
          verticalSpace(16),
          Row(
            children: [
              SvgPicture.asset(
                'assets/svgs/certificate.svg',
                height: 28.h,
                width: 28.w,
                colorFilter: const ColorFilter.mode(
                  ColorsManager.liver,
                  BlendMode.srcIn,
                ),
              ),
              horizontalSpace(8),
              Text(
                'Completion Certificate',
                style: AppTextStyles.font16LiverPoppinsRegular,
              )
            ],
          ),
          verticalSpace(16),
          Row(
            children: [
              SvgPicture.asset(
                'assets/svgs/level.svg',
                height: 28.h,
                width: 28.w,
                colorFilter: const ColorFilter.mode(
                  ColorsManager.liver,
                  BlendMode.srcIn,
                ),
              ),
              horizontalSpace(8),
              Text(
                'Beginner',
                style: AppTextStyles.font16LiverPoppinsRegular,
              )
            ],
          ),
          verticalSpace(16),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Description',
              style: AppTextStyles.font20DunePoppinsSemiBold,
            ),
          ),
          verticalSpace(8),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Lorem ipsum dolor sit amet consectetur. Senectus condimentum semper aliquet id quam suspendisse. Iaculis tincidunt hac aliquet tincidunt facilisis sed.',
              style: AppTextStyles.font14BlackPoppinsRegular,
            ),
          ),
          verticalSpace(16),
          Align(
            alignment: Alignment.bottomCenter,
            child: AppTextButton(
                buttonText: "Start Learning",
                textStyle: AppTextStyles.font14WhitePoppinsMedium,
                onPressed: onStartLearning),
          )
        ],
      ),
    );
  }
}
