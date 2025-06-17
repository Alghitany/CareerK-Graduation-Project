import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/community_and_follow_icon.dart';
import 'widgets/exit_icon.dart';
import 'widgets/input_field_with_send_button.dart';
import 'widgets/receive_message.dart';

class DeveloperCommunityChatScreen extends StatefulWidget {
  const DeveloperCommunityChatScreen({super.key});

  @override
  State<DeveloperCommunityChatScreen> createState() =>
      _DeveloperCommunityChatScreenState();
}

class _DeveloperCommunityChatScreenState
    extends State<DeveloperCommunityChatScreen> {
  List<Widget> messages = [const ReceiveMessage()];
  final ScrollController _scrollController = ScrollController();

  void addMessage(Widget message) {
    setState(() {
      messages.add(message);
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: I think this Screen Can be refactored way better should be reviewed
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16),
              child: Column(
                children: [
                  const ExitIcon(),
                  verticalSpace(16),
                  const CommunityAndFollowIcon(),
                ],
              ),
            ),
            verticalSpace(8),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
                color: ColorsManager.aquaHaze,
                child: ListView(
                  controller: _scrollController,
                  children: [
                    ...messages,
                  ],
                ),
              ),
            ),
            InputFieldWithSendButton(onSend: addMessage),
          ],
        ),
      ),
    );
  }
}
