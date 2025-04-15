import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_search_text_form_field.dart';
import 'package:carrerk/features/search/widgets/no_results.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            children: [
              verticalSpace(40),
              // TODO: Add controller to this page and filter app data to match the search here..
              AppSearchTextFormField(
                readOnly: false,
                shadowColor: Colors.black.withOpacity(0.1),
              ),
              verticalSpace(120),
              // TODO: The Fail State widget and maybe we can add the empty state
              const NoResults(),
            ],
          ),
        ),
      ),
    );
  }
}
