import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theming/colors.dart';
import '../data/models/chat_bot_request_body.dart';
import '../logic/chat_bot_cubit.dart';
import '../logic/chat_bot_state.dart';

class ChatBotScreen extends StatefulWidget {
  final String id;

  const ChatBotScreen({super.key, required this.id});

  @override
  State<ChatBotScreen> createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  late ChatBotCubit cubit;
  final List<_ChatMessage> _messages = [];
  final ScrollController _scrollController = ScrollController();
  bool isBotTyping = false;

  @override
  void initState() {
    super.initState();
    cubit = context.read<ChatBotCubit>();
  }

  void _sendMessage() {
    final message = cubit.promptController.text.trim();
    if (message.isEmpty) return;

    setState(() {
      _messages.add(_ChatMessage(message: message, isUser: true));
      isBotTyping = true;
    });
    _scrollToBottom();

    cubit.promptController.clear();

    cubit.emitChatBotStates(
      ChatBotRequestBody(prompt: message, userId: widget.id),
    );
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.ghostWhite,
      appBar: AppBar(
        backgroundColor: ColorsManager.blueJay,
        title: const Text('ChatBot', style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(16),
              itemCount: _messages.length + (isBotTyping ? 1 : 0),
              itemBuilder: (context, index) {
                if (isBotTyping && index == _messages.length) {
                  // Typing Effect
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 14),
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                        color: ColorsManager.waikawaGrey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const _TypingIndicator(),
                    ),
                  );
                }

                final msg = _messages[index];
                return Align(
                  alignment:
                      msg.isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 14),
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                      color: msg.isUser
                          ? ColorsManager.blueJay
                          : ColorsManager.waikawaGrey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      msg.message,
                      style: TextStyle(
                        color: msg.isUser ? Colors.white : ColorsManager.dune,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          BlocConsumer<ChatBotCubit, ChatBotState>(
            listener: (context, state) {
              state.whenOrNull(
                success: (response) {
                  setState(() {
                    isBotTyping = false;
                    _messages.add(_ChatMessage(
                      message: response.response ?? '',
                      isUser: false,
                    ));
                  });
                  _scrollToBottom();
                },
                error: (error) {
                  setState(() {
                    isBotTyping = false;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(error)),
                  );
                },
              );
            },
            builder: (context, state) {
              return Container(
                padding: const EdgeInsets.all(12.0),
                color: ColorsManager.softPeach,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: cubit.promptController,
                        decoration: InputDecoration(
                          hintText: 'Type your message...',
                          filled: true,
                          fillColor: ColorsManager.magnolia,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onSubmitted: (_) => _sendMessage(),
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: const Icon(Icons.send),
                      color: ColorsManager.blueJay,
                      onPressed: _sendMessage,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ChatMessage {
  final String message;
  final bool isUser;

  _ChatMessage({required this.message, required this.isUser});
}

class _TypingIndicator extends StatefulWidget {
  const _TypingIndicator();

  @override
  State<_TypingIndicator> createState() => _TypingIndicatorState();
}

class _TypingIndicatorState extends State<_TypingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _dotOne, _dotTwo, _dotThree;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat();

    _dotOne = Tween<double>(begin: 0, end: 8).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.0, 0.3)),
    );
    _dotTwo = Tween<double>(begin: 0, end: 8).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.2, 0.5)),
    );
    _dotThree = Tween<double>(begin: 0, end: 8).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.4, 0.7)),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildDot(_dotOne.value),
              _buildDot(_dotTwo.value),
              _buildDot(_dotThree.value),
            ],
          );
        },
      ),
    );
  }

  Widget _buildDot(double offset) {
    return Container(
      width: 8,
      height: 8,
      decoration: const BoxDecoration(
        color: ColorsManager.blueJay,
        shape: BoxShape.circle,
      ),
      margin: EdgeInsets.only(bottom: offset),
    );
  }
}
