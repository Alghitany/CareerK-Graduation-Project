import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/features/developer/ui/community/chat/ui/widgets/input_field_with_send_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../chats/person_chat/ui/widgets/chat_messages/receive_messages.dart';
import '../../../../../chats/person_chat/ui/widgets/exit_icon.dart';
import 'widgets/community_details/community_details_bloc_builder.dart';

class DeveloperCommunityChatScreen extends StatefulWidget {
  const DeveloperCommunityChatScreen({super.key});

  @override
  State<DeveloperCommunityChatScreen> createState() =>
      _DeveloperCommunityChatScreenState();
}

class _DeveloperCommunityChatScreenState
    extends State<DeveloperCommunityChatScreen> {
  final List<Widget> messages = [];
  final ScrollController _scrollController = ScrollController();

  void addMessage(String text) {
    if (text.trim().isEmpty) return;

    final newMessage = ReceiveMessage(
      messageText: text,
      time: DateTime.now(),
      isSender: true,
      senderName: 'You',
    );

    setState(() {
      messages.add(newMessage);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent + 100,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  const CommunityDetailsBlocBuilder(),
                ],
              ),
            ),
            verticalSpace(8),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0),
                color: ColorsManager.aquaHaze,
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: messages.length,
                  itemBuilder: (context, index) => messages[index],
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
