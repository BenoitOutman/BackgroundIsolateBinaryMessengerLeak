import 'dart:typed_data';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'background_isolate_binary_messenger_leak_method_channel.dart';

abstract class BackgroundIsolateBinaryMessengerLeakPlatform extends PlatformInterface {
  /// Constructs a BackgroundIsolateBinaryMessengerLeakPlatform.
  BackgroundIsolateBinaryMessengerLeakPlatform() : super(token: _token);

  static final Object _token = Object();

  static BackgroundIsolateBinaryMessengerLeakPlatform _instance = MethodChannelBackgroundIsolateBinaryMessengerLeak();

  /// The default instance of [BackgroundIsolateBinaryMessengerLeakPlatform] to use.
  ///
  /// Defaults to [MethodChannelBackgroundIsolateBinaryMessengerLeak].
  static BackgroundIsolateBinaryMessengerLeakPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BackgroundIsolateBinaryMessengerLeakPlatform] when
  /// they register themselves.
  static set instance(BackgroundIsolateBinaryMessengerLeakPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> sendBytes(Uint8List bytes) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
