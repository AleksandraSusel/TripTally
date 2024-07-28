/// The primary purpose of this function is to avoid `MissingPluginException` errors during tests by providing a mock implementation
/// for the flutter_keyboard_visibility plugin. This is especially useful when the plugin is used indirectly by other packages
/// and cannot be easily mocked within the test itself.
library;

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

/// This function sets up a mock method call handler for the `flutter_keyboard_visibility` channel.
/// It is used to simulate the behavior of the flutter_keyboard_visibility plugin during tests,
/// ensuring that the method calls return a predefined value instead of attempting to invoke platform-specific code.
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

/// The primary purpose of this function is to clean up the mock method call handler after tests have completed.
/// This helps maintain test isolation and ensures that the mock handler does not interfere with other tests.
void tearDownMockKeyboardVisibilityHandler() {
  const MethodChannel channel = MethodChannel('flutter_keyboard_visibility');

  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
}
