import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../../../core/helpers/app_regex.dart';
import '../../../../../../../../../core/networking/api_constants.dart';
import '../../../data/models/developer_courses_completed_response_body.dart';

class CompletedCourses extends StatelessWidget {
  final List<DeveloperCoursesCompletedResponseBody> courses;

  const CompletedCourses({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    if (courses.isEmpty) {
      return Center(
        child: Text(
          "No completed courses yet",
          style: AppTextStyles.font16DunePoppinsMedium,
        ),
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        final course = courses[index];
        return Card(
          margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 24.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
            side: const BorderSide(
              color: ColorsManager.softPeach,
              width: 1,
            ),
          ),
          color: Colors.white,
          elevation: 0,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
                child: AppRegex.isSvg(course.imageUrl)
                    ? SvgPicture.network(
                        "${ApiConstants.apiBaseUrl}${AppRegex.cutBaseUrl(course.imageUrl)}",
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 134.h,
                        placeholderBuilder: (context) => Shimmer.fromColors(
                          baseColor: ColorsManager.ghostWhite,
                          highlightColor: ColorsManager.mercury,
                          child: SizedBox(
                            width: double.infinity,
                            height: 134.h,
                          ),
                        ),
                      )
                    : Image.network(
                        "${ApiConstants.apiBaseUrl}${AppRegex.cutBaseUrl(course.imageUrl)}",
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 134.h,
                        errorBuilder: (context, error, stackTrace) =>
                            Shimmer.fromColors(
                          baseColor: ColorsManager.ghostWhite,
                          highlightColor: ColorsManager.mercury,
                          child: SizedBox(
                            width: double.infinity,
                            height: 134.h,
                          ),
                        ),
                      ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(16.w, 16.h, 8.w, 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            course.name,
                            style: AppTextStyles
                                .font16PrimaryWildBlueYonderPoppinsMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0.w),
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsManager.cloverGreen,
                            ),
                            child: SvgPicture.asset(
                              'assets/svgs/completed.svg',
                              height: 35.h,
                              width: 35.w,
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      course.description ?? '',
                      style: AppTextStyles.font14LiverPoppinsMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpace(8),
                    Row(
                      children: [
                        Text(
                          'Difficulty: ${course.difficulty ?? "Not Specified"}',
                          style:
                              AppTextStyles.font12IronSideGreyPoppinsSemiBold,
                        ),
                        horizontalSpace(16),
                        Text(
                          'Lessons: ${course.totalCount}',
                          style:
                              AppTextStyles.font12IronSideGreyPoppinsSemiBold,
                        ),
                      ],
                    ),
                    verticalSpace(14),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed(
                          Routes.developerCoursesSpecificCourseScreen,
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 24.w),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('View Course',
                              style: AppTextStyles
                                  .font12BlueBerryPoppinsSemiBoldUnderlined),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
