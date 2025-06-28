import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../logic/send_messages/send_messages_cubit.dart';

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
  bool _showEmojiPicker = false;

  late final SendMessagesCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = context.read<SendMessagesCubit>();
  }

  void _sendMessage() {
    final messageText = _cubit.messageController.text.trim();

    // Prevent empty message with no file
    if (messageText.isEmpty && _cubit.chatFile == null) return;

    widget.onSend(messageText);
  }

  void _onEmojiSelected(Emoji emoji) {
    final controller = _cubit.messageController;
    controller.text += emoji.emoji;
    controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length));
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
                onTap: () {
                  FocusScope.of(context).unfocus();
                  setState(() {
                    _showEmojiPicker = !_showEmojiPicker;
                  });
                },
                child: SvgPicture.asset(
                  'assets/svgs/emoji.svg',
                  colorFilter: const ColorFilter.mode(
                      ColorsManager.lemonGrass, BlendMode.srcIn),
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
                        spreadRadius: 0,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: _cubit.messageController,
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
                          horizontal: 16.w, vertical: 12.h),
                    ),
                  ),
                ),
              ),
              horizontalSpace(8),
              GestureDetector(
                onTap: () {
                  // TODO: Hook up voice recording logic
                },
                child: SvgPicture.asset(
                  'assets/svgs/mic.svg',
                  colorFilter: const ColorFilter.mode(
                      ColorsManager.ironSideGrey, BlendMode.srcIn),
                ),
              ),
              horizontalSpace(13.25),
              GestureDetector(
                onTap: _sendMessage,
                child: SvgPicture.asset(
                  'assets/svgs/send.svg',
                  colorFilter: const ColorFilter.mode(
                      ColorsManager.duskyBlue, BlendMode.srcIn),
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
              onEmojiSelected: (_, emoji) => _onEmojiSelected(emoji),
              config: const Config(),
            ),
          ),
        ),
      ],
    );
  }
}
