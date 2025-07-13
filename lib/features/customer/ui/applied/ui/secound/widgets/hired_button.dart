import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/styles.dart';
import '../../../../../../../core/widgets/app_text_button.dart';

class HireButton extends StatelessWidget {
  final VoidCallback onHire;
  final String id;

  const HireButton({
    super.key,
    required this.onHire,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonText: 'Hire',
      backgroundColor: ColorsManager.primaryWildBlueYonder,
      textStyle: AppTextStyles.font14WhitePoppinsMedium.copyWith(
        color: ColorsManager.ghostWhite,
      ),
      borderColor: ColorsManager.primaryWildBlueYonder,
      onPressed: onHire,
    );
  }
}
