import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/styles.dart';
import '../../../logic/get_chat_messages/get_chat_messages_cubit.dart';
import '../../../logic/send_messages/send_messages_cubit.dart';
import '../../../logic/send_messages/send_messages_state.dart';

class SendMessageBlocListener extends StatelessWidget {
  final String chatRoomId;
  final ScrollController scrollController;

  const SendMessageBlocListener({
    super.key,
    required this.chatRoomId,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<SendMessagesCubit, SendMessagesState>(
      listenWhen: (previous, current) =>
          current is SendMessageLoading ||
          current is SendMessageSuccess ||
          current is SendMessageError,
      listener: (context, state) {
        state.whenOrNull(
          sendMessageLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primaryWildBlueYonder,
                ),
              ),
            );
          },
          sendMessageSuccess: (_) {
            context.pop(); // dismiss loading

            // Refresh messages
            context.read<GetChatMessagesCubit>().getMessages(chatRoomId);

            // Scroll to bottom
            Future.delayed(const Duration(milliseconds: 300), () {
              scrollController.animateTo(
                scrollController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
              );
            });
          },
          sendMessageError: (error) {
            _showErrorDialog(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void _showErrorDialog(BuildContext context, String error) {
    context.pop(); // dismiss loading
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: AppTextStyles.font15GlaucousPoppinsSemiBold,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop(); // dismiss error dialog
            },
            child: Text(
              'Got it',
              style: AppTextStyles.font15GlaucousPoppinsSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
