import Flutter
import UIKit

public class BackgroundIsolateBinaryMessengerLeakPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "background_isolate_binary_messenger_leak", binaryMessenger: registrar.messenger())
    let instance = BackgroundIsolateBinaryMessengerLeakPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result(nil)
  }
}
