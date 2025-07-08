import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ProfileImageNameAndLocation extends StatelessWidget {
  final String? profileImage;
  final String? companyName;
  final String? city;

  const ProfileImageNameAndLocation({
    super.key,
    this.profileImage,
    this.companyName,
    this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(64.r),
            child: Image.network(
              profileImage ?? '',
              width: 104.w,
              height: 104.h,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return shimmerImagePlaceholder();
              },
              errorBuilder: (context, error, stackTrace) {
                return Image.asset(
                  'assets/images/company_logo.png',
                  width: 104.w,
                  height: 104.h,
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ),
        verticalSpace(34),
        Text(
          companyName ?? 'Unknown Name',
          style: AppTextStyles.font16BlackPoppinsSemiBold,
        ),
        verticalSpace(8),
        Text(
          city ?? 'Unknown Location',
          style: AppTextStyles.font14GranitePoppinsMedium,
        ),
      ],
    );
  }

  Widget shimmerImagePlaceholder() {
    return Shimmer.fromColors(
      baseColor: ColorsManager.pastelGrey.withValues(alpha: (0.5 * 255)),
      highlightColor:
          ColorsManager.silverChalice.withValues(alpha: (0.3 * 255)),
      child: Container(
        width: 104.w,
        height: 104.h,
        color: ColorsManager.pastelGrey,
      ),
    );
  }
}
