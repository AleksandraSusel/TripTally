import 'package:freezed_annotation/freezed_annotation.dart';

part 'success.freezed.dart';

@freezed
abstract class Success with _$Success {
  const factory Success() = _Success;
}
