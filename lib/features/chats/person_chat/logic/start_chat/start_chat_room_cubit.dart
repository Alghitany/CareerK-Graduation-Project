import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/start_chat/start_chat_room_request_body.dart';
import '../../data/models/start_chat/start_chat_room_response.dart';
import '../../data/repo/start_chat_room_repo.dart';
import 'start_chat_room_state.dart';

class StartChatRoomCubit extends Cubit<StartChatRoomState> {
  final StartChatRoomRepo _repo;

  StartChatRoomCubit(this._repo) : super(const StartChatRoomState.initial());

  Future<void> emitStartChatRoomStates(StartChatRoomRequestBody body) async {
    emit(const StartChatRoomState.loading());

    final result = await _repo.startChatRoom(body);

    result.when(
      success: (StartChatRoomResponse response) {
        emit(StartChatRoomState.success(response));
      },
      failure: (error) {
        emit(StartChatRoomState.error(
          error: error.apiErrorModel.message ?? 'Unknown error',
        ));
      },
    );
  }
}
