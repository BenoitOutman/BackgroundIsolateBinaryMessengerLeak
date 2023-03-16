import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'background_isolate_binary_messenger_leak_platform_interface.dart';

/// An implementation of [BackgroundIsolateBinaryMessengerLeakPlatform] that uses method channels.
class MethodChannelBackgroundIsolateBinaryMessengerLeak
    extends BackgroundIsolateBinaryMessengerLeakPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel =
      const MethodChannel('background_isolate_binary_messenger_leak');

  @override
  Future<void> sendBytes(Uint8List bytes) async {
    await methodChannel.invokeMethod<String>('sendBytes', bytes);
  }
}
