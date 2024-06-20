import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:trip_tally/presentation/utils/enums/errors.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure({required Errors error}) = _Failure;
}
