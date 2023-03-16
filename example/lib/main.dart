import 'dart:isolate';

import 'package:flutter/material.dart';

import 'package:background_isolate_binary_messenger_leak/background_isolate_binary_messenger_leak.dart';
import 'package:flutter/services.dart';

void main() {
  RootIsolateToken rootIsolateToken = RootIsolateToken.instance!;
  Isolate.spawn(_isolateMain, rootIsolateToken);
  runApp(const MyApp());
}

void _isolateMain(RootIsolateToken rootIsolateToken) async {
  // Register the background isolate with the root isolate.
  BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken);
  final binaryMessenger = BackgroundIsolateBinaryMessengerLeak();
  while (true) {
    await binaryMessenger.sendBytes(Uint8List(1024));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Running'),
        ),
      ),
    );
  }
}
