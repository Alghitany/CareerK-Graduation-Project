import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/chat_bot_request_body.dart';
import '../data/repo/chat_bot_repo.dart';
import 'chat_bot_state.dart';

class ChatBotCubit extends Cubit<ChatBotState> {
  final ChatBotRepo _chatBotRepo;

  ChatBotCubit(this._chatBotRepo) : super(const ChatBotState.initial());

  TextEditingController promptController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitChatBotStates(ChatBotRequestBody chatBotRequestBody) async {
    emit(const ChatBotState.loading());
    final response = await _chatBotRepo.sendMessage(chatBotRequestBody);
    response.when(
      success: (chatBotResponse) {
        emit(ChatBotState.success(chatBotResponse));
      },
      failure: (error) {
        emit(ChatBotState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
