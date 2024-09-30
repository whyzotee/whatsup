import 'package:flutter_test/flutter_test.dart';

import 'package:whatsup/whatsup.dart';

void main() {
  final ws = Whatsup();
  test('adds one to input values', () {
    expect(ws.now(hour: 5), "Good morning");
    expect(ws.now(hour: 12), "Good afternoon");
    expect(ws.now(hour: 18), "Good evening");
    expect(ws.now(hour: 22), "Good night");
    expect(ws.hw, "Hello World!");
  });
}
