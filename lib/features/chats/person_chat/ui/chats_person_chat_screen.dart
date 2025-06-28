import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../../core/networking/socket_service.dart';
import '../../../developer/ui/community/chat/widgets/exit_icon.dart';
import '../data/models/get_chat_messages/get_chat_messages_response_body.dart';
import '../logic/get_chat_messages/get_chat_messages_cubit.dart';
import '../logic/send_messages/send_messages_cubit.dart';
import 'widgets/applicant_name_title_and_phone_icon.dart';
import 'widgets/chat_messages/get_chat_messages_bloc_builder.dart';
import 'widgets/send_message/input_field_with_send_button.dart';

class ChatsPersonChatScreen extends StatefulWidget {
  final String chatRoomId;
  final bool isExisting;

  const ChatsPersonChatScreen(
      {super.key, required this.chatRoomId, required this.isExisting});

  @override
  State<ChatsPersonChatScreen> createState() => _ChatsPersonChatRoomState();
}

class _ChatsPersonChatRoomState extends State<ChatsPersonChatScreen> {
  String? currentUserId;
  final ScrollController _scrollController = ScrollController();
  late final SendMessagesCubit sendMessagesCubit;
  late final SocketService socketService;

  @override
  void initState() {
    super.initState();

    sendMessagesCubit = context.read<SendMessagesCubit>();
    socketService = getIt<SocketService>();
    final getChatMessagesCubit = context.read<GetChatMessagesCubit>();

    _initializeSocket(getChatMessagesCubit); // 👈 Pass cubit safely
  }

  Future<void> _initializeSocket(
      GetChatMessagesCubit getChatMessagesCubit) async {
    final userId =
        await SharedPrefHelper.getSecuredString(SharedPrefKeys.userId);

    if (userId != null) {
      socketService.connect(userId, widget.chatRoomId);

      // 🟢 Listen for incoming messages
      socketService.onReceiveMessage((data) {
        debugPrint('📥 Raw socket data: $data');

        try {
          final message = ChatMessage.fromJson(Map<String, dynamic>.from(data));
          if (mounted) {
            context.read<GetChatMessagesCubit>().addMessage(message);
          }
        } catch (e, s) {
          debugPrint('❌ Error parsing socket message: $e\n$s');
        }
      });

      await getChatMessagesCubit.getMessages(widget.chatRoomId);

      if (!mounted) return;

      setState(() {
        currentUserId = userId;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    // ❌ Avoid disposing socket here if you want to keep it alive for the app
    // socketService.dispose();
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
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16),
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
                padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0),
                child: GetChatMessagesBlocBuilder(
                  currentUserId: currentUserId!,
                  scrollController: _scrollController,
                ),
              ),
            ),
            InputFieldWithSendButton(
              onSend: (text) {
                sendMessagesCubit.messageController.text = text;
                sendMessagesCubit.sendSocketMessage(
                  chatRoomId: widget.chatRoomId,
                  senderId: currentUserId!,
                  senderType: "company", // or "developer"
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
