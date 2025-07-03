import 'package:flutter/material.dart';

import '../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/styles.dart';
import '../../../../../../../core/widgets/app_text_button.dart';

class HireButton extends StatefulWidget {
  const HireButton({super.key});

  @override
  State<HireButton> createState() => _HireButtonState();
}

class _HireButtonState extends State<HireButton> {
  bool isHired = false;

  @override
  Widget build(BuildContext context) {
    return isHired
        ? Row(
            children: [
              Expanded(
                child: AppTextButton(
                  buttonText: 'Hired',
                  backgroundColor: ColorsManager.primaryWildBlueYonder,
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                  onPressed: () {}, // Disabled (unclickable)
                ),
              ),
              horizontalSpace(16),
              Expanded(
                child: AppTextButton(
                  buttonText: 'Undo',
                  backgroundColor: ColorsManager.ironSideGrey,
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                  onPressed: () {
                    setState(() {
                      isHired = false;
                    });
                  },
                ),
              ),
            ],
          )
        : AppTextButton(
            buttonText: 'Hire',
            backgroundColor: ColorsManager.primaryWildBlueYonder,
            textStyle: AppTextStyles.font14WhitePoppinsMedium,
            onPressed: () {
              setState(() {
                isHired = true;
              });
              // Do your hire action here if needed
            },
          );
  }
}
