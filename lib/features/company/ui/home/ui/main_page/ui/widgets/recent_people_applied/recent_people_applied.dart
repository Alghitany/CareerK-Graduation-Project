import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../core/theming/styles.dart';
import '../../../../../../../../chats/person_chat/data/models/start_chat/start_chat_room_request_body.dart';
import '../../../../../../../../chats/person_chat/logic/start_chat/start_chat_room_cubit.dart';
import '../../../data/model/company_home_main_page_response_body.dart';

class RecentPeopleApplied extends StatelessWidget {
  final List<RecentAppliedDeveloper> recentDevelopers;

  const RecentPeopleApplied({
    super.key,
    required this.recentDevelopers,
  });

  @override
  Widget build(BuildContext context) {
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
              itemCount: recentDevelopers.length,
              itemBuilder: (context, index) {
                final person = recentDevelopers[index];
                return Card(
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: ColorsManager.porcelain),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8.w, 8.h, 16.w, 8.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.grey[200],
                              child: ClipOval(
                                child: Image.network(
                                  person.profilePicture ?? "",
                                  fit: BoxFit.cover,
                                  width: 48,
                                  height: 48,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Image.asset(
                                      'assets/images/company_home_developer_logo.png',
                                      fit: BoxFit.cover,
                                      width: 48,
                                      height: 48,
                                    );
                                  },
                                ),
                              ),
                            ),
                            horizontalSpace(6),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${person.firstName} ${person.lastName}",
                                  style: AppTextStyles
                                      .font12RangoonGreenPoppinsRegular,
                                ),
                                Text(
                                  person.address ?? "Unknown Location",
                                  style: AppTextStyles.font12LiverPoppinsLight,
                                ),
                              ],
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                final requestBody = StartChatRoomRequestBody(
                                  targetUser: TargetUser(
                                    userId: person.developerId!,
                                    role: "developer",
                                  ),
                                );
                                context
                                    .read<StartChatRoomCubit>()
                                    .emitStartChatRoomStates(requestBody);
                              },
                              child: CircleAvatar(
                                radius: 16.r,
                                backgroundColor: ColorsManager.porcelain,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
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
                          padding: EdgeInsets.fromLTRB(40.w, 8.h, 0.w, 0.h),
                          child: Row(
                            children: [
                              AppTextButton(
                                verticalPadding: 10.h,
                                buttonHeight: 25.h,
                                buttonWidth: 100.w,
                                backgroundColor: Colors.white,
                                borderColor:
                                    ColorsManager.primaryWildBlueYonder,
                                borderRadius: 6.r,
                                buttonText: 'See Resume',
                                textStyle:
                                    AppTextStyles.font11DuskyBluePoppinsMedium,
                                onPressed: () {
                                  context.pushNamed(
                                      Routes.companyHomeSeeResumeScreen,
                                      arguments: AppArgument(developerId: person.developerId));
                                },
                              ),
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
                                textStyle:
                                    AppTextStyles.font11WhitePoppinsMedium,
                                onPressed: () {
                                  context.pushNamed(
                                    Routes.companyHomeSeeDetailsScreen,
                                    arguments: AppArgument(
                                      applicationId: person.applicationId!,
                                    ),
                                  );
                                },
                              ),
                            ],
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
      ),
    );
  }
}
