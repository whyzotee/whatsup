import 'package:test/test.dart';
import 'package:whatsup/whatsup.dart';

void main() {
  test('call now function with greeting', () {
    expect(Whatsup.now(hour: 5), "Good morning");
    expect(Whatsup.now(hour: 12), "Good afternoon");
    expect(Whatsup.now(hour: 18), "Good evening");
    expect(Whatsup.now(hour: 22), "Good night");
  });

  test('call now function without prefix', () {
    expect(Whatsup.now(hour: 5, prefix: false), "Morning");
    expect(Whatsup.now(hour: 12, prefix: false), "Afternoon");
    expect(Whatsup.now(hour: 18, prefix: false), "Evening");
    expect(Whatsup.now(hour: 22, prefix: false), "Night");
  });

  test('call nameOfDay function', () {
    expect(Whatsup.nameOfDay(day: 1), "Monday");
    expect(Whatsup.nameOfDay(day: 7), "Sunday");
  });

  test('call nameOfDay function', () {
    expect(Whatsup.nameOfMonth(month: 1), "January");
    expect(Whatsup.nameOfMonth(month: 12), "December");
  });
}
