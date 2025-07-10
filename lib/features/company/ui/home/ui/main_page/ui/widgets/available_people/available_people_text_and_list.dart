import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/networking/api_constants.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../../core/helpers/app_regex.dart';
import '../../../data/model/company_home_main_page_response_body.dart';

class AvailablePeopleTextAndList extends StatelessWidget {
  final List<AvailableDeveloper> availableDevelopers;

  const AvailablePeopleTextAndList({
    super.key,
    required this.availableDevelopers,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 0.h, 0.w, 0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Available People:",
            style: AppTextStyles.font14RangoonGreenPoppinsSemiBold,
          ),
          verticalSpace(8),
          SizedBox(
            height: 125.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: availableDevelopers.length,
              itemBuilder: (context, index) {
                final developer = availableDevelopers[index];
                return Card(
                  color: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    side: const BorderSide(color: ColorsManager.mercury),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8.w, 8.h, 8.w, 0.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.transparent,
                          // Optional: to avoid background color behind SVG
                          child: developer.profilePicture != null
                              ? (AppRegex.isSvg(developer.profilePicture)
                                  ? SvgPicture.network(
                                      "${ApiConstants.apiBaseUrl}${AppRegex.cutBaseUrl(developer.profilePicture)}",
                                      width: 48,
                                      height: 48,
                                      fit: BoxFit.cover,
                                      placeholderBuilder: (_) => Image.asset(
                                        'assets/images/company_home_developer_logo.png',
                                        width: 48,
                                        height: 48,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : ClipOval(
                                      child: Image.network(
                                        "${ApiConstants.apiBaseUrl}${AppRegex.cutBaseUrl(developer.profilePicture)}",
                                        width: 48,
                                        height: 48,
                                        fit: BoxFit.cover,
                                        errorBuilder: (_, __, ___) =>
                                            Image.asset(
                                          'assets/images/company_home_developer_logo.png',
                                          width: 48,
                                          height: 48,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ))
                              : Image.asset(
                                  'assets/images/company_home_developer_logo.png',
                                  width: 48,
                                  height: 48,
                                  fit: BoxFit.cover,
                                ),
                        ),
                        horizontalSpace(4),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${developer.firstName} ${developer.lastName}',
                              style: AppTextStyles.font10LiverPoppinsRegular,
                            ),
                            Text(
                              developer.currentTrack ?? 'No Track',
                              style: AppTextStyles.font10NobelPoppinsLight,
                            ),
                            SizedBox(
                              width: 100.w,
                              child: Text(
                                developer.trackLevel ?? 'No Level',
                                style: AppTextStyles.font10GranitePoppinsLight,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                              ),
                            ),
                            AppTextButton(
                              verticalPadding: 10.h,
                              buttonHeight: 0.h,
                              buttonWidth: 70.w,
                              backgroundColor:
                                  ColorsManager.primaryWildBlueYonder,
                              buttonText: 'Send Offer',
                              borderRadius: 4.r,
                              textStyle: AppTextStyles.font11WhitePoppinsMedium,
                              onPressed: () {
                                context.pushNamed(
                                    Routes.companyHomeSendOfferScreen);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
