import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class OngoingCourses extends StatelessWidget {
  const OngoingCourses({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> courses = [
      {
        'title': 'React JS',
        'description':
            'Mansoura, Tanta, 18 moreLorem ipsum dolor sit amet consectetur. In elementum tincidunt platea tristique enim. Fermentum arcu nec porta bibendum tortor.',
        'time': '4 hours left',
        'percent': 40,
      },
      {
        'title': 'React JS',
        'description':
            'Mansoura, Tanta, 18 moreLorem ipsum dolor sit amet consectetur. In elementum tincidunt platea tristique enim. Fermentum arcu nec porta bibendum tortor.',
        'time': '4 hours left',
        'percent': 40,
      },
      {
        'title': 'React JS',
        'description':
            'Mansoura, Tanta, 18 moreLorem ipsum dolor sit amet consectetur. In elementum tincidunt platea tristique enim. Fermentum arcu nec porta bibendum tortor.',
        'time': '4 hours left',
        'percent': 40,
      },
      {
        'title': 'React JS',
        'description':
            'Mansoura, Tanta, 18 moreLorem ipsum dolor sit amet consectetur. In elementum tincidunt platea tristique enim. Fermentum arcu nec porta bibendum tortor.',
        'time': '4 hours left',
        'percent': 40,
      },
    ];
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: courses.length,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
      itemBuilder: (context, index) {
        final course = courses[index];
        return Container(
          margin: EdgeInsets.only(bottom: 16.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17.r),
            border: Border.all(
              color: ColorsManager.softPeach,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 12,
                spreadRadius: 0,
                offset: const Offset(0, 3),
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            course['title'],
                            style: AppTextStyles.font16BlackPoppinsRegular,
                          ),
                          verticalSpace(4),
                          Text(
                            course['description'],
                            style:
                                AppTextStyles.font12RangoonGreenPoppinsRegular,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                          verticalSpace(8),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svgs/clock.svg',
                                height: 14.h,
                                width: 14.w,
                                colorFilter: const ColorFilter.mode(
                                    ColorsManager.dune, BlendMode.srcIn),
                              ),
                              horizontalSpace(4),
                              Text(
                                course['time'],
                                style: AppTextStyles.font12DunePoppinsRegular,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    horizontalSpace(12),
                    CircularPercentIndicator(
                      radius: 30.0.r,
                      lineWidth: 5.0.w,
                      percent: course['percent'] / 100,
                      center: Text(
                        "${course['percent']}%",
                        style: AppTextStyles.font16BlackPoppinsRegular,
                      ),
                      progressColor: ColorsManager.cloverGreen,
                    )
                  ],
                ),
              ),
              verticalSpace(4),
              const Divider(
                color: ColorsManager.softPeach,
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      //TODO: Should work after reviewing database
                      //context.pushNamed(Routes.developerCoursesCourseDetailsScreen);
                    },
                    child: Text(
                      'Start Learning',
                      style: AppTextStyles.font14DuskyBluePoppinsMedium,
                    )),
              ),
            ],
          ),
        );
      },
    );
  }
}
