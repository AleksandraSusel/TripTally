import 'dart:async';

import 'package:alchemist/alchemist.dart';
import 'package:file/local.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

const testFileSystem = LocalFileSystem();

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  return AlchemistConfig.runWithConfig(
    run: () async {
      TestWidgetsFlutterBinding.ensureInitialized();
      await _loadAppFonts();
      await testMain();
    },
    config: const AlchemistConfig(ciGoldensConfig: CiGoldensConfig(enabled: false)),
  );
}

Future<void> _loadAppFonts() async {
  final fontLoader = FontLoader('NunitoSans')
    ..addFont(
      _loadFont('lib/presentation/assets/fonts/NunitoSans_7pt-Bold.ttf'),
    )
    ..addFont(
      _loadFont('lib/presentation/assets/fonts/NunitoSans_7pt-ExtraBold.ttf'),
    )
    ..addFont(
      _loadFont('lib/presentation/assets/fonts/NunitoSans_7pt-Regular.ttf'),
    );
  await fontLoader.load();
  await loadFonts();
}

Future<ByteData> _loadFont(String path) async {
  final bytes = await testFileSystem.file(path).readAsBytes();
  return ByteData.view(bytes.buffer);
}
