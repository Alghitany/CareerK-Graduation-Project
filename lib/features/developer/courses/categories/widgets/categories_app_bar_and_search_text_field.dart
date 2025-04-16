import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_search_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesAppBarAndSearchTextField extends StatelessWidget {
  const CategoriesAppBarAndSearchTextField({super.key});

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
                'Categories',
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
