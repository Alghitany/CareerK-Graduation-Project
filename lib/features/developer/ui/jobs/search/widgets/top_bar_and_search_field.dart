import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/widgets/app_back_icon.dart';
import '../../../../../../core/widgets/app_search_text_form_field.dart';


class TopBarAndSearchField extends StatelessWidget {
  const TopBarAndSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(12.0.w, 8.h, 12.w, 0.h),
      child: Column(
        children: [
          const AppBackIcon(),
          verticalSpace(8),
          // TODO: Apply filtering the jobs
          const AppSearchTextFormField(
            readOnly: false,
            hintText: 'Search for job',
          ),
        ],
      ),
    );
  }
}
