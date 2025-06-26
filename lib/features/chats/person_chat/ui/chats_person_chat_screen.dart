import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../developer/ui/community/chat/widgets/exit_icon.dart';
import 'widgets/applicant_name_title_and_phone_icon.dart';
import 'widgets/chat_messages/get_chat_messages_bloc_builder.dart';
import 'widgets/input_field_with_send_button.dart';

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

  @override
  void initState() {
    super.initState();
    loadCurrentUserId();
    debugPrint(
        "ChatRoom ID: ${widget.chatRoomId}, Existing: ${widget.isExisting}");
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
                // TODO: Implement sending logic here (e.g. via a cubit if you want).
                debugPrint("Sending message: $text");
              },
            ),
          ],
        ),
      ),
    );
  }
}
