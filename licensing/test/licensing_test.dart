import 'package:flutter_test/flutter_test.dart';

import 'package:licensing/licensing.dart';

void main() {
  test('Верификация HASH', () {
    final password = 'password';
    final algorithm = PBKDF2();
    final hash = Password.hash(password, algorithm);
    final verify = Password.verify(password, hash);
    expect(verify, true);
  });
}
