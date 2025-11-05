// ignore_for_file: strict_raw_type

import 'package:flutter_clean_arch/core/domain/failures/value_failure.dart';

class UnexpectedValueError extends Error {
  UnexpectedValueError(this.valueFailure);
  final ValueFailure valueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
