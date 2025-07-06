import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/cusomer_floating_action_button.dart';
import 'package:carrerk/core/widgets/customer_bottom_navigation_bar.dart';
import 'package:carrerk/features/customer/ui/home/ui/widgets/customer_bloc_builder.dart';
import 'package:carrerk/features/customer/ui/home/ui/widgets/home_page_top_bar_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerHomeMainPageScreen extends StatelessWidget {
  const CustomerHomeMainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomerFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomerTopBarBlocBuilder(),
              verticalSpace(40),
              // Use Expanded to fill remaining height
              Expanded(
                child: CustomerBlocBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
