import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/contact_list_all_chats_repo.dart';
import 'contact_list_all_chats_state.dart';

class ContactListAllChatsCubit extends Cubit<ContactListAllChatsState> {
  final ContactListAllChatsRepo _repo;

  ContactListAllChatsCubit(this._repo)
      : super(const ContactListAllChatsState.initial());

  void getAllChats() async {
    emit(const ContactListAllChatsState.loading());
    final response = await _repo.getAllChats();

    response.when(
      success: (chats) {
        emit(ContactListAllChatsState.success(chats));
      },
      failure: (errorHandler) {
        emit(ContactListAllChatsState.error(errorHandler));
      },
    );
  }
}
