import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllCategoriesJob extends StatelessWidget {
  const AllCategoriesJob({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> categories = [
      {
        'job': 'UI/UX Designer',
        'location': 'Mansoura, Tanta, 18 more',
        'positionNumbers': 20,
      },
      {
        'job': 'UI/UX Designer',
        'location': 'Mansoura, Tanta, 18 more',
        'positionNumbers': 20,
      },
      {
        'job': 'UI/UX Designer',
        'location': 'Mansoura, Tanta, 18 more',
        'positionNumbers': 20,
      },
      {
        'job': 'UI/UX Designer',
        'location': 'Mansoura, Tanta, 18 more',
        'positionNumbers': 20,
      },
      {
        'job': 'UI/UX Designer',
        'location': 'Mansoura, Tanta, 18 more',
        'positionNumbers': 20,
      },
      {
        'job': 'UI/UX Designer',
        'location': 'Mansoura, Tanta, 18 more',
        'positionNumbers': 20,
      },
      {
        'job': 'UI/UX Designer',
        'location': 'Mansoura, Tanta, 18 more',
        'positionNumbers': 20,
      },
    ];
    return Expanded(
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              //TODO:Should filter according to category and add the filter to search in navigated screen
              context.pushNamed(Routes.developerJobsSearchScreen);
            },
            child: Card(
              margin: EdgeInsets.only(bottom: 16.h),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  side: const BorderSide(
                      color: ColorsManager.aquaHaze, width: 1)),
              color: Colors.white,
              elevation: 2,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.w, 20.h, 0.w, 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category['job'],
                      style: AppTextStyles.font12BlackPoppinsSemiBold,
                    ),
                    verticalSpace(4),
                    Text(
                      category['location'],
                      style: AppTextStyles.font12BlackPoppinsLight,
                    ),
                    verticalSpace(8),
                    Row(
                      children: [
                        Text(
                          '${category['positionNumbers']}',
                          style: AppTextStyles.font14DuskyBluePoppinsSemiBold,
                        ),
                        Text(
                          ' Positions',
                          style:
                              AppTextStyles.font14RangoonGreenPoppinsSemiBold,
                        ),
                      ],
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
