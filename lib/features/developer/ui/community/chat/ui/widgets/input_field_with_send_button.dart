import 'package:flutter/material.dart';

class InputFieldWithSendButton extends StatefulWidget {
  final Function(String) onSend;

  const InputFieldWithSendButton({super.key, required this.onSend});

  @override
  State<InputFieldWithSendButton> createState() =>
      _InputFieldWithSendButtonState();
}

class _InputFieldWithSendButtonState extends State<InputFieldWithSendButton> {
  final TextEditingController _controller = TextEditingController();

  void _handleSend() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    widget.onSend(text);
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Type a message...',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: _handleSend,
          ),
        ],
      ),
    );
  }
}
