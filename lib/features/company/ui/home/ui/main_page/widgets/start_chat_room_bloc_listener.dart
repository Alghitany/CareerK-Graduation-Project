import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/routing/app_argument.dart';
import '../../../../../../chats/person_chat/logic/start_chat/start_chat_room_cubit.dart';
import '../../../../../../chats/person_chat/logic/start_chat/start_chat_room_state.dart';

class StartChatRoomBlocListener extends StatelessWidget {
  const StartChatRoomBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<StartChatRoomCubit, StartChatRoomState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primaryWildBlueYonder,
                ),
              ),
            );
          },
          success: (response) {
            context.pop(); // Dismiss the loading dialog
            context.pushNamed(
              Routes.chatsPersonChatScreen,
              arguments: AppArgument(
                chatRoomId: response.chatRoomId,
                isExisting: response.existing,
              ),
            );
          },
          error: (error) {
            context.pop(); // Dismiss the loading dialog
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: const Icon(Icons.error, color: Colors.red, size: 32),
                content: Text(
                  error,
                  style: AppTextStyles.font15GlaucousPoppinsSemiBold,
                ),
                actions: [
                  TextButton(
                    onPressed: () => context.pop(),
                    child: Text(
                      'Got it',
                      style: AppTextStyles.font15GlaucousPoppinsSemiBold,
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
