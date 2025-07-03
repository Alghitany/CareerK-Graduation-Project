import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/widgets/app_choice_chip.dart';

class ServiceDescriptionAndKeywords extends StatelessWidget {
  final String description;
  final List<String> keywords;

  const ServiceDescriptionAndKeywords({
    super.key,
    required this.description,
    required this.keywords,
  });

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
          description,
          style: AppTextStyles.font14DunePoppinsRegular,
        ),
        verticalSpace(24),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              AppChoiceChip(
                options: keywords,
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
