import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../core/routing/routes.dart';


class RelatedJobsList extends StatelessWidget {
  const RelatedJobsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> jobs = [
      {
        'imagePath': 'assets/images/recommended_job.png',
        'companyName': 'Highspeed Studios',
        'title': 'Backend Engineer',
        'salary': '\$500 - \$1,000',
        'location': 'Cairo, Egypt',
      },
      {
        'imagePath': 'assets/images/recommended_job.png',
        'companyName': 'Highspeed Studios',
        'title': 'Backend Engineer',
        'salary': '\$500 - \$1,000',
        'location': 'Cairo, Egypt',
      },
      {
        'imagePath': 'assets/images/recommended_job.png',
        'companyName': 'Highspeed Studios',
        'title': 'Backend Engineer',
        'salary': '\$500 - \$1,000',
        'location': 'Cairo, Egypt',
      },
      {
        'imagePath': 'assets/images/recommended_job.png',
        'companyName': 'Highspeed Studios',
        'title': 'Backend Engineer',
        'salary': '\$500 - \$1,000',
        'location': 'Cairo, Egypt',
      },
    ];
    return SizedBox(
      height: 400.h,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          final job = jobs[index];
          return GestureDetector(
            onTap: () {
              //TODO: Pass the job details to screen
              context.pushNamed(Routes.developerJobsJobDetailsScreen);
            },
            child: SizedBox(
              width: double.infinity,
              height: 154.h,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorsManager.porcelain,
                    width: 1.w,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(28.w, 20.h, 0.w, 0.h),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0.w, 0.h, 8.w, 0.h),
                            width: 88.w,
                            height: 88.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Image.asset(
                              job['imagePath'],
                              height: 55.h,
                              width: 55.w,
                            ),
                          ),
                          horizontalSpace(18),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                job['companyName'],
                                style: AppTextStyles.font12BlackPoppinsRegular,
                              ),
                              verticalSpace(4),
                              Text(
                                job['title'],
                                style: AppTextStyles.font12BlackPoppinsSemiBold,
                              ),
                              verticalSpace(12),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/svgs/coin.svg',
                                    height: 22.h,
                                    width: 20.w,
                                    colorFilter: const ColorFilter.mode(
                                        ColorsManager.duskyBlue,
                                        BlendMode.srcIn),
                                  ),
                                  horizontalSpace(15),
                                  Text(
                                    '${job['salary']}',
                                    style:
                                        AppTextStyles.font14DunePoppinsMedium,
                                  ),
                                ],
                              ),
                              verticalSpace(6),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/svgs/location_pin_filled.svg',
                                    height: 20.5.h,
                                    width: 16.5.w,
                                    colorFilter: const ColorFilter.mode(
                                        ColorsManager.duskyBlue,
                                        BlendMode.srcIn),
                                  ),
                                  horizontalSpace(15),
                                  Text(
                                    job['location'],
                                    style:
                                        AppTextStyles.font14DunePoppinsMedium,
                                  ),
                                ],
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
