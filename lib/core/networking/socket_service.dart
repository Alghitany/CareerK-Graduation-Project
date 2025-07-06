import 'package:carrerk/core/networking/api_constants.dart';
import 'package:flutter/foundation.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
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

  void connect(String userId, String chatRoomId) {
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
      _log('✅ Connected to socket');
      _socket!.emit('join_room', chatRoomId);
      _log('📢 Joined room: $chatRoomId');
    });

    _socket!.onDisconnect((_) {
      _isConnected = false;
      _log('❌ Disconnected');
    });

    _socket!.onConnectError((error) {
      _log('⚠️ Connection error: $error');
    });

    _socket!.onError((error) {
      _log('❌ Socket error: $error');
    });

    // Debug: log all events
    _socket!.onAny((event, data) {
      _log('📡 Event: $event → $data');
    });
  }

  void sendMessage({
    required String chatRoomId,
    required String message,
    required String senderId,
    required String senderType,
    required String messageType,
    String? mediaUrl,
    String? mediaType,
  }) {
    if (!_isConnected) {
      _log('🚫 Cannot send message. Socket not connected.');
      return;
    }

    final payload = {
      'chatRoomId': chatRoomId,
      'message': message,
      'senderId': senderId,
      'senderType': senderType,
      'messageType': messageType,
      'mediaUrl': mediaUrl,
      'mediaType': mediaType,
    };

    _socket!.emit('private:send_message', payload);
    _log('📤 Sent: $payload');
  }

  /// Use this once per screen to handle incoming messages
  void onReceiveMessage(Function(dynamic) callback) {
    if (_socket == null) return;

    // Clear old listeners
    _socket!
      ..off('private:receive-message')
      ..off('new_message')

      // Add both listeners
      ..on('private:receive-message', (data) {
        _log('📥 [private:receive-message] $data');
        callback(data);
      })
      ..on('new_message', (data) {
        _log('📥 [new_message] $data');
        callback(data);
      });
  }

  void dispose() {
    if (_socket != null) {
      _socket!.disconnect();
      _socket!.dispose();
      _socket = null;
      _isConnected = false;
      _log('🛑 Socket fully disposed');
    }
  }

  void _log(String msg) {
    if (kDebugMode) debugPrint(msg);
  }
}
