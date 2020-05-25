import 'package:mobile_note_app/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecovarable poinit. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
