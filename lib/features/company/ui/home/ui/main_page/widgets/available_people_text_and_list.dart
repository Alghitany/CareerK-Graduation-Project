import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvailablePeopleTextAndList extends StatelessWidget {
  const AvailablePeopleTextAndList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> availablePeople = [
      {
        'imagePath': 'assets/images/company_home_developer_logo.png',
        'developerName': 'Client name',
        'title': 'UI/UX Designer',
        'description': 'Lorem ipsum dolor sit amet consect niafndfb',
        'salary': '\$20',
      },
      {
        'imagePath': 'assets/images/company_home_developer_logo.png',
        'developerName': 'Client name',
        'title': 'UI/UX Designer',
        'description': 'Lorem ipsum dolor sit amet consect niafndfb',
        'salary': '\$20',
      },
      {
        'imagePath': 'assets/images/company_home_developer_logo.png',
        'developerName': 'Client name',
        'title': 'UI/UX Designer',
        'description': 'Lorem ipsum dolor sit amet consect niafndfb',
        'salary': '\$20',
      },
      {
        'imagePath': 'assets/images/company_home_developer_logo.png',
        'developerName': 'Client name',
        'title': 'UI/UX Designer',
        'description': 'Lorem ipsum dolor sit amet consect niafndfb',
        'salary': '\$20',
      },
    ];
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
              itemCount: availablePeople.length,
              itemBuilder: (context, index) {
                final person = availablePeople[index];
                return Card(
                  color: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    side: const BorderSide(color: ColorsManager.mercury),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.fromLTRB(8.0.w, 8.0.h, 8.0.w, 0.0.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage(person['imagePath']),
                            ),
                            horizontalSpace(4),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  person['developerName'],
                                  style:
                                      AppTextStyles.font10LiverPoppinsRegular,
                                ),
                                Text(
                                  person['title'],
                                  style: AppTextStyles.font10NobelPoppinsLight,
                                ),
                                SizedBox(
                                  width: 100.w,
                                  child: Text(
                                    person['description'],
                                    style:
                                        AppTextStyles.font10GranitePoppinsLight,
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
                                    textStyle:
                                        AppTextStyles.font11WhitePoppinsMedium,
                                    onPressed: () {
                                      context.pushNamed(
                                          Routes.companyHomeSendOfferScreen);
                                    })
                              ],
                            ),
                            Text(
                              person['salary'],
                              style: AppTextStyles.font10BlueBerryPoppinsLight,
                            ),
                          ],
                        ),
                      )
                    ],
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
