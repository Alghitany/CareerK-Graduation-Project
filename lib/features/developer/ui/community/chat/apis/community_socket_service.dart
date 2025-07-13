import 'package:carrerk/core/networking/api_constants.dart';
import 'package:flutter/foundation.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class CommunitySocketService {
  IO.Socket? _socket;
  bool _isConnected = false;

  String socketBaseUrl = ApiConstants.apiBaseUrl.endsWith('/')
      ? ApiConstants.apiBaseUrl.substring(0, ApiConstants.apiBaseUrl.length - 1)
      : ApiConstants.apiBaseUrl;

  IO.Socket get socket {
    if (_socket == null) {
      throw Exception('Socket is not initialized. Call connect() first.');
    }
    return _socket!;
  }

  void connect(String userId) {
    if (_socket != null && _isConnected) {
      _log('⚠️ Socket already connected.');
      return;
    }

    _socket = IO.io(
      socketBaseUrl,
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .enableReconnection()
          .setQuery({'userId': userId})
          .build(),
    );

    _socket!.connect();

    _socket!.onConnect((_) {
      _isConnected = true;
      _log('✅ Connected to community socket');
    });

    _socket!.onDisconnect((_) {
      _isConnected = false;
      _log('❌ Disconnected from socket');
    });

    _socket!.onConnectError((error) {
      _log('⚠️ Connection error: $error');
    });

    _socket!.onError((error) {
      _log('❌ Socket error: $error');
    });

    _socket!.onAny((event, data) {
      _log('📡 Event: $event → $data');
    });
  }

  void joinRoom(String communityId) {
    if (!_isConnected) {
      _log('🚫 Cannot join community. Socket not connected.');
      return;
    }
    _socket!.emit('community:join', {'communityId': communityId});
    _log('👥 Joined community room: $communityId');
  }

  void leaveRoom(String communityId) {
    if (!_isConnected) {
      _log('🚫 Cannot leave community. Socket not connected.');
      return;
    }
    _socket!.emit('community:leave', {'communityId': communityId});
    _log('🚪 Left community room: $communityId');
  }

  void sendMessage({
    required String communityId,
    required String message,
    required String senderId,
    required String senderType,
    required String messageType,
    String? mediaUrl,
    String? mediaType,
  }) {
    if (!_isConnected) {
      _log('🚫 Cannot send community message. Socket not connected.');
      return;
    }

    final payload = {
      'communityId': communityId,
      'message': message,
      'senderId': senderId,
      'senderType': senderType,
      'messageType': messageType,
      'mediaUrl': mediaUrl,
      'mediaType': mediaType,
    };

    _socket!.emit('community:send-message', payload);
    _log('📤 Sent community message: $payload');
  }

  void onReceiveMessage(Function(dynamic) callback) {
    if (_socket == null) return;

    _socket!
      ..off('community:receive-message')
      ..on('community:receive-message', (data) {
        _log('📥 [community:receive-message] $data');
        callback(data);
      });
  }

  void sendTypingStatus(String communityId, String senderId) {
    if (!_isConnected) {
      _log('🚫 Cannot send typing status. Socket not connected.');
      return;
    }

    final payload = {
      'communityId': communityId,
      'senderId': senderId,
    };

    _socket!.emit('community:typing', payload);
    _log('💬 Typing in community: $payload');
  }

  void dispose() {
    if (_socket != null) {
      _socket!.disconnect();
      _socket!.dispose();
      _socket = null;
      _isConnected = false;
      _log('🛑 Community socket fully disposed');
    }
  }

  void _log(String msg) {
    if (kDebugMode) debugPrint(msg);
  }
}
