import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/chats_list_bloc_builder.dart';

class ChatsAllChats extends StatelessWidget {
  const ChatsAllChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // App Bar Row
              Row(
                children: [
                  const AppBackIcon(),
                  horizontalSpace(16),
                  Text('Chats', style: AppTextStyles.font24DunePoppinsMedium),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      // TODO: Add search action
                    },
                    child: SvgPicture.asset(
                      'assets/svgs/search.svg',
                      height: 22.h,
                      width: 22.w,
                      colorFilter: const ColorFilter.mode(
                        Colors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpace(24),
              const Expanded(child: ChatsListBlocBuilder()),
            ],
          ),
        ),
      ),
    );
  }
}
