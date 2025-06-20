import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import '../../../../../../../core/routing/app_argument.dart';
import '../../../../../../../core/routing/routes.dart';
import '../../data/models/developer_courses_main_page_roadmaps_response_model.dart';

class RoadmapsSuggestions extends StatelessWidget {
  final List<DeveloperCoursesMainPageRoadmapsResponseModel> roadmaps;

  const RoadmapsSuggestions({super.key, required this.roadmaps});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: roadmaps.map((item) {
        return GestureDetector(
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
                  child: SvgPicture.network(
                    item.imageUrl,
                    width: 32.w,
                    height: 32.h,
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    placeholderBuilder: (context) => SvgPicture.asset(
                      'assets/svgs/community_card_icon.svg',
                      width: 32.w,
                      height: 32.h,
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                    errorBuilder: (context, error, stackTrace) =>
                        SvgPicture.asset(
                      'assets/svgs/community_card_icon.svg',
                      width: 32.w,
                      height: 32.h,
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ),
                ),
              ),
              verticalSpace(8),
              Text(
                item.trackName,
                textAlign: TextAlign.center,
                style: AppTextStyles.font14IronPoppinsMedium,
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
