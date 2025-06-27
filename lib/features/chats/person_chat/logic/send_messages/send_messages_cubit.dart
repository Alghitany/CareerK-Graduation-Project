import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/send_messages/send_messages_request_body.dart';
import '../../data/repo/send_messages_repo.dart';
import 'send_messages_state.dart';

class SendMessagesCubit extends Cubit<SendMessagesState> {
  final SendMessagesRepo _sendMessagesRepo;

  SendMessagesCubit(this._sendMessagesRepo)
      : super(const SendMessagesState.initial());

  final messageController = TextEditingController();

  String? _chatFilePath;

  File? get chatFile => _chatFilePath != null ? File(_chatFilePath!) : null;

  void setChatFilePath(String path) {
    _chatFilePath = path;
  }

  Future<void> sendMessage(String chatRoomId) async {
    final messageText = messageController.text.trim();
    if (messageText.isEmpty && chatFile == null) {
      return;
    }

    emit(const SendMessagesState.sendMessageLoading());

    final requestBody = SendMessageRequestBody(
      message: messageText,
      chatFile: chatFile,
    );

    final response = await _sendMessagesRepo.sendMessage(
      chatRoomId: chatRoomId,
      body: requestBody,
    );

    response.when(
      success: (res) => emit(SendMessagesState.sendMessageSuccess(res)),
      failure: (error) => emit(
        SendMessagesState.sendMessageError(
          error: error.apiErrorModel.message ?? 'Message sending failed',
        ),
      ),
    );
  }
}
