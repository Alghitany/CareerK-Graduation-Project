import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/features/developer/ui/community/chat/ui/widgets/community_details/community_details_bloc_builder.dart';
import 'package:carrerk/features/developer/ui/community/chat/ui/widgets/input_field_with_send_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../chats/person_chat/ui/widgets/chat_messages/receive_messages.dart';
import '../../../../../chats/person_chat/ui/widgets/exit_icon.dart';
import '../apis/community_socket_service.dart';

class DeveloperCommunityChatScreen extends StatefulWidget {
  final String? userId;
  final String? communityId;

  const DeveloperCommunityChatScreen({
    super.key,
    this.userId,
    this.communityId,
  });

  @override
  State<DeveloperCommunityChatScreen> createState() =>
      _DeveloperCommunityChatScreenState();
}

class _DeveloperCommunityChatScreenState
    extends State<DeveloperCommunityChatScreen> {
  final List<Widget> _messages = [];
  final ScrollController _scrollController = ScrollController();
  final CommunitySocketService _socketService = getIt<CommunitySocketService>();

  String? currentUserId;
  String? communityId;

  @override
  void initState() {
    super.initState();

    currentUserId = widget.userId;
    communityId = widget.communityId;

    if (currentUserId != null && communityId != null) {
      _socketService.connect(currentUserId!);
      _socketService.joinRoom(communityId!);

      _socketService.onReceiveMessage((data) {
        final newMessage = ReceiveMessage(
          messageText: data['message'] ?? '',
          time: DateTime.now(), // Consider parsing from backend later
          isSender: data['senderId'] == currentUserId,
          senderName: data['senderName'] ?? 'Unknown',
        );

        setState(() {
          _messages.add(newMessage);
        });

        WidgetsBinding.instance.addPostFrameCallback((_) {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        });
      });
    }
  }

  void _sendMessage(String text) {
    if (text.trim().isEmpty || currentUserId == null || communityId == null) return;

    _socketService.sendMessage(
      communityId: communityId!,
      message: text,
      senderId: currentUserId!,
      senderType: "developer",
      messageType: "text",
    );

    final myMessage = ReceiveMessage(
      messageText: text,
      time: DateTime.now(),
      isSender: true,
      senderName: "You",
    );

    setState(() {
      _messages.add(myMessage);
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
    if (communityId != null) _socketService.leaveRoom(communityId!);
    _socketService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
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
                child: ListView(
                  controller: _scrollController,
                  children: _messages,
                ),
              ),
            ),
            InputFieldWithSendButton(
              onSend: _sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
