import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../core/helpers/app_regex.dart';
import '../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../core/routing/app_argument.dart';
import '../../../../../../../../core/routing/routes.dart';
import '../../../../../../../../core/theming/styles.dart';
import '../../data/models/developer_profile_services_bookmarked_models/developer_profile_services_bookmarked_response_body.dart';

class BookmarkedServicesList extends StatelessWidget {
  final List<DeveloperProfileServicesBookmarkedResponseBody> services;

  const BookmarkedServicesList({super.key, required this.services});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      itemCount: services.length,
      shrinkWrap: true,
      // makes ListView size itself to content height
      physics: const NeverScrollableScrollPhysics(),
      // disables internal scrolling
      itemBuilder: (context, index) {
        final service = services[index];
        return GestureDetector(
          onTap: () {
            context.pushNamed(
              Routes.developerJobsServiceDetailsScreen,
              arguments: AppArgument(jobId: service.postId ?? ''),
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
                          placeholderBuilder: (context) =>
                              const Center(child: CircularProgressIndicator()),
                        )
                      : Image.network(
                          "",
                          width: 88.w,
                          height: 88.h,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              Image.asset(
                            'assets/images/recommended_job.png',
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
                        service.title ?? '',
                        style: AppTextStyles.font14BlackPoppinsSemiBold,
                      ),
                      verticalSpace(4),
                      Text(
                        service.serviceType ?? '',
                        style: AppTextStyles.font12BlackPoppinsLight,
                      ),
                      verticalSpace(8),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/svgs/coin.svg",
                            width: 20.w,
                            height: 20.h,
                          ),
                          horizontalSpace(6),
                          Text(
                            service.budgetRange ?? '',
                            style: AppTextStyles.font14DuskyBluePoppinsSemiBold,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Keep bookmark logic as-is
                  },
                  icon: SvgPicture.asset(
                    "assets/svgs/bookmark_filled.svg",
                    width: 22.w,
                    height: 22.h,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
