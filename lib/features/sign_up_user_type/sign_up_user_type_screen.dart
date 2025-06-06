import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/features/sign_up_user_type/widgets/user_type_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpUserTypeScreen extends StatelessWidget {
  const SignUpUserTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.fromLTRB(16.0.w, 24.h, 16.w, 0.h),
        child: Column(
          children: [
            const AppBackIcon(),
            Image.asset(
              'assets/images/splash_android12_logo.png',
              height: 200.h,
              width: double.infinity,
            ),
            Text(
              'Please Select one of the following',
              style: AppTextStyles.font16BlackPoppinsRegular,
            ),
            verticalSpace(16),
            Text(
              'You are A',
              style: AppTextStyles.font16BlackPoppinsMedium,
            ),
            verticalSpace(80),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UserTypeCard(
                  routeName: Routes.developerSignUpFlow,
                  icon: 'assets/svgs/person_outlined.svg',
                  text: 'Developer',
                ),
                UserTypeCard(
                  routeName: Routes.companySignUpCompulsoryDataScreen,
                  icon: 'assets/svgs/company.svg',
                  text: 'Company',
                ),
              ],
            ),
            verticalSpace(24),
            // TODO: Replace Customer Icon With a good one to be appeared in UI
            const UserTypeCard(
              routeName: Routes.customerSignUpCompulsoryDataScreen,
              icon: 'assets/svgs/customer.svg',
              text: 'Customer',
            ),
          ],
        ),
      )),
    );
  }
}
