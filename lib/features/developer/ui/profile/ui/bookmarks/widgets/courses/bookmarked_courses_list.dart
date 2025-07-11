import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../../core/helpers/app_regex.dart';
import '../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../core/routing/app_argument.dart';
import '../../../../../../../../core/routing/routes.dart';
import '../../../../../../../../core/theming/styles.dart';
import '../../../../../../../../core/widgets/course_bookmark/developer_course_bookmark_bloc_builder.dart';
import '../../../../../../logic/developer_add_course_bookmark_logic/developer_add_course_bookmark_cubit.dart';
import '../../../../../../logic/developer_single_course_bookmark_logic/developer_single_course_bookmark_cubit.dart';
import '../../data/models/developer_profile_courses_bookmarked_models/developer_profile_courses_bookmarked_response_body.dart';

class BookmarkedCoursesList extends StatelessWidget {
  final List<DeveloperProfileCoursesBookmarkedResponseBody> courses;

  const BookmarkedCoursesList({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        itemCount: courses.length,
        shrinkWrap: true,
        // allow ListView to size itself based on children
        physics: const NeverScrollableScrollPhysics(),
        // disable scrolling so outer scroll can scroll
        itemBuilder: (context, index) {
          final course = courses[index];
          return GestureDetector(
            onTap: () {
              context.pushNamed(
                Routes.developerCoursesSpecificCourseScreen,
                arguments: AppArgument(jobId: course.courseId ?? ''),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 8.h),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: AppRegex.isSvg('')
                        ? SvgPicture.network(
                            "",
                            width: 88.w,
                            height: 88.h,
                            fit: BoxFit.cover,
                            placeholderBuilder: (context) => const Center(
                                child: CircularProgressIndicator()),
                          )
                        : Image.network(
                            "",
                            width: 88.w,
                            height: 88.h,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                Image.asset(
                              'assets/images/html_course.png',
                              width: 88.w,
                              height: 88.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                  ),
                  horizontalSpace(12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          course.name ?? '',
                          style: AppTextStyles.font14BlackPoppinsSemiBold,
                        ),
                        verticalSpace(4),
                        Text(
                          course.description ?? '',
                          style: AppTextStyles.font12BlackPoppinsLight,
                        ),
                        verticalSpace(8),
                        Row(
                          children: [
                            Text(
                              "${course.totalLessons ?? 0} lessons",
                              style:
                                  AppTextStyles.font14DuskyBluePoppinsSemiBold,
                            ),
                            horizontalSpace(8),
                            Text("(${course.duration ?? "N/A"})")
                          ],
                        ),
                      ],
                    ),
                  ),
                  MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (_) =>
                            getIt<DeveloperSingleCourseBookmarkCubit>()
                              ..bookmarkCourse(course.courseId!),
                      ),
                      BlocProvider(
                        create: (_) => getIt<DeveloperAddCourseBookmarkCubit>(),
                      ),
                    ],
                    child: DeveloperCourseBookmarkBlocBuilder(
                        courseId: course.courseId ?? ''),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
