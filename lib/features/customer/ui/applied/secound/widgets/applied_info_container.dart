import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/customer/ui/applied/secound/widgets/apllied_name_jop_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';

import 'package:carrerk/features/customer/ui/applied/secound/widgets/applied_past_jobs.dart';

class AppliedInfoContainer extends StatelessWidget {
  const AppliedInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AplliedNameJopImage(),
          verticalSpace(16),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Mahmoud Ali ',
                  style: AppTextStyles.font16BlackPoppinsSemiBold,
                ),
                TextSpan(
                  text:
                      'UI/UX Designer with 5 years of experience creating smooth and engaging digital experiences. Skilled at turning ideas into user-friendly interfaces with a strong focus on usability.',
                  style: AppTextStyles.font14GranitePoppinsRegular,
                ),
              ],
            ),
          ),
          verticalSpace(24),
          const AppliedPastJobs(
            company: 'Uber',
            title: 'UI/UX Designer',
            location: 'Cairo Egypt, Hybrid',
            period: 'Sep 2020 – June 2024',
            logoPath: 'assets/images/company_logo.png',
          ),
          const AppliedPastJobs(
            company: 'Mobbin',
            title: 'Junior UI/UX',
            location: 'Saudi Arabia, Remote',
            period: 'Sep 2020 – June 2024',
            logoPath: 'assets/images/company_logo.png',
          ),
          verticalSpace(12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              'User Flow',
              'App design',
              'Figma',
              'Layout Design',
              'Adobe Xd',
              'Photoshop',
              'UX Research',
            ]
                .map((skill) => Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: ColorsManager.porcelain,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Text(
                        skill,
                        style: AppTextStyles.font12GraniteRalewayRegular,
                      ),
                    ))
                .toList(),
          ),
          verticalSpace(24),
          AppTextButton(
            buttonText: 'Contact freelancer',
            textStyle: AppTextStyles.font14WhitePoppinsMedium,
            onPressed: () {
              context.pushNamed(Routes.customerChatsPersonChatScreen);
            },
          )
        ],
      ),
    );
  }
}
