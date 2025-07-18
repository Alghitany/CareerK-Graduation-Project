import 'package:carrerk/core/helpers/app_regex.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/networking/api_constants.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CourseCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final int totalLessons;
  final String duration;
  final void Function()? onTap;

  const CourseCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.totalLessons,
    required this.duration,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: AppRegex.isSvg(imagePath)
                  ? SvgPicture.network(
                      "${ApiConstants.apiBaseUrl}${AppRegex.cutBaseUrl(imagePath)}",
                      height: 120.h,
                      width: double.infinity,
                      fit: BoxFit.fill,
                      placeholderBuilder: (context) => Image.asset(
                        'assets/images/html_course.png',
                        height: 120.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      errorBuilder: (context, error, stackTrace) => Image.asset(
                        'assets/images/html_course.png',
                        height: 120.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Image.network(
                      "${ApiConstants.apiBaseUrl}${AppRegex.cutBaseUrl(imagePath)}",
                      height: 120.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Image.asset(
                        'assets/images/html_course.png',
                        height: 120.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Image.asset(
                          'assets/images/html_course.png',
                          height: 120.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8.0.w, 8.0.h, 8.0.w, 0.0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: AppTextStyles.font11RangoonGreenPoppinsMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      horizontalSpace(4),
                      Text(
                        '($totalLessons Lessons)',
                        style: AppTextStyles.font11SilverChalicePoppinsMedium,
                      ),
                    ],
                  ),
                  verticalSpace(4),
                  Row(
                    children: [
                      Icon(Icons.timer,
                          size: 14.sp, color: ColorsManager.liver),
                      horizontalSpace(4),
                      Text(
                        duration,
                        style: AppTextStyles.font12LiverPoppinsRegular,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
