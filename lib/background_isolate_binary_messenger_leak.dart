
import 'dart:typed_data';

import 'background_isolate_binary_messenger_leak_platform_interface.dart';

class BackgroundIsolateBinaryMessengerLeak {
  Future<void> sendBytes(Uint8List bytes) {
    return BackgroundIsolateBinaryMessengerLeakPlatform.instance.sendBytes(bytes);
  }
}
