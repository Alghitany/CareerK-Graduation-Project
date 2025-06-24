import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/chat_card.dart';

class ChatsAllChats extends StatelessWidget {
  const ChatsAllChats({super.key});

  final List<Map<String, String>> chatList = const [
    {
      'name': 'Ahmed Khaled',
      'time': '2 min',
      'message':
      'Hey, did you get a chance to review the job offer I sent earlier?',
    },
    {
      'name': 'Sara Mahmoud',
      'time': '10 min',
      'message': 'Looking forward to the interview tomorrow!',
    },
    {
      'name': 'Mostafa Ali',
      'time': '15 min',
      'message': 'Let me know if you need anything else from my side.',
    },
    {
      'name': 'Nada Saleh',
      'time': '30 min',
      'message': 'I’m currently updating my portfolio.',
    },
    {
      'name': 'Youssef Ayman',
      'time': '1 hr',
      'message': 'Appreciate your quick response!',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(bottom: 16.h),
      itemBuilder: (context, index) {
        final chat = chatList[index];
        return ChatCard(
          name: chat['name']!,
          time: chat['time']!,
          message: chat['message']!,
          imagePath: 'assets/images/company_home_developer_logo.png',
          onTap: () {
            // TODO: Navigate to chat detail screen or open conversation
          },
        );
      },
    );
  }
}
