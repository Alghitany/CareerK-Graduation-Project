import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/developer/profile/payment/add_new_cart/widgets/add_card_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeveloperProfilePaymentAddNewCardScreen extends StatelessWidget {
  const DeveloperProfilePaymentAddNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0.w, 16.h, 16.w, 0.h),
          child: Column(
            children: [
              const AppBackIcon(),
              verticalSpace(16),
              Text(
                'Add New Card',
                style:
                    AppTextStyles.font24SecondaryWildBlueYonderPoppinsSemiBold,
              ),
              verticalSpace(72),
              Image.asset('assets/images/credit_card.png'),
              verticalSpace(40),
              const AddCardForm(),
              verticalSpace(44),
              AppTextButton(
                onPressed: () {
                  //TODO: Maybe add dialog here
                },
                buttonText: 'Add New Card',
                textStyle: AppTextStyles.font14WhitePoppinsMedium,
              )
            ],
          ),
        ),
      ),
    );
  }
}
