import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_search_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/enums.dart';
import '../logic/search_courses_cubit.dart';
import 'widgets/search_courses/search_courses_bloc_builder.dart';

class SearchScreen extends StatelessWidget {
  final String query;
  final SearchType searchType;

  const SearchScreen({
    super.key,
    required this.query,
    required this.searchType,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            children: [
              verticalSpace(40),
              AppSearchTextFormField(
                controller: context.read<SearchCoursesCubit>().searchController,
                readOnly: false,
                shadowColor: Colors.black.withOpacity(0.1),
                onChanged: (value) {
                  context.read<SearchCoursesCubit>().searchCourses(value);
                },
              ),
              verticalSpace(40),
              if (searchType == SearchType.courses)
                const Expanded(child: SearchCoursesBlocBuilder())
              else
                const Expanded(
                  child: Center(
                    child: Text("Job search not implemented yet."),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
