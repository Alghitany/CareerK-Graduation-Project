import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';

import '../../../../../../../core/theming/colors.dart';
import '../../data/model/get_service_posts_model/customer_profile_get_all_service_post_response_body.dart';

class AllJobsList extends StatelessWidget {
  final List<PostItem> posts;
  final int? jobs;

  const AllJobsList({super.key, required this.posts, this.jobs});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'All Jobs',
            style: AppTextStyles.font14RangoonGreenPoppinsSemiBold,
          ),
        ),
        verticalSpace(12),
        SizedBox(
          height: MediaQuery.of(context).size.height - 100,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return Card(
                color: Colors.white,
                elevation: 0,
                margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 16.h),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: ColorsManager.pastelGrey),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              post.title ?? '',
                              style: AppTextStyles.font16BlackPoppinsMedium,
                            ),
                            verticalSpace(4),
                            Text(
                              post.serviceType ?? '',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles
                                  .font10RangoonGreenPoppinsRegular,
                            ),
                            verticalSpace(4),
                            Text(
                              post.budgetRange ?? '',
                              style: AppTextStyles
                                  .font10RangoonGreenPoppinsRegular,
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // handle apply
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 4.h),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: ColorsManager.primaryWildBlueYonder),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Text(
                            "delete",
                            style:
                                AppTextStyles.font12WaikawaGreyPoppinsRegular,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
