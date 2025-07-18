import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/features/customer/ui/applied/ui/first/widgets/applications_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerAppliedFirstScreen extends StatelessWidget {
  const CustomerAppliedFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
            child: Column(
              children: [
                Row(
                  children: [
                    const AppBackIcon(),
                    horizontalSpace(32),
                    Text(
                      'Applied People',
                      style: AppTextStyles.font16BlackPoppinsRegular,
                    )
                  ],
                ),
                verticalSpace(32),
                ApplicationsBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
