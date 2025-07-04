import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/networking/api_constants.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../../core/routing/app_argument.dart';
import '../../../../../../../../core/routing/routes.dart';
import '../../../data/models/developer_courses_main_page_roadmaps_response_model.dart';

class RoadmapsSuggestions extends StatelessWidget {
  final List<DeveloperCoursesMainPageRoadmapsResponseModel> roadmaps;

  const RoadmapsSuggestions({super.key, required this.roadmaps});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: roadmaps.map((item) {
          return Padding(
            padding: EdgeInsets.only(right: 24.w),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Routes.developerCoursesSpecificCategoryScreen,
                  arguments: AppArgument(trackId: item.trackId),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 60.h,
                    height: 60.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorsManager.chambray,
                    ),
                    child: Center(
                      child: Image.network(
                        '${ApiConstants.apiBaseUrl}${item.imageUrl}',
                        width: 32.w,
                        height: 32.h,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            SvgPicture.asset(
                          'assets/svgs/community_card_icon.svg',
                          width: 32.w,
                          height: 32.h,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                        ),
                      ),
                    ),
                  ),
                  verticalSpace(8),
                  SizedBox(
                    width: 80.w,
                    child: Text(
                      item.trackName,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.font14IronPoppinsMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
