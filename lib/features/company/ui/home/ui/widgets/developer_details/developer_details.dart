import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeveloperDetails extends StatelessWidget {
  final String details;

  const DeveloperDetails({
    super.key,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity.w,
      height: 259.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Details",
            style: AppTextStyles.font20BlackPoppinsMedium,
          ),
          verticalSpace(8),
          Text(
            details,
            style: AppTextStyles.font14DunePoppinsRegular,
          ),
        ],
      ),
    );
  }
}
