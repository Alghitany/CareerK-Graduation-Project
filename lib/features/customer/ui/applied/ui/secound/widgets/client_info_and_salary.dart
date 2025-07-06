import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClientInfoAndSalary extends StatelessWidget {
  final String name;
  final String? title;
  final String? salaryRange;
  final String? imageUrl;

  const ClientInfoAndSalary({
    super.key,
    required this.name,
    this.title,
    this.salaryRange,
    this.imageUrl,
  });

  @override
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Image.network(
              imageUrl ?? '',
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
        horizontalSpace(12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: AppTextStyles.font16RangoonGreenPoppinsSemiBold),
              verticalSpace(4),
              Text(title ?? '', style: AppTextStyles.font14DunePoppinsRegular),
              verticalSpace(4),
              Text(salaryRange ?? "",
                  style: AppTextStyles.font14DunePoppinsRegular),
            ],
          ),
        ),
      ],
    );
  }
}
