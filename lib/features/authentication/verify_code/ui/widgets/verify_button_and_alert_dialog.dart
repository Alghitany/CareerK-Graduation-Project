import 'package:flutter/material.dart';

import '../../../../../../core/theming/styles.dart';
import '../../../../../../core/widgets/app_text_button.dart';
import 'verified_alert_dialog.dart';

class VerifyButtonAndAlertDialog extends StatelessWidget {
  const VerifyButtonAndAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonText: 'Verify',
      textStyle: AppTextStyles.font14WhitePoppinsMedium,
      onPressed: () {
        // TODO: Check if the OTP is matched with user input
        showDialog(
          context: context,
          builder: (context) => const VerifiedAlertDialog(),
        );
      },
    );
  }
}
