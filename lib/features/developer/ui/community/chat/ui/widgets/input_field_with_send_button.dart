import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputFieldWithSendButton extends StatefulWidget {
  final void Function(String) onSend;

  const InputFieldWithSendButton({
    super.key,
    required this.onSend,
  });

  @override
  State<InputFieldWithSendButton> createState() =>
      _InputFieldWithSendButtonState();
}

class _InputFieldWithSendButtonState extends State<InputFieldWithSendButton> {
  final TextEditingController _messageController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _showEmojiPicker = false;

  void _sendMessage() {
    final messageText = _messageController.text.trim();
    if (messageText.isNotEmpty) {
      widget.onSend(messageText);
      _messageController.clear();
      setState(() {}); // Update UI
    }
  }

  void _onEmojiSelected(Emoji emoji) {
    _messageController
      ..text += emoji.emoji
      ..selection = TextSelection.fromPosition(
        TextPosition(offset: _messageController.text.length),
      );
    setState(() {}); // Refresh UI if needed
  }

  void _toggleEmojiPicker() {
    if (_showEmojiPicker) {
      FocusScope.of(context).requestFocus(_focusNode);
    } else {
      FocusScope.of(context).unfocus();
    }

    setState(() {
      _showEmojiPicker = !_showEmojiPicker;
    });
  }

  @override
  void dispose() {
    _messageController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(16.w, 0.h, 16.w, 0.h),
          width: double.infinity,
          height: 60.h,
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: _toggleEmojiPicker,
                child: SvgPicture.asset(
                  'assets/svgs/emoji.svg',
                  colorFilter: const ColorFilter.mode(
                    ColorsManager.lemonGrass,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              horizontalSpace(15),
              Expanded(
                child: Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 12,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: _messageController,
                    focusNode: _focusNode,
                    onTap: () {
                      if (_showEmojiPicker) {
                        setState(() {
                          _showEmojiPicker = false;
                        });
                      }
                    },
                    onSubmitted: (_) => _sendMessage(),
                    decoration: InputDecoration(
                      hintText: "Type your message",
                      hintStyle: AppTextStyles.font16PastelGreyPoppinsMedium,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 12.h,
                      ),
                    ),
                  ),
                ),
              ),
              horizontalSpace(8),
              GestureDetector(
                onTap: () {
                  // TODO: Record audio
                },
                child: SvgPicture.asset(
                  'assets/svgs/mic.svg',
                  colorFilter: const ColorFilter.mode(
                    ColorsManager.ironSideGrey,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              horizontalSpace(13.25),
              GestureDetector(
                onTap: _sendMessage,
                child: SvgPicture.asset(
                  'assets/svgs/send.svg',
                  colorFilter: const ColorFilter.mode(
                    ColorsManager.duskyBlue,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        ),
        Offstage(
          offstage: !_showEmojiPicker,
          child: SizedBox(
            height: 250.h,
            child: EmojiPicker(
              onEmojiSelected: (category, emoji) {
                _onEmojiSelected(emoji);
              },
              config: const Config(),
            ),
          ),
        ),
      ],
    );
  }
}
