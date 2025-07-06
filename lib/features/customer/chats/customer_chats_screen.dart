import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/cusomer_floating_action_button.dart';
import 'package:carrerk/core/widgets/customer_bottom_navigation_bar.dart';
import 'package:carrerk/features/customer/chats/models/contact_list_item_model.dart';
import 'package:carrerk/features/customer/chats/widgets/contact_list_item_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerChatsScreen extends StatelessWidget {
  const CustomerChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomerBottomNavigationBar(
        selectedIndex: 2,
      ),
      floatingActionButton: const CustomerFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 48.h, 16.w, 0.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contacts List',
                  style: AppTextStyles
                      .font24SecondaryWildBlueYonderPoppinsSemiBold,
                ),
                verticalSpace(40.h),
                ContactListItemContainer(
                  contactListItemModel: ContactListItemModel(
                      ontap: () {
                        context.pushNamed(Routes.customerChatsPersonChatScreen);
                      },
                      name: 'Ahmed',
                      job: 'flutter dev',
                      image: 'assets/images/company_logo.png'),
                ),
                ContactListItemContainer(
                  contactListItemModel: ContactListItemModel(
                      ontap: () {
                        context.pushNamed(Routes.customerChatsPersonChatScreen);
                      },
                      name: 'Ahmed',
                      job: 'flutter dev',
                      image: 'assets/images/company_logo.png'),
                ),
                ContactListItemContainer(
                  contactListItemModel: ContactListItemModel(
                      ontap: () {
                        context.pushNamed(Routes.customerChatsPersonChatScreen);
                      },
                      name: 'Ahmed',
                      job: 'flutter dev',
                      image: 'assets/images/company_logo.png'),
                ),
                ContactListItemContainer(
                  contactListItemModel: ContactListItemModel(
                      ontap: () {
                        context.pushNamed(Routes.customerChatsPersonChatScreen);
                      },
                      name: 'Ahmed',
                      job: 'flutter dev',
                      image: 'assets/images/company_logo.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
