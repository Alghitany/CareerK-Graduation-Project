import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/developer_sign_up_cubit.dart';
import 'widgets/search_track_form_and_grid_view.dart';

class DeveloperSignUpSelectedCourses extends StatelessWidget {
  const DeveloperSignUpSelectedCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 8.h),
              child: Column(
                children: [
                  const AppBackIcon(),
                  verticalSpace(16),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Select the specific_category\nYou are interested..',
                        style: AppTextStyles.font24CloudBurstPoppinsMedium,
                      ),
                    ),
                  ),
                  verticalSpace(16),
                  const SearchTrackFormAndGridView(),
                  verticalSpace(24),
                  AppTextButton(
                      buttonText: 'Confirm',
                      textStyle: AppTextStyles.font14WhitePoppinsMedium,
                      onPressed: () {
                        //TODO: Check Whether a courses is selected or not then navigate
                        validateThenDoSignup(context);
                      })
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    final cubit = context.read<DeveloperSignupCubit>();
    final isCourseValid = cubit.isCourseSelected();

    if (isCourseValid) {
      cubit.signupDeveloper();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select at least one course.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
