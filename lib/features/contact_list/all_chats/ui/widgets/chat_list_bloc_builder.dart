// import 'package:carrerk/features/contact_list/all_chats/data/model/conact_list_all_chats_response_body.dart';
// import 'package:carrerk/features/contact_list/all_chats/logic/contact_list_all_chats_cubit.dart';
// import 'package:carrerk/features/contact_list/all_chats/logic/contact_list_all_chats_state.dart';
// import 'package:carrerk/features/contact_list/all_chats/ui/widgets/chats_list_chimmer.dart';
// import 'package:carrerk/features/contact_list/all_chats/ui/widgets/chats_list_view.dart';
// import 'package:carrerk/features/contact_list/all_chats/ui/widgets/no_chats_place_holder.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class ChatsListBlocBuilder extends StatelessWidget {
//   const ChatsListBlocBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ContactListAllChatsCubit, ContactListAllChatsState>(
//       buildWhen: (previous, current) =>
//           current is ContactListAllChatsLoading ||
//           current is ContactListAllChatsSuccess ||
//           current is ContactListAllChatsError,
//       builder: (context, state) {
//         return state.maybeWhen(
//           loading: () => setupLoading(),
//           success: (chatsResponse) => setupSuccess(chatsResponse),
//           error: (errorHandler) => setupError(),
//           orElse: () => const SizedBox.shrink(),
//         );
//       },
//     );
//   }

//   Widget setupLoading() {
//     return const ChatsListShimmer();
//   }

//   Widget setupSuccess(ContactListAllChatsResponseBody response) {
//     if (response.chats.isEmpty) {
//       return const NoChatsPlaceholder();
//     }

//     return ChatsListView(
//       chats: response.chats,
//       onTap: (chat) {
//         // TODO: Navigate to detailed chat screen
//       },
//     );
//   }

//   Widget setupError() {
//     return const Center(child: Text("Something went wrong"));
//   }
// }

import 'package:carrerk/features/contact_list/all_chats/data/model/conact_list_all_chats_response_body.dart';
import 'package:carrerk/features/contact_list/all_chats/logic/contact_list_all_chats_cubit.dart';
import 'package:carrerk/features/contact_list/all_chats/logic/contact_list_all_chats_state.dart';
import 'package:carrerk/features/contact_list/all_chats/ui/widgets/chats_list_chimmer.dart';
import 'package:carrerk/features/contact_list/all_chats/ui/widgets/chats_list_view.dart';
import 'package:carrerk/features/contact_list/all_chats/ui/widgets/no_chats_place_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatsListBlocBuilder extends StatelessWidget {
  const ChatsListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactListAllChatsCubit, ContactListAllChatsState>(
      buildWhen: (previous, current) =>
          current is ContactListAllChatsLoading ||
          current is ContactListAllChatsSuccess ||
          current is ContactListAllChatsError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (chatsResponse) => setupSuccess(chatsResponse),
          error: (errorHandler) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const ChatsListShimmer();
  }

  Widget setupSuccess(ContactListAllChatsResponseBody response) {
    if (response.chats.isEmpty) {
      return const NoChatsPlaceholder();
    }

    return ChatsListView(
      chats: response.chats,
      onTap: (chat) {
        // TODO: Navigate to detailed chat screen
      },
    );
  }

  Widget setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
