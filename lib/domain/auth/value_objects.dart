import 'package:dartz/dartz.dart';
import 'package:mobile_note_app/domain/core/failures.dart';
import 'package:mobile_note_app/domain/core/value_objects.dart';
import 'package:mobile_note_app/domain/core/value_validators.dart';

class EmailAddress extends ValueOblect<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueOblect<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
