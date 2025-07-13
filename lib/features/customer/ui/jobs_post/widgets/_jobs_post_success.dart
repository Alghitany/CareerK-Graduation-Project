import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/theming/styles.dart';


class CustomerJobPostSuccessScreen extends StatefulWidget {


  const CustomerJobPostSuccessScreen({super.key, });

  @override
  State<CustomerJobPostSuccessScreen> createState() =>
      _CustomerJobPostSuccessScreenState();
}

class _CustomerJobPostSuccessScreenState
    extends State<CustomerJobPostSuccessScreen> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
            child: Column(
              children: [
                const AppBackIcon(),
                verticalSpace(16),
                Text('Job Details',
                    style: AppTextStyles.font24DunePoppinsMedium),
                
                verticalSpace(190),
                Image.asset("assets/images/verified_successfully.png",
                    height: 150.h, width: 150.w),
                verticalSpace(24),
                Text('Job Posted',
                    style: AppTextStyles.font20BlackPoppinsMedium),
               
                verticalSpace(132),
                AppTextButton(
                  buttonText: 'go to home page',
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                  onPressed: () {
                    context.pushNamed(Routes.customerHomeMainPageScreen);
                  },
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
