import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SkillsProgress extends StatelessWidget {
  const SkillsProgress({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> skills = [
      {"color": Colors.orange, "percent": 86, "name": "HTML"},
      {"color": Colors.green, "percent": 48, "name": "React"},
      {"color": Colors.blue, "percent": 56, "name": "Java"},
      {"color": Colors.red, "percent": 75, "name": "Flutter"},
      {"color": Colors.purple, "percent": 65, "name": "Kotlin"},
      {"color": Colors.teal, "percent": 80, "name": "Dart"},
    ];
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Skills",
            style: AppTextStyles.font20BlackPoppinsSemiBold,
          ),
        ),
        verticalSpace(18),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.w,
            childAspectRatio: 90 / 115,
          ),
          itemCount: skills.length,
          itemBuilder: (context, index) {
            final skill = skills[index];
            return Container(
              width: 93.w,
              height: 138.h,
              decoration: BoxDecoration(
                color: ColorsManager.softPeach,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularPercentIndicator(
                    radius: 30,
                    lineWidth: 8,
                    percent: skill['percent'] / 100,
                    center: Text(
                      "${skill['percent'].toInt()}%",
                      style: AppTextStyles.font14DunePoppinsMedium,
                    ),
                    progressColor: skill['color'],
                    backgroundColor: Colors.grey.shade300,
                    circularStrokeCap: CircularStrokeCap.round,
                  ),
                  verticalSpace(16),
                  Text(
                    skill['name'],
                    style: AppTextStyles.font16BlackPoppinsMedium,
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
