import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/networking/api_constants.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../core/helpers/app_regex.dart';
import '../../../../../../../../core/helpers/spacing.dart';
import '../../../data/models/main_page_related_courses/developer_courses_main_page_related_courses_response_body.dart';

class RelatedCoursesList extends StatelessWidget {
  final List<DeveloperCoursesMainPageRelatedCoursesResponseBody> courses;

  const RelatedCoursesList({
    super.key,
    required this.courses,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: courses.length,
        separatorBuilder: (context, index) => horizontalSpace(14),
        itemBuilder: (context, index) {
          final course = courses[index];
          return GestureDetector(
            onTap: () {
              context.pushNamed(Routes.developerCoursesSpecificCategoryScreen);
            },
            child: Card(
              elevation: 2,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: SizedBox(
                width: 230.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.r),
                            topRight: Radius.circular(10.r),
                          ),
                          child: AppRegex.isSvg(course.imageUrl)
                              ? SvgPicture.network(
                            "${ApiConstants.apiBaseUrl}${AppRegex.cutBaseUrl(course.imageUrl)}",
                            width: double.infinity,
                            height: 120.h,
                            fit: BoxFit.cover,
                            placeholderBuilder: (_) => Container(
                              width: double.infinity,
                              height: 120.h,
                              color: ColorsManager.mercury,
                              child: const Icon(Icons.broken_image),
                            ),
                          )
                              : Image.network(
                            "${ApiConstants.apiBaseUrl}${AppRegex.cutBaseUrl(course.imageUrl)}",
                            width: double.infinity,
                            height: 120.h,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) => Container(
                              width: double.infinity,
                              height: 120.h,
                              color: ColorsManager.mercury,
                              child: const Icon(Icons.broken_image),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8.w, 2.h, 8.w, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  course.name,
                                  style: AppTextStyles.font14DunePoppinsRegular,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                              horizontalSpace(8),
                              Text(
                                "(${course.totalLessons} lessons)",
                                style: AppTextStyles
                                    .font12SilverChalicePoppinsMedium,
                              ),
                            ],
                          ),
                          verticalSpace(4),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.w, vertical: 4.h),
                                decoration: BoxDecoration(
                                  color: ColorsManager.softPeach,
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Text(
                                  course.duration,
                                  style: AppTextStyles
                                      .font12WaikawaGreyPoppinsRegular,
                                ),
                              ),
                              horizontalSpace(72),
                              Text(
                                (course.rating ?? 0.0).toString(),
                                style: AppTextStyles.font12DunePoppinsRegular,
                              ),
                              horizontalSpace(4),
                              SvgPicture.asset(
                                'assets/svgs/star.svg',
                                height: 16.h,
                                width: 16.w,
                                colorFilter: const ColorFilter.mode(
                                  ColorsManager.schoolBusYellow,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
