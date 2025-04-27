import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class SearchTrackFormAndGridView extends StatefulWidget {
  const SearchTrackFormAndGridView({super.key});

  @override
  State<SearchTrackFormAndGridView> createState() =>
      _SearchTrackFormAndGridViewState();
}

class _SearchTrackFormAndGridViewState
    extends State<SearchTrackFormAndGridView> {
  final Set<String> selectedCourses = {};
  final List<String> courses = [
    "HTML",
    "My SQL",
    "JAVASCRIPT",
    "CSS",
    "C",
    "CPP",
    "React",
    "BOOT STRAP",
    "UI/UX",
    "C#",
    "Java",
    "Google Courses",
    "Cloud Storage",
    "PHP",
    "Python",
    "Angular",
    "Vue.js"
  ];

  void toggleCourseSelection(String course) {
    setState(() {
      if (selectedCourses.contains(course)) {
        selectedCourses.remove(course);
      } else {
        selectedCourses.add(course);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTextFormField(
              hintText: 'Search a specific_category...',
              //TODO: Check if we need it
              validator: (track) => null,
            ),
            verticalSpace(8),
            AnimatedSize(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: Wrap(
                spacing: 8.0,
                children: selectedCourses.map((course) {
                  return Chip(
                    label: Text(course,
                        style: AppTextStyles.font16WhitePoppinsMedium),
                    deleteIcon: const Icon(Icons.close, color: Colors.white),
                    onDeleted: () => toggleCourseSelection(course),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    backgroundColor: ColorsManager.secondaryWildBlueYonder,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        verticalSpace(8),
        Text(
          'Our Popular Course:',
          style: AppTextStyles.font20NobelPoppinsMedium,
        ),
        verticalSpace(8),
        Stack(children: [
          SizedBox(
            height: 330.h,
            child: Scrollbar(
              thickness: 2.5,
              radius: const Radius.circular(10),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: 3,
                ),
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  final isSelected = selectedCourses.contains(courses[index]);
                  return GestureDetector(
                    onTap: () => toggleCourseSelection(courses[index]),
                    child: Card(
                      color: isSelected
                          ? ColorsManager.secondaryWildBlueYonder
                          : Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(
                            color: ColorsManager.secondaryWildBlueYonder),
                      ),
                      child: Center(
                        child: Text("${courses[index]} +",
                            style: isSelected
                                ? AppTextStyles.font16WhitePoppinsMedium
                                : AppTextStyles
                                    .font16RangoonGreenPoppinsMedium),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 30.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.4),
                    Colors.white.withOpacity(0.8),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
