import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/widgets/course_bookmark/developer_course_bookmark_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../core/theming/styles.dart';
import '../../../../../logic/developer_single_course_bookmark_logic/developer_single_course_bookmark_cubit.dart';
import '../../../data/models/developer_courses_home_main_page_models/developer_courses_home_main_page_response_body.dart';

class MainPageCoursesList extends StatefulWidget {
  final List<DeveloperCoursesHomeMainPageResponseBody> courses;

  const MainPageCoursesList({super.key, required this.courses});

  @override
  State<MainPageCoursesList> createState() => _MainPageCoursesListState();
}

class _MainPageCoursesListState extends State<MainPageCoursesList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.courses.length,
        itemBuilder: (context, index) {
          final course = widget.courses[index];

          return Row(
            children: [
              SizedBox(
                width: 277.h,
                child: GestureDetector(
                  onTap: () {
                    context.pushNamed(
                        Routes.developerCoursesSpecificCourseScreen,
                        arguments: AppArgument(courseId: course.courseId));
                  },
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                            child: SvgPicture.network(
                              course.imageUrl ?? '',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 134.h,
                              placeholderBuilder: (context) =>
                                  Shimmer.fromColors(
                                baseColor: ColorsManager.ghostWhite,
                                highlightColor: ColorsManager.mercury,
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 134.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 8.0.h, left: 8.0.w),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 120.w,
                                        child: Text(
                                          course.name ?? '',
                                          style: AppTextStyles
                                              .font16DunePoppinsMedium,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      horizontalSpace(8),
                                      SizedBox(
                                        width: 90,
                                        child: Text(
                                          "(${course.duration ?? "N/A"})",
                                          style: AppTextStyles
                                              .font14RangoonGreenPoppinsMedium,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                verticalSpace(8),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                          "${course.totalLessons.toString()} Lessons",
                                          style: AppTextStyles
                                              .font14DuneMulishExtraBold),
                                      horizontalSpace(8),
                                      Text("|",
                                          style: AppTextStyles
                                              .font14BlackMulishBold),
                                      horizontalSpace(8),
                                      const Icon(Icons.star,
                                          color: ColorsManager.schoolBusYellow,
                                          size: 20),
                                      horizontalSpace(4),
                                      Text(
                                        course.averageRating ?? '0.0',
                                        style: AppTextStyles
                                            .font14DuneMulishExtraBold,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            // BlocProvider only wraps the bookmark widget
                            Padding(
                              padding: EdgeInsets.only(bottom: 24.0.h),
                              child: BlocProvider(
                                create: (_) =>
                                    getIt<DeveloperSingleCourseBookmarkCubit>()
                                      ..bookmarkCourse(course.courseId!),
                                child: DeveloperCourseBookmarkBlocBuilder(
                                  courseId: course.courseId ?? '',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (index != widget.courses.length - 1) horizontalSpace(8.w),
            ],
          );
        },
      ),
    );
  }
}
