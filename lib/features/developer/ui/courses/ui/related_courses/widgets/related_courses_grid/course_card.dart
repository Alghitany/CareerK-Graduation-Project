import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../../core/helpers/app_regex.dart';
import '../../../../../../../../core/networking/api_constants.dart';
import '../../../../../../../../core/widgets/course_bookmark/developer_course_bookmark_bloc_builder.dart';
import '../../../../../../logic/developer_add_course_bookmark_logic/developer_add_course_bookmark_cubit.dart';
import '../../../../../../logic/developer_single_course_bookmark_logic/developer_single_course_bookmark_cubit.dart';

class CourseCard extends StatelessWidget {
  final String imagePath;
  final String categoryName;
  final String coursesCount;
  final String rating;
  final String courseId;

  const CourseCard({
    super.key,
    required this.imagePath,
    required this.categoryName,
    required this.coursesCount,
    required this.rating,
    required this.courseId,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.developerCoursesSpecificCourseScreen,
            arguments: AppArgument(
              courseId: courseId,
            ));
      },
      child: Container(
        width: 172.w,
        height: 185.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Center(child: _buildImage(imagePath)),
                ),
                Positioned(
                  top: 5,
                  right: 10,
                  child: MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (_) =>
                            getIt<DeveloperSingleCourseBookmarkCubit>()
                              ..bookmarkCourse(courseId),
                      ),
                      BlocProvider(
                        create: (_) => getIt<DeveloperAddCourseBookmarkCubit>(),
                      ),
                    ],
                    child: DeveloperCourseBookmarkBlocBuilder(
                      courseId: courseId,
                      heartType: true,
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(2),
            Padding(
              padding: EdgeInsets.only(left: 7.w, right: 6.w),
              child: Text(
                categoryName,
                style: AppTextStyles.font12DunePoppinsRegular,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 7.w, right: 6.w),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "($coursesCount Courses)",
                      style: AppTextStyles.font10SilverChalicePoppinsMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    rating,
                    style: AppTextStyles.font10IronSideGreyPoppinsRegular,
                  ),
                  horizontalSpace(4),
                  const Icon(
                    Icons.star,
                    color: ColorsManager.schoolBusYellow,
                    size: 14,
                  ),
                ],
              ),
            ),
            verticalSpace(8.5),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(String imageUrl) {
    final fullUrl =
        "${ApiConstants.apiBaseUrl}${AppRegex.cutBaseUrl(imageUrl)}";

    if (AppRegex.isSvg(imageUrl)) {
      return SvgPicture.network(
        fullUrl,
        fit: BoxFit.cover,
        width: double.infinity,
        height: 133.h,
        placeholderBuilder: (context) => Shimmer.fromColors(
          baseColor: ColorsManager.ghostWhite,
          highlightColor: ColorsManager.mercury,
          child: SizedBox(
            width: double.infinity,
            height: 133.h,
          ),
        ),
      );
    } else {
      return Image.network(
        fullUrl,
        fit: BoxFit.cover,
        width: double.infinity,
        height: 133.h,
        errorBuilder: (context, error, stackTrace) => Shimmer.fromColors(
          baseColor: ColorsManager.ghostWhite,
          highlightColor: ColorsManager.mercury,
          child: SizedBox(
            width: double.infinity,
            height: 133.h,
          ),
        ),
      );
    }
  }
}
