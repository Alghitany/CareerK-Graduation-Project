import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../data/models/profile_skills_models/developer_profile_main_page_skills_response_body.dart';

class SkillsProgress extends StatelessWidget {
  final List<DeveloperSkill>? skills;

  const SkillsProgress({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    if (skills == null || skills!.isEmpty) {
      return const Text("No skills found.");
    }

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
          itemCount: skills!.length,
          itemBuilder: (context, index) {
            final skill = skills![index];
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
                    percent: (skill.progressPercentage ?? 0) / 100,
                    center: Text(
                      "${skill.progressPercentage ?? 0}%",
                      style: AppTextStyles.font14DunePoppinsMedium,
                    ),
                    progressColor: _getSkillColor(index),
                    backgroundColor: Colors.grey.shade300,
                    circularStrokeCap: CircularStrokeCap.round,
                  ),
                  verticalSpace(16),
                  Text(
                    skill.skillName ?? "Unknown",
                    textAlign: TextAlign.center,
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

  Color _getSkillColor(int index) {
    // You can customize this or map based on skill names
    final colors = [
      Colors.orange,
      Colors.green,
      Colors.blue,
      Colors.red,
      Colors.purple,
      Colors.teal,
      Colors.brown,
      Colors.cyan,
      Colors.indigo,
    ];
    return colors[index % colors.length];
  }
}
