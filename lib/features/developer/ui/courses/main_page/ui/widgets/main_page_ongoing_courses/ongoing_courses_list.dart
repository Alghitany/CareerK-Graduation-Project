import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../../core/widgets/course_bookmark/developer_course_bookmark_bloc_builder.dart';
import '../../../../../../logic/developer_single_course_bookmark_logic/developer_single_course_bookmark_cubit.dart';
import '../../../data/models/main_page_ongoing_courses/developer_courses_main_page_ongoing_courses_response_body.dart';

class OngoingCoursesList extends StatefulWidget {
  final List<DeveloperCoursesMainPageOngoingCoursesResponseBody> courses;

  const OngoingCoursesList({super.key, required this.courses});

  @override
  State<OngoingCoursesList> createState() => _OngoingCoursesListState();
}

class _OngoingCoursesListState extends State<OngoingCoursesList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 188.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: widget.courses.length,
        separatorBuilder: (context, index) => horizontalSpace(14),
        itemBuilder: (context, index) {
          final course = widget.courses[index];
          double progress;
          if(course.totalCount == 0){
            progress = 0;
          }else {
            progress = course.completedCount / course.totalCount;
          }
            return GestureDetector(
              onTap: () {
                context.pushNamed(Routes.developerCoursesMyCoursesScreen);
              },
              child: Card(
                  elevation: 2,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: SizedBox(
                    width: 230.w,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                    Stack(
                    children: [
                    ClipRRect(
                    borderRadius: BorderRadius.only(
                    topLeft:
                    Radius.circular(10.r),
                              topRight: Radius.circular(10.r),
                            ),
                            child: Image.network(
                              course.imageUrl,
                              width: double.infinity,
                              height: 120.h,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: double.infinity,
                                  height: 120.h,
                                  color: ColorsManager.mercury,
                                  alignment: Alignment.center,
                                  child: const Icon(
                                    Icons.broken_image,
                                    color: ColorsManager.granite,
                                    size: 32,
                                  ),
                                );
                              },
                            )),
                        Positioned(
                          top: 8.h,
                          left: 8.w,
                          child: BlocProvider(
                            create: (_) =>
                                getIt<DeveloperSingleCourseBookmarkCubit>()
                                  ..bookmarkCourse(course.courseId),
                            child: DeveloperCourseBookmarkBlocBuilder(
                              courseId: course.courseId,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  course.name,
                                  style: AppTextStyles.font14DunePoppinsRegular,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              horizontalSpace(4),
                              Text(
                                "(${course.totalCount} lessons)",
                                style: AppTextStyles
                                    .font12SilverChalicePoppinsMedium,
                              ),
                            ],
                          ),
                          verticalSpace(4),
                          Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.r),
                                  child: LinearProgressIndicator(
                                    value: progress,
                                    backgroundColor: ColorsManager.mercury,
                                    color: ColorsManager.waikawaGrey,
                                    minHeight: 4,
                                  ),
                                ),
                              ),
                              horizontalSpace(8),
                              Text(
                                "${course.completedCount}/${course.totalCount}",
                                style: AppTextStyles.font12BlueJayPoppinsMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
