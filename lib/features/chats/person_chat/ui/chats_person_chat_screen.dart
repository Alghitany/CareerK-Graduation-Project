import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../developer/ui/community/chat/widgets/exit_icon.dart';
import '../logic/send_messages/send_messages_cubit.dart';
import 'widgets/applicant_name_title_and_phone_icon.dart';
import 'widgets/chat_messages/get_chat_messages_bloc_builder.dart';
import 'widgets/send_message/input_field_with_send_button.dart';
import 'widgets/send_message/send_message_bloc_listener.dart';

class ChatsPersonChatScreen extends StatefulWidget {
  final String chatRoomId;
  final bool isExisting;

  const ChatsPersonChatScreen({
    super.key,
    required this.chatRoomId,
    required this.isExisting,
  });

  @override
  State<ChatsPersonChatScreen> createState() => _ChatsPersonChatScreenState();
}

class _ChatsPersonChatScreenState extends State<ChatsPersonChatScreen> {
  String? currentUserId;
  final ScrollController _scrollController = ScrollController();
  late final SendMessagesCubit sendMessagesCubit;

  @override
  void initState() {
    super.initState();
    sendMessagesCubit = context.read<SendMessagesCubit>();
    loadCurrentUserId();
  }

  Future<void> loadCurrentUserId() async {
    final userId =
        await SharedPrefHelper.getSecuredString(SharedPrefKeys.userId);
    setState(() {
      currentUserId = userId;
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (currentUserId == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
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
                  const ApplicantNameTitleAndPhoneIcon(),
                ],
              ),
            ),
            verticalSpace(8),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
                child: GetChatMessagesBlocBuilder(
                  currentUserId: currentUserId!,
                  scrollController: _scrollController,
                ),
              ),
            ),
            InputFieldWithSendButton(
              onSend: (text) {
                sendMessagesCubit.messageController.text = text;
                sendMessagesCubit.sendMessage(widget.chatRoomId);
              },
            ),
            SendMessageBlocListener(
              chatRoomId: widget.chatRoomId,
              scrollController: _scrollController,
            ),
          ],
        ),
      ),
    );
  }
}
