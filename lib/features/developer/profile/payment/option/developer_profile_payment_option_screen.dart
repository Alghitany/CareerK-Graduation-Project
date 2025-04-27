import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/developer/profile/payment/option/widgets/connected_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeveloperProfilePaymentOptionScreen extends StatelessWidget {
  const DeveloperProfilePaymentOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: I don't Know why this screen exists
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
          child: Column(
            children: [
              const AppBackIcon(),
              verticalSpace(16),
              Text(
                'Payment Option',
                style:
                    AppTextStyles.font24SecondaryWildBlueYonderPoppinsSemiBold,
              ),
              verticalSpace(72),
              const ConnectedCards(),
              verticalSpace(124),
              AppTextButton(
                onPressed: () {
                  context.pushNamed(
                      Routes.developerProfilePaymentAddNewCartScreen);
                },
                buttonText: 'Add New Card',
                textStyle: AppTextStyles.font14WhitePoppinsMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
