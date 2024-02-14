import 'package:flutter_test/flutter_test.dart';

import 'package:whatsup/whatsup.dart';

void main() {
  test('adds one to input values', () {
    expect(Whatsup.now(hour: 5), "Good morning");
    expect(Whatsup.now(hour: 12), "Good afternoon");
    expect(Whatsup.now(hour: 18), "Good evening");
    expect(Whatsup.now(hour: 22), "Good night");
    expect(Whatsup.hw(), "Hello World!");
  });
}
