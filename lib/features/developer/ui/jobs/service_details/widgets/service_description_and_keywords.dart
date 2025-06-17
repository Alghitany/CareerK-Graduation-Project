import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/widgets/app_choice_chip.dart';


class ServiceDescriptionAndKeywords extends StatelessWidget {
  const ServiceDescriptionAndKeywords({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Job Description:',
          style: AppTextStyles.font20BlackPoppinsMedium,
        ),
        verticalSpace(8),
        Text(
          'Design a user interface for an all-encompassing freelance gig platform app. This app should enable freelancers to sell various services. adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          style: AppTextStyles.font14DunePoppinsRegular,
        ),
        verticalSpace(24),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              AppChoiceChip(
                options: const [
                  'UI/UX',
                  'App design',
                  'Figma',
                  'Layout Design'
                ],
                selectedTextStyle: AppTextStyles.font12GraniteRalewayRegular,
                unSelectedTextStyle: AppTextStyles.font12GraniteRalewayRegular,
                selectedColor: ColorsManager.porcelain,
                unSelectedColor: ColorsManager.porcelain,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
