import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/routing/app_argument.dart';

class AppliedJobsList extends StatefulWidget {
  const AppliedJobsList({super.key});

  @override
  State<AppliedJobsList> createState() => _AppliedJobsListState();
}

class _AppliedJobsListState extends State<AppliedJobsList> {
  final List<Map<String, dynamic>> jobs = [
    {
      'imagePath': 'assets/images/recommended_job.png',
      'jobTitle': 'Junior Backend Engineer',
      'location': 'London, United Kingdom',
      'salary': '\$500 - \$1,000',
      'isBookmarked': true
    },
    {
      'imagePath': 'assets/images/recommended_job.png',
      'jobTitle': 'Frontend Developer',
      'location': 'Berlin, Germany',
      'salary': '\$700 - \$1,200',
      'isBookmarked': true
    },
    {
      'imagePath': 'assets/images/recommended_job.png',
      'jobTitle': 'Junior Backend Engineer',
      'location': 'London, United Kingdom',
      'salary': '\$500 - \$1,000',
      'isBookmarked': true
    },
    {
      'imagePath': 'assets/images/recommended_job.png',
      'jobTitle': 'Frontend Developer',
      'location': 'Berlin, Germany',
      'salary': '\$700 - \$1,200',
      'isBookmarked': true
    },
    {
      'imagePath': 'assets/images/recommended_job.png',
      'jobTitle': 'Junior Backend Engineer',
      'location': 'London, United Kingdom',
      'salary': '\$500 - \$1,000',
      'isBookmarked': true
    },
    {
      'imagePath': 'assets/images/recommended_job.png',
      'jobTitle': 'Frontend Developer',
      'location': 'Berlin, Germany',
      'salary': '\$700 - \$1,200',
      'isBookmarked': true
    },
    {
      'imagePath': 'assets/images/recommended_job.png',
      'jobTitle': 'Junior Backend Engineer',
      'location': 'London, United Kingdom',
      'salary': '\$500 - \$1,000',
      'isBookmarked': true
    },
    {
      'imagePath': 'assets/images/recommended_job.png',
      'jobTitle': 'Frontend Developer',
      'location': 'Berlin, Germany',
      'salary': '\$700 - \$1,200',
      'isBookmarked': true
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          final job = jobs[index];
          return GestureDetector(
            onTap: () {
              //TODO: Pass the job details to screen
              context.pushNamed(
                  Routes.developerJobsJobDetailsScreen,
                  arguments: AppArgument(
                    jobId: "45779a40-d665-4e45-a122-616a2f6dda4a",
                  )
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8.h),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      job['imagePath'],
                      width: 88.w,
                      height: 88.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  horizontalSpace(32),
                  // Job Details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(job['jobTitle'],
                            style: AppTextStyles.font14BlackPoppinsSemiBold),
                        verticalSpace(4),
                        Text(job['location'],
                            style: AppTextStyles.font12BlackPoppinsLight),
                        verticalSpace(8),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/svgs/coin.svg",
                              width: 20.w,
                              height: 20.h,
                            ),
                            horizontalSpace(6),
                            Text(job['salary'],
                                style: AppTextStyles
                                    .font14DuskyBluePoppinsSemiBold),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
