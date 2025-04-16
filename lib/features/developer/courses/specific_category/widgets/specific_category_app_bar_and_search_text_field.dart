import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../core/widgets/app_back_icon.dart';
import '../../../../../core/widgets/app_search_text_form_field.dart';

class SpecificCategoryAppBarAndSearchTextField extends StatelessWidget {
  const SpecificCategoryAppBarAndSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Row(
            children: [
              const AppBackIcon(),
              const Spacer(),
              Text(
                'Front end',
                style: AppTextStyles.font24BlackPoppinsRegular,
              ),
              const Spacer(),
            ],
          ),
        ),
        verticalSpace(20),
        AppSearchTextFormField(
          readOnly: false,
          shadowColor: Colors.black.withOpacity(0.1),
          hintText: 'Search for course',
        ),
      ],
    );
  }
}
