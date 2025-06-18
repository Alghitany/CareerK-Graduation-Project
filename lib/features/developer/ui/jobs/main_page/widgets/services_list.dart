import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../core/routing/routes.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/styles.dart';



class ServicesList extends StatelessWidget {
  const ServicesList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> services = [
      {
        'title': 'UX/UI designer',
        'subTitle': '590 Freelancers available',
      },
      {
        'title': 'UX/UI designer',
        'subTitle': '590 Freelancers available',
      },
      {
        'title': 'UX/UI designer',
        'subTitle': '590 Freelancers available',
      },
    ];
    return SizedBox(
      height: 165.h,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: services.length,
        itemBuilder: (context, index) {
          final service = services[index];
          return GestureDetector(
            onTap: () {
              //TODO: Pass the job details to screen
              context.pushNamed(Routes.developerJobsSearchScreen);
            },
            child: Container(
              padding: EdgeInsets.all(16.h),
              margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 8.h),
              height: 76.h,
              decoration: BoxDecoration(
                  color: ColorsManager.porcelain,
                  border: const Border(
                      left: BorderSide(color: ColorsManager.duskyBlue)),
                  borderRadius: BorderRadius.circular(12.r)),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(service['title'],
                          style: AppTextStyles.font16DunePoppinsSemiBold),
                      verticalSpace(4),
                      Text(
                        service['subTitle'],
                        style: AppTextStyles.font10GranitePoppinsMedium,
                      ),
                    ],
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    'assets/svgs/keyboard_arrow_right.svg',
                    colorFilter: const ColorFilter.mode(
                        ColorsManager.duskyBlue, BlendMode.srcIn),
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
