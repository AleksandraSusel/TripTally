import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void setupMockKeyboardVisibilityHandler() {
  const MethodChannel channel = MethodChannel('flutter_keyboard_visibility');
  const dummyInteger = 1;

  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
    channel,
    (MethodCall methodCall) async {
      return dummyInteger;
    },
  );
}

void tearDownMockKeyboardVisibilityHandler() {
  const MethodChannel channel = MethodChannel('flutter_keyboard_visibility');

  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
}
