import 'package:carrerk/core/widgets/company_floating_action_button.dart';
import 'package:carrerk/features/company/ui/home/ui/main_page/ui/widgets/start_chat_room_bloc_listener.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/widgets/company_bottom_navigation_bar.dart';
import 'widgets/company_home_main_page_bloc_builder.dart';

class CompanyHomeMainPageScreen extends StatelessWidget {
  const CompanyHomeMainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //TODO: Check if the bottom navigation bar can be one for the whole app instead of using two
      bottomNavigationBar: CompanyBottomNavigationBar(
        selectedIndex: 0,
      ),
      floatingActionButton: CompanyFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Column(
          children: [
            CompanyHomeMainPageBlocBuilder(),
            StartChatRoomBlocListener(),
          ],
        ),
      ),
    );
  }
}
