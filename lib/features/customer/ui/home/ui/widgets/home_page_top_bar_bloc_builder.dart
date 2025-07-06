import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/features/customer/ui/home/logic/customer_home_cubit.dart';
import 'package:carrerk/features/customer/ui/home/logic/customer_home_state.dart';
import 'package:carrerk/features/customer/ui/home/model/model/customer_home_response_body.dart';
import 'package:carrerk/features/customer/ui/profile/customer_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../core/theming/styles.dart';
import '../../../../../../../../core/routing/routes.dart';

class CustomerTopBarBlocBuilder extends StatelessWidget {
  const CustomerTopBarBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerHomeCubit, CustomerHomeState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (data) => setupSuccess(context, data),
          error: (error) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return Padding(
      padding: EdgeInsets.fromLTRB(12.w, 16.h, 12.w, 0),
      child: Row(
        children: [
          CircleAvatar(radius: 28.r, backgroundColor: Colors.grey[300]),
          horizontalSpace(16.w),
          Container(
            width: 100.w,
            height: 16.h,
            color: Colors.grey[300],
          ),
        ],
      ),
    );
  }

  Widget setupSuccess(BuildContext context, CustomerHomeResponseBody data) {
    final profile = data.profile;
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.fromLTRB(12.w, 16.h, 12.w, 0),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                context.pushNamed(Routes.customerProfileScreen);
              },
              child: CircleAvatar(
                radius: 28.r,
                backgroundImage: NetworkImage(profile.profilePicture),
              ),
            ),
            horizontalSpace(16.w),
            Expanded(
              child: Text(
                profile.name,
                style: AppTextStyles.font16DunePoppinsSemiBold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.customerChatsScreen);
              },
              icon: Image.asset(
                'assets/images/chat-bubble-left.png',
                color: Colors.black,
                height: 32.h,
                width: 32.w,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.notificationsScreen);
              },
              icon: Image.asset(
                "assets/svgs/notifications.png",
                height: 32.h,
                width: 32.w,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget setupError() {
    return Padding(
      padding: EdgeInsets.fromLTRB(12.w, 16.h, 12.w, 0),
      child: const Text(
        "Failed to load profile",
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}
