import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styles.dart';

class RecentPeopleApplied extends StatelessWidget {
  const RecentPeopleApplied({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> recentPeople = [
      {
        'imagePath': 'assets/images/company_home_developer_logo.png',
        'developerName': 'Client name',
        'location': 'Mansoura,Egypt.',
      },
      {
        'imagePath': 'assets/images/company_home_developer_logo.png',
        'developerName': 'Client name',
        'location': 'Mansoura,Egypt.',
      },
      {
        'imagePath': 'assets/images/company_home_developer_logo.png',
        'developerName': 'Client name',
        'location': 'Mansoura,Egypt.',
      },
      {
        'imagePath': 'assets/images/company_home_developer_logo.png',
        'developerName': 'Client name',
        'location': 'Mansoura,Egypt.',
      },
    ];
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 0.h, 16.w, 0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent People Applied:",
            style: AppTextStyles.font14RangoonGreenPoppinsSemiBold,
          ),
          verticalSpace(16),
          SizedBox(
            height: 310.h,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: recentPeople.length,
              itemBuilder: (context, index) {
                final person = recentPeople[index];
                return Card(
                    color: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: ColorsManager.porcelain),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(8.w, 8.0.h, 16.w, 8.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16.r),
                                    child: Image.asset(
                                      "assets/images/company_home_developer_logo.png",
                                      width: 48.w,
                                      height: 48.h,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  horizontalSpace(6),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        person['developerName'],
                                        style: AppTextStyles
                                            .font12RangoonGreenPoppinsRegular,
                                      ),
                                      Text(person['location'],
                                          style: AppTextStyles
                                              .font12LiverPoppinsLight)
                                    ],
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      //TODO: I don't know should we call him?
                                    },
                                    child: CircleAvatar(
                                      radius: 16.r,
                                      backgroundColor: ColorsManager.porcelain,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: SvgPicture.asset(
                                          "assets/svgs/phone_outlined.svg",
                                          height: 16.h,
                                          width: 16.w,
                                          colorFilter: const ColorFilter.mode(
                                            ColorsManager.lemonGrass,
                                            BlendMode.srcIn,
                                          ),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  horizontalSpace(10),
                                  GestureDetector(
                                    onTap: () {
                                      context.pushNamed(
                                          Routes.companyChatsPersonChatScreen);
                                    },
                                    child: CircleAvatar(
                                      radius: 16.r,
                                      backgroundColor: ColorsManager.porcelain,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.w),
                                        child: SvgPicture.asset(
                                          "assets/svgs/message_outlined.svg",
                                          height: 16.h,
                                          width: 16.w,
                                          colorFilter: const ColorFilter.mode(
                                            ColorsManager.lemonGrass,
                                            BlendMode.srcIn,
                                          ),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(40.w, 8.h, 0.w, 0.h),
                                child: Row(
                                  children: [
                                    AppTextButton(
                                        verticalPadding: 10.h,
                                        buttonHeight: 25.h,
                                        buttonWidth: 100.w,
                                        backgroundColor: Colors.white,
                                        borderColor:
                                            ColorsManager.primaryWildBlueYonder,
                                        borderRadius: 4.r,
                                        buttonText: 'See Resume',
                                        textStyle: AppTextStyles
                                            .font11DuskyBluePoppinsMedium,
                                        onPressed: () {
                                          context.pushNamed(Routes
                                              .companyHomeSeeResumeScreen);
                                        }),
                                    horizontalSpace(38),
                                    AppTextButton(
                                        verticalPadding: 10.h,
                                        buttonHeight: 25.h,
                                        buttonWidth: 100.w,
                                        backgroundColor:
                                            ColorsManager.primaryWildBlueYonder,
                                        borderColor:
                                            ColorsManager.primaryWildBlueYonder,
                                        borderRadius: 4.r,
                                        buttonText: 'See Details',
                                        textStyle: AppTextStyles
                                            .font11WhitePoppinsMedium,
                                        onPressed: () {
                                          context.pushNamed(Routes
                                              .companyHomeSeeDetailsScreen);
                                        }),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
