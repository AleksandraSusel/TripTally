import 'dart:async';

mixin DebouncerMixin {
  DateTime? _lastExecutionTime;

  Future<T> debounce<T>({
    required Future<T> Function() callback,
    Duration delay = const Duration(milliseconds: 500),
  }) async {
    final now = DateTime.now();

    if (_lastExecutionTime != null) {
      final elapsed = now.difference(_lastExecutionTime!);

      if (elapsed < delay) {
        final remainingTime = delay - elapsed;

        return Future.delayed(remainingTime, () async {
          _lastExecutionTime = DateTime.now();
          return callback();
        });
      }
    }

    _lastExecutionTime = now;
    return callback();
  }
}
